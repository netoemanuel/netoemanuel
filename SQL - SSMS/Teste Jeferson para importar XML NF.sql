SELECT ChaveAcessoNFe AS NomeArquivo, NFe.CodVenda
FROM NotasFiscaisConhecimento NF 
LEFT OUTER JOIN Lontano_GSe.dbo.NFe NFe ON NFe.ID COLLATE Latin1_General_CI_AI = NF.ChaveAcessoNFe
WHERE (NF.SequencialConhecimento in (select
CT.Sequencial 
from ConhecimentosTransporte CT 
JOIN NotasFiscaisConhecimento NF ON CT.Sequencial = nf.SequencialConhecimento 
JOIN Rotas on rotas.CodRota = CT.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = CT.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = CT.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = CT.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = CT.CodClientePagto
JOIN LONTANO_GSe.dbo.NFe NFe ON NFe.ID = NF.ChaveAcessoNFe
WHERE CT.SerieConhecto = '0' 
AND CT.DataEmissao BETWEEN '12/01/2024 00:00:00' AND '12/31/2024 23:59:29'
AND (CT.SituacaoConhecto <> 'Cancelado' AND CT.SituacaoConhecto <> 'Substituído')
and CodVenda is not null
and ChaveAcessoNFe is not null
--and CodVenda in (3306975, 3317052)
ORDER BY NF.SerieNF, NF.NumeroNF