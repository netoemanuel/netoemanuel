-- Baixar XML ou PDF MDF-e

select distinct mdfe.Sequencial, mdfe.Id 'NomeArquivo', convert(varchar(max),envio.xmlEnvolvido) 'XML_Enviado', convert(varchar(max),retorno.xmlEnvolvido) 'XML_Retorno', 'Autorizado' AS 'Status'
from LONTANO_GSe.dbo.MDFe mdfe
join LONTANO_GSe.dbo.MDFe_LOG envio on envio.Sequencial = mdfe.Sequencial and envio.codLog = 10 and envio.ID = (select MAX(ultenvio.id) from LONTANO_GSe.dbo.MDFe_LOG ultenvio where ultenvio.Sequencial = envio.Sequencial and ultenvio.codLog = 10)
join LONTANO_GSe.dbo.MDFe_LOG retorno on retorno.Sequencial = mdfe.Sequencial and retorno.codLog = 22 and retorno.ID = (select MAX(ultretorno.id) from LONTANO_GSe.dbo.MDFe_LOG ultretorno where ultretorno.Sequencial = retorno.Sequencial and ultretorno.codLog = 22)
left join LONTANO_GSe.dbo.propVeiculos_MDFe prop on prop.Sequencial = mdfe.Sequencial
where mdfe.Status in (1,9)
	and mdfe.dhEmi between '2024-09-03' and '2024-09-15 23:59:29'
	and mdfe.UF = 'MG'
	and prop.Sequencial�is�null

select * from LONTANO_GSe.dbo.MDFe

-- Baixar XML ou PDF CT-e

SELECT ctrc.Sequencial, cte.ID AS 'NomeArquivo' , cte.XML_Enviado, cte.XML_Retorno, 'Autorizado' AS status -- 264709
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
where ctrc.DataEmissao BETWEEN '2021-01-01' AND '2021-03-31 23:59:29' 
	and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SerieConhecto = '0' 
	and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substitu�do') 
	and ctrc.TipoConhecimento = 'Normal' 
order by ctrc.DataEmissao


blk

--feito  01-01 � 30/06