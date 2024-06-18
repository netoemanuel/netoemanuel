------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ELIMINAR OS PROCESSOS DE UM BANCO DE DADOS:
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- "SPIDs SERIAL KILLER" - VERSÃO 3.0
-- Laércio Coelho - Última atualização: 3 de janeiro de 2023
--
-- OBJETIVO: eliminar as sessões de usuários de TS (geralmente) ou outros utilizando uma determinada aplicação, forçando novo login para pegar versão nova;
--			 evitando solicitar isso à TI dos clientes, que geralmente forçam o reinício de cada TS, processo mais demorado e sem o nosso controle.
--
-- !!! A T E N Ç Ã O !!!
-- Isto irá ocasionar em ERRO nas sessões eliminadas assim que qualquer processo no programa tente conectar/utilizar dados do referido banco!
-- O EXE em uso será imediatamente fechado após a mensagem de ERRO (crash) !
-- Poderão ocorrer queixas dos usuários!!!!
-- Portanto, isso só deve ser utilizado quando for realmente IMPRESCINDÍVEL forçar os usuários a sair da aplicação, acessando depois uma versão recém atualizada.
-- Geralmente o seu uso se aplicará ao GS-2000 EMBARQUES e com o login "Manutencao". 
-- MÁXIMO CUIDADO, portanto, com os parâmetros
--
-- PS: Este script poderia ser uma "procedure", porém prefiro deixar assim para maior clareza, evitando que se eliminem processos de forma indevida.
--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--> Parâmetros gerais (critérios):
DECLARE @banco			VARCHAR(50) = '',		--> nome do banco a filtrar
		@login			VARCHAR(30) = '',		--> login a filtrar; geralmente vai ser o "Manutencao"
		@login_nao		VARCHAR(30) = '',		--> login a NÃO pegar; quando necessário matar alguns caras, EXCETO alguém especial.
		@hostname_nao1	VARCHAR(30) = '',		--> Ex: não matar do servidor onde roda o GSe e IIS (sites) -> NÃO ESQUECER DO % AO FINAL OU INÍCIO OU AMBOS, SENÃO NÃO FUNCIONA!!!
		@hostname_nao2	VARCHAR(30) = '',		--> Ex: não matar máquinas do "GR" (Gerenciamento de Risco) -> NÃO ESQUECER DO % AO FINAL OU INÍCIO OU AMBOS, SENÃO NÃO FUNCIONA!!!
		@programa		VARCHAR(40) = '',		--> nome do programa; pode ser alterado conforme a necessidade -> NÃO ESQUECER DO % AO FINAL OU INÍCIO OU AMBOS, SENÃO NÃO FUNCIONA!!!
		@min_ult_proc   INT			= 0,		--> tempo em minutos desde a última execução de algo (last_batch); pode ser usado para ver tempo de inatividade e poder eliminar a partir de certo tempo.
		@elimina		CHAR(1)		= 'N'		--> S = faz o KILL  /  N = faz um SELECT na linha com o KILL (simula, gera script)


--> PADRÃO MAIS COMUM PARA LONTANO:
SET @banco			= 'LONTANO'
SET @login			= 'Manutencao'
SET @login_nao		= ''	--> nenhuma exceção de login; e isso só vai funcionar se setar o @login = ''
SET @hostname_nao1	= 'SITEGS%'
SET @hostname_nao2	= '%GR%'
SET @programa		= 'Embarque%'

--Matar TODOS usando o banco LONTANO (fins específicos), exceto os processos do SITEGS e exceto o usuário "Laercio" (cê é loco!)
--SET @banco			= 'LONTANO'
--SET @login			= ''
--SET @login_nao		= 'Laercio'
--SET @hostname_nao1	= 'SITEGS%'
--SET @hostname_nao2	= ''
--SET @programa		= ''



--> PADRÃO MAIS COMUM PARA RODOMAIOR:
--SET @banco			= 'RODOMAIOR'
--SET @login			= 'Manutencao'
--SET @hostname_nao1	= 'SRVAPP%'
--SET @hostname_nao2	= '%GR%'
--SET @programa		= 'Embarque%'


--Altamente recomendável rodar com 'N' ANTES!!! Ninguém morre! Dá tempo de rever os critérios!
--SET @elimina = 'N'
SET @elimina = 'S'	

--Setando tempo mínimo de atividade com valor ZERADO (ou negativo), que é o padrão, vai pegar TODOS os processos; manipular essa variável caso queira matar apenas processos inativos a X minutos
--SET @min_ult_proc = 1

--> Consulta dos processos para análise ANTES de sair matando todo mundo:
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

--> Variável para pegar o SPID da sessão:
Declare @spid as varchar(5)

--> Consulta os processos com os mesmos critérios acima, armazenando cada SPID na tabela temporária "#Processos"
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

--> Loop para matar cada sessão armazenada na tabela "#Processos":
while(select count(*) from #Processos) > 0
begin
	--Pega o primeiro spid da tabela:
	set @spid = (select top 1 spid from #Processos)

	--Testa se é para eliminar ou fazer só um SELECT:
	if @elimina = 'S' begin
		select 'Matando processo ' + @spid AS 'KILLER MASSAGE'
		exec ('Kill '+ @spid + ';')
	end
	else select ('Kill '+ @spid + ';') AS 'KILLER SCRIPT'

	--Apaga o registro desse SPID da tabela temporária:
	delete from #Processos where spid = @spid
end

--> Elimina a tabela temporária utilizada:
drop table #Processos
