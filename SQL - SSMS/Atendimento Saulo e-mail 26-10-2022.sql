select distinct mdfe.Sequencial, mdfe.Id 'NomeArquivo', convert(varchar(max),envio.xmlEnvolvido) 'XML_Enviado', convert(varchar(max),retorno.xmlEnvolvido) 'XML_Retorno', 'Autorizado' AS 'Status'
from RODOMAIOR_GSe.dbo.MDFe mdfe
join RODOMAIOR_GSe.dbo.MDFe_LOG envio on envio.Sequencial = mdfe.Sequencial and envio.codLog = 10 and envio.ID = (select MAX(ultenvio.id) from RODOMAIOR_GSe.dbo.MDFe_LOG ultenvio where ultenvio.Sequencial = envio.Sequencial and ultenvio.codLog = 10)
join RODOMAIOR_GSe.dbo.MDFe_LOG retorno on retorno.Sequencial = mdfe.Sequencial and retorno.codLog = 22 and retorno.ID = (select MAX(ultretorno.id) from RODOMAIOR_GSe.dbo.MDFe_LOG ultretorno where ultretorno.Sequencial = retorno.Sequencial and ultretorno.codLog = 22)
left join RODOMAIOR_GSe.dbo.propVeiculos_MDFe prop on prop.Sequencial = mdfe.Sequencial
where mdfe.Status in (1,9)
	and mdfe.dhEmi between '2021-01-01' and '2022-09-30 23:59:29'
	and prop.Sequencial is null