------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ELIMINAR OS PROCESSOS DE UM BANCO DE DADOS:
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- "SPIDs SERIAL KILLER" - VERS�O 3.0
-- La�rcio Coelho - �ltima atualiza��o: 3 de janeiro de 2023
--
-- OBJETIVO: eliminar as sess�es de usu�rios de TS (geralmente) ou outros utilizando uma determinada aplica��o, for�ando novo login para pegar vers�o nova;
--			 evitando solicitar isso � TI dos clientes, que geralmente for�am o rein�cio de cada TS, processo mais demorado e sem o nosso controle.
--
-- !!! A T E N � � O !!!
-- Isto ir� ocasionar em ERRO nas sess�es eliminadas assim que qualquer processo no programa tente conectar/utilizar dados do referido banco!
-- O EXE em uso ser� imediatamente fechado ap�s a mensagem de ERRO (crash) !
-- Poder�o ocorrer queixas dos usu�rios!!!!
-- Portanto, isso s� deve ser utilizado quando for realmente IMPRESCIND�VEL for�ar os usu�rios a sair da aplica��o, acessando depois uma vers�o rec�m atualizada.
-- Geralmente o seu uso se aplicar� ao GS-2000 EMBARQUES e com o login "Manutencao". 
-- M�XIMO CUIDADO, portanto, com os par�metros
--
-- PS: Este script poderia ser uma "procedure", por�m prefiro deixar assim para maior clareza, evitando que se eliminem processos de forma indevida.
--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--> Par�metros gerais (crit�rios):
DECLARE @banco			VARCHAR(50) = '',		--> nome do banco a filtrar
		@login			VARCHAR(30) = '',		--> login a filtrar; geralmente vai ser o "Manutencao"
		@login_nao		VARCHAR(30) = '',		--> login a N�O pegar; quando necess�rio matar alguns caras, EXCETO algu�m especial.
		@hostname_nao1	VARCHAR(30) = '',		--> Ex: n�o matar do servidor onde roda o GSe e IIS (sites) -> N�O ESQUECER DO % AO FINAL OU IN�CIO OU AMBOS, SEN�O N�O FUNCIONA!!!
		@hostname_nao2	VARCHAR(30) = '',		--> Ex: n�o matar m�quinas do "GR" (Gerenciamento de Risco) -> N�O ESQUECER DO % AO FINAL OU IN�CIO OU AMBOS, SEN�O N�O FUNCIONA!!!
		@programa		VARCHAR(40) = '',		--> nome do programa; pode ser alterado conforme a necessidade -> N�O ESQUECER DO % AO FINAL OU IN�CIO OU AMBOS, SEN�O N�O FUNCIONA!!!
		@min_ult_proc   INT			= 0,		--> tempo em minutos desde a �ltima execu��o de algo (last_batch); pode ser usado para ver tempo de inatividade e poder eliminar a partir de certo tempo.
		@elimina		CHAR(1)		= 'N'		--> S = faz o KILL  /  N = faz um SELECT na linha com o KILL (simula, gera script)


--> PADR�O MAIS COMUM PARA LONTANO:
SET @banco			= 'LONTANO'
SET @login			= 'Manutencao'
SET @login_nao		= ''	--> nenhuma exce��o de login; e isso s� vai funcionar se setar o @login = ''
SET @hostname_nao1	= 'SITEGS%'
SET @hostname_nao2	= '%GR%'
SET @programa		= 'Embarque%'

--Matar TODOS usando o banco LONTANO (fins espec�ficos), exceto os processos do SITEGS e exceto o usu�rio "Laercio" (c� � loco!)
--SET @banco			= 'LONTANO'
--SET @login			= ''
--SET @login_nao		= 'Laercio'
--SET @hostname_nao1	= 'SITEGS%'
--SET @hostname_nao2	= ''
--SET @programa		= ''



--> PADR�O MAIS COMUM PARA RODOMAIOR:
--SET @banco			= 'RODOMAIOR'
--SET @login			= 'Manutencao'
--SET @hostname_nao1	= 'SRVAPP%'
--SET @hostname_nao2	= '%GR%'
--SET @programa		= 'Embarque%'


--Altamente recomend�vel rodar com 'N' ANTES!!! Ningu�m morre! D� tempo de rever os crit�rios!
--SET @elimina = 'N'
SET @elimina = 'S'	

--Setando tempo m�nimo de atividade com valor ZERADO (ou negativo), que � o padr�o, vai pegar TODOS os processos; manipular essa vari�vel caso queira matar apenas processos inativos a X minutos
--SET @min_ult_proc = 1

--> Consulta dos processos para an�lise ANTES de sair matando todo mundo:
select A.spid, t.text AS SQL1, A.hostname, A.program_name, A.cmd, A.loginame, A.login_time, A.last_batch, DATEDIFF(MINUTE,A.last_batch,GETDATE()) Minutos_Inatividade
from master.dbo.sysprocesses A
join master.dbo.sysdatabases B on A.DbId= B.DbId
cross apply sys.dm_exec_sql_text(A.sql_handle) AS t
where B.Name = @banco
	and loginame = case when @login = '' then loginame else @login end
	and loginame <> @login_nao
	and hostname not like @hostname_nao1
	and hostname not like @hostname_nao2
	and A.program_name like case when @programa = '' then A.program_name else @programa end
	and DATEDIFF(MINUTE,A.last_batch,GETDATE()) >= @min_ult_proc

--> Vari�vel para pegar o SPID da sess�o:
Declare @spid as varchar(5)

--> Consulta os processos com os mesmos crit�rios acima, armazenando cada SPID na tabela tempor�ria "#Processos"
select Cast(spid as varchar(5)) spid
into #Processos
from master.dbo.sysprocesses A
join master.dbo.sysdatabases B on A.DbId= B.DbId
where B.Name = @banco
	and loginame = case when @login = '' then loginame else @login end
	and loginame <> @login_nao
	and hostname not like @hostname_nao1
	and hostname not like @hostname_nao2
	and A.program_name like case when @programa = '' then A.program_name else @programa end
	and DATEDIFF(MINUTE,A.last_batch,GETDATE()) >= @min_ult_proc

--> Loop para matar cada sess�o armazenada na tabela "#Processos":
while(select count(*) from #Processos) > 0
begin
	--Pega o primeiro spid da tabela:
	set @spid = (select top 1 spid from #Processos)

	--Testa se � para eliminar ou fazer s� um SELECT:
	if @elimina = 'S' begin
		select 'Matando processo ' + @spid AS 'KILLER MASSAGE'
		exec ('Kill '+ @spid + ';')
	end
	else select ('Kill '+ @spid + ';') AS 'KILLER SCRIPT'

	--Apaga o registro desse SPID da tabela tempor�ria:
	delete from #Processos where spid = @spid
end

--> Elimina a tabela tempor�ria utilizada:
drop table #Processos
