-- serviço travado
-- sefaz
-- log de erros do GS-e
-- atualização do gs-e
-- ocorre com todos? SIM ou NÃO 
-- comunicação do servidor com os web services:
--	. https://cte.sefaz.mt.gov.br/ctews/services/CteRecepcao
--  . https://cte.sefaz.mt.gov.br/ctews/services/CteRecepcao?wsdl 

select top(1000) * from LONTANO_GSe.dbo.tblLog_operacao  order by ID DESC
select top(100) * from LONTANO_GSe.dbo.tblLog_operacao where NM_Metodo <> 'ObterEventosNormais' order by ID desc
select * from lontano_gse.dbo.tblweb_services where NM_Servico like 'cte%' and TP_Ambiente = 1
select top(1000) * from LONTANO_GSe.dbo.tblEmitentes order by ID DESC

SELECT * FROM ConhecimentosTransporte WHERE NumConhecto = 554889
EXEC VerificaCTe 410000047186
--update lontano_gse.dbo.cte set status = 0 where sequencial = 500000005090

-- Error Gravação CT-e
exec VerificaCTe 10000017856
select Status, * from LONTANO_GSe.dbo.CTe where Sequencial = 10000017856
select * from ConhecimentosTransporte where Sequencial = 10000017856
exec Grava_CTe 10000017856 --> quando não grava o problema 99% das vezes é o NUMCONHECTO com numeração A FRENTE mais do que 10 números do último daquela UF