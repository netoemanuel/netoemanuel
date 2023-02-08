SELECT * FROM ConhecimentosTransporte WHERE NumConhecto = 646256 AND CodUF = 'MT'

EXEC VerificaCTe 40000031093

EXEC Grava_CTe 40000031093
SELECT * FROM LONTANO_GSe.dbo.CTe WHERE Sequencial = 40000031093


select top(1000) * from LONTANO_GSe.dbo.tblLog_operacao WHERE DS_Descricao <> 'Erro ObterEventosNormais Omnilink'order by ID desc
select * from lontano_gse.dbo.tblweb_services where NM_Servico like 'cte%' and TP_Ambiente = 1

-- serviço travado
-- sefaz
-- log de erros do GS-e
-- atualização do gs-e
-- ocorre com todos? NÃO
-- comunicação do servidor com os web services:
--	. https://cte.sefaz.mt.gov.br/ctews/services/CteRecepcao
--  . https://cte.sefaz.mt.gov.br/ctews/services/CteRecepcao?wsdl 

select top(1000) * from LONTANO_GSe.dbo.tblEmitentes order by ID desc