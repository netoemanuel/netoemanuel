--and isnull(ped.IndExportacao,'') = 'S' SOMENTE CASO SEJA PEDIDO  


Declare @codclientematriz decimal set @codclientematriz = 1017453

Declare @DataInicio as varchar(25) set @DataInicio = '2023-01-13 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2023-02-15 23:59:29'

--> PARA CONFERIR O TOTAL (COMENTAR LINHA DO ORDER BY):
select SUM(ValorTotalFrete) Total, COUNT(cte.Sequencial) AS Qtde
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
where 
	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SerieConhecto = '0' 
	and ctrc.SituacaoConhecto = 'Emitido'
	--and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substitu�do') 
	and comp.CodClienteMatriz = @codclientematriz

--> PARA GERAR OS DADOS QUE SER�O COPIADOS PARA A PLANILHA (DESCOMENTAR LINHA DO ORDER BY):
select 
	 ctrc.NumConhecto AS 'N� CT-e'
	,ctrc.CodUF AS 'UF'
	,CONVERT(varchar(8),ctrc.DataEmissao,3) AS 'Data'	
	,ped.CodPedidoFrete as 'Produto'
	,nf.PesoNF as Peso
	,sum(isnull(ctrc.ValorTotalFrete, 0 ) + isnull(ctrc.ValorICMSFrete, 0 )) as 'Valor Total�Frete/ICMS'
	,format(ctrc.ValorICMSFrete,'N2','pt-br') AS 'Valor ICMS'
	,format(ctrc.ValorTotalFrete,'N2','pt-br') AS 'Valor Total Frete'
	, cte.CNPJ as CNJP	
	
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
join LONTANO.dbo.Cidades CidOrigem on CidOrigem.CodCidade = Rotas.CodCidadeOrigem 
join LONTANO_GSe.dbo.Cidades_e CidadeOrigem on CidadeOrigem.CodCidade = CidOrigem.CodCidade_Subor

join LONTANO.dbo.Cidades CidDestino on CidDestino.CodCidade = Rotas.CodCidadeDestino
join LONTANO_GSe.dbo.Cidades_e CidadeDestino on CidadeDestino.CodCidade = CidDestino.CodCidade_Subor

join lontano.dbo.NaturezaCarga NC on nc.CodNaturezaCarga = ctrc.CodNaturezaCarga
where 
	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SerieConhecto = '0' 
	and ctrc.SituacaoConhecto = 'Emitido'
	--and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substitu�do') 
	and comp.CodClienteMatriz = @codclientematriz

GROUP BY ctrc.DataEmissao,ctrc.ValorICMSFrete,ctrc.ValorTotalFrete,ctrc.Sequencial,ctrc.NumConhecto,ctrc.CodUF,ped.CodPedidoFrete,cte.PesoLiquidoNFe,cte.CNPJ, nf.PesoNF