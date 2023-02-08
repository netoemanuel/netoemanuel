------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ELIMINAR OS PROCESSOS DE UM BANCO DE DADOS:
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- " SPIDs SERIAL KILLER - VERS�O 2.0 - Novembro de 2022"
-- La�rcio Coelho - �ltima atualiza��o: 29/11/2022 21:35hs
--
-- OBJETIVO: eliminar as sess�es de usu�rios de TS (geralmente) ou outros de utilizando uma determinada aplica��o, for�ando novo login para pegar vers�o nova;
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
DECLARE @banco			VARCHAR(50) = 'RODOMAIOR', 	--> nome do banco a filtrar
		@login			VARCHAR(30) = 'Manutencao', --> login a filtrar; geralmente vai ser o "Manutencao"
		@hostname_nao1	VARCHAR(30) = 'SRVAPP%',	--> Ex: n�o matar do servidor onde roda o GSe e IIS (sites)
		@hostname_nao2	VARCHAR(30) = 'GR%',		--> Ex: n�o matar m�quinas do "GR" (Gerenciamento de Risco), que no caso da Rodomaior geralmente est�o no "Embarques"
		@programa		VARCHAR(40) = 'Embarques%',	--> nome do programa; pode ser alterado conforme a necessidade
		
		--Altamente recomend�vel rodar com 'N' ANTES!!! Ningu�m morre! D� tempo de rever os crit�rios!
		@elimina		CHAR(1)		= 'N'			--> S = faz o KILL  /  N = faz um SELECT na linha com o KILL (simula, gera script)

--> Consulta dos processos para an�lise ANTES de sair matando todo mundo:
select *
from master.dbo.sysprocesses A
join master.dbo.sysdatabases B on A.DbId= B.DbId
where B.Name = @banco
	and loginame = @login
	and hostname not like @hostname_nao1
	and hostname not like @hostname_nao2
	and A.program_name like @programa

--> Vari�vel para pegar o SPID da sess�o:
Declare @spid as varchar(5)

--> Consulta os processos com os mesmos crit�rios acima, armazenando cada SPID na tabela tempor�ria "#Processos"
select Cast(spid as varchar(5)) spid
into #Processos
from master.dbo.sysprocesses A
join master.dbo.sysdatabases B on A.DbId= B.DbId
where B.Name = @banco
	and loginame = @login
	and hostname not like @hostname_nao1
	and hostname not like @hostname_nao2
	and A.program_name like @programa

--> Loop para matar cada sess�o armazenada na tabela "#Processos":
while(select count(*) from #Processos) >0
begin
	--Pega o primeiro spid da tabela:
	set @spid = (select top 1 spid from #Processos)

	--Testa se � para eliminar ou fazer s� um SELECT:
	if @elimina = 'S' exec ('Kill '+ @spid + ';')
	else select ('Kill '+ @spid + ';')

	--Apaga o registro desse SPID da tabela tempor�ria:
	delete from #Processos where spid = @spid
end

--> Elimina a tabela tempor�ria utilizada:
drop table #Processos
