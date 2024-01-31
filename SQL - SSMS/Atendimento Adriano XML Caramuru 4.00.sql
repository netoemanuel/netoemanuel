--select codclientematriz from clientes_complemento where codcliente = 1000437
SELECT ctrc.Sequencial, cte.ID AS 'NomeArquivo' , cte.XML_Enviado, cte.XML_Retorno, 'Autorizado' AS status 
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN Rodomaior_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
where 
ctrc.DataEmissao BETWEEN '2023-06-01' AND '2023-08-01 23:59:29' 
and ctrc.ModeloDocumento = 'CT-e'	
and ctrc.SerieConhecto = '0'	
and ctrc.SituacaoConhecto NOT IN ('Cancelado') 	
and ctrc.TipoConhecimento = 'Normal' 	
and comp.CodClienteMatriz = 1000437
--and cte.XML_Enviado like '%versao="4.00"%'
order by ctrc.DataEmissao