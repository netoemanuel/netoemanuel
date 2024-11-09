select --COUNT(*) 
--CT.Sequencial, NF.ChaveAcessoNFe AS 'NomeArquivo' , cte.XML_Enviado, cte.XML_Retorno, 'Autorizado' AS status 
 nfe.CodVenda AS 'NomeArquivo', NF.ChaveAcessoNFe 
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
where CT.DataEmissao BETWEEN '2023-08-01' AND '2023-08-01 23:59:29' 
and CT.SerieConhecto = '0' 
--and isnull(ped.IndExportacao,'') = 'S'
and CT.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
and CT.TipoConhecimento = 'Normal'


SELECT * from NotasFiscaisConhecimento


SELECT NF.SequencialConhecimento, c (NF.SerieNF + '/' + LTRIM(NF.NumeroNF)) AS SerieNumNF, NF.ChaveAcessoNFe, NF.DataEmissaoNF, NF.ValorNF, NF.CodModelo, NF.CodigoCFOP, NF.ValorProdutos,
NF.BaseCalculoICMS , NF.ValorICMS, NF.BaseCalcSubstTributaria, NF.ValorICMSSubstTributaria, NF.NumeroNF, NF.UtilizacaoNFe,NFe.DT_Alteracao,NFe.CodVenda, NFe.IndProcedenciaXML, NFe.DataCriacao
FROM NotasFiscaisConhecimento NF 
LEFT OUTER JOIN Lontano_GSe.dbo.NFe NFe ON NFe.ID COLLATE Latin1_General_CI_AI = NF.ChaveAcessoNFe
WHERE (NF.SequencialConhecimento = 590000003873) ORDER BY NF.SerieNF, NF.NumeroNF