------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ELIMINAR OS PROCESSOS DE UM BANCO DE DADOS:
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- " SPIDs SERIAL KILLER - VERSÃO 2.0 - Novembro de 2022"
-- Laércio Coelho - Última atualização: 29/11/2022 21:35hs
--
-- OBJETIVO: eliminar as sessões de usuários de TS (geralmente) ou outros de utilizando uma determinada aplicação, forçando novo login para pegar versão nova;
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
DECLARE @banco			VARCHAR(50) = 'RODOMAIOR', 	--> nome do banco a filtrar
		@login			VARCHAR(30) = 'Manutencao', --> login a filtrar; geralmente vai ser o "Manutencao"
		@hostname_nao1	VARCHAR(30) = 'SRVAPP%',	--> Ex: não matar do servidor onde roda o GSe e IIS (sites)
		@hostname_nao2	VARCHAR(30) = 'GR%',		--> Ex: não matar máquinas do "GR" (Gerenciamento de Risco), que no caso da Rodomaior geralmente estão no "Embarques"
		@programa		VARCHAR(40) = 'Embarques%',	--> nome do programa; pode ser alterado conforme a necessidade
		
		--Altamente recomendável rodar com 'N' ANTES!!! Ninguém morre! Dá tempo de rever os critérios!
		@elimina		CHAR(1)		= 'N'			--> S = faz o KILL  /  N = faz um SELECT na linha com o KILL (simula, gera script)

--> Consulta dos processos para análise ANTES de sair matando todo mundo:
select *
from master.dbo.sysprocesses A
join master.dbo.sysdatabases B on A.DbId= B.DbId
where B.Name = @banco
	and loginame = @login
	and hostname not like @hostname_nao1
	and hostname not like @hostname_nao2
	and A.program_name like @programa

--> Variável para pegar o SPID da sessão:
Declare @spid as varchar(5)

--> Consulta os processos com os mesmos critérios acima, armazenando cada SPID na tabela temporária "#Processos"
select Cast(spid as varchar(5)) spid
into #Processos
from master.dbo.sysprocesses A
join master.dbo.sysdatabases B on A.DbId= B.DbId
where B.Name = @banco
	and loginame = @login
	and hostname not like @hostname_nao1
	and hostname not like @hostname_nao2
	and A.program_name like @programa

--> Loop para matar cada sessão armazenada na tabela "#Processos":
while(select count(*) from #Processos) >0
begin
	--Pega o primeiro spid da tabela:
	set @spid = (select top 1 spid from #Processos)

	--Testa se é para eliminar ou fazer só um SELECT:
	if @elimina = 'S' exec ('Kill '+ @spid + ';')
	else select ('Kill '+ @spid + ';')

	--Apaga o registro desse SPID da tabela temporária:
	delete from #Processos where spid = @spid
end

--> Elimina a tabela temporária utilizada:
drop table #Processos
