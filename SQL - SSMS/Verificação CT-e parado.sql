-- servi�o travado
-- sefaz
-- log de erros do GS-e
-- atualiza��o do gs-e
-- ocorre com todos? SIM ou N�O 
-- comunica��o do servidor com os web services:
--	. https://cte.sefaz.mt.gov.br/ctews/services/CteRecepcao
--  . https://cte.sefaz.mt.gov.br/ctews/services/CteRecepcao?wsdl 

select top(1000) * from LONTANO_GSe.dbo.tblLog_operacao  order by ID DESC
select top(100) * from LONTANO_GSe.dbo.tblLog_operacao where NM_Metodo <> 'ObterEventosNormais' order�by�ID�desc
select * from lontano_gse.dbo.tblweb_services where NM_Servico like 'cte%' and�TP_Ambiente�=�1
select top(1000) * from LONTANO_GSe.dbo.tblEmitentes order�by�ID�DESC

SELECT * FROM ConhecimentosTransporte WHERE NumConhecto = 554889
EXEC VerificaCTe 410000047186
--update lontano_gse.dbo.cte set status = 0 where sequencial = 500000005090

-- Error Grava��o CT-e
exec VerificaCTe 10000017856
select Status, * from LONTANO_GSe.dbo.CTe where Sequencial = 10000017856
select * from ConhecimentosTransporte where Sequencial = 10000017856
exec Grava_CTe 10000017856 --> quando n�o grava o problema 99% das vezes � o NUMCONHECTO com numera��o A FRENTE mais do que 10 n�meros do �ltimo�daquela�UF