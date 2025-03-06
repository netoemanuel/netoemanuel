SELECT 
    CT.Sequencial, 
    cte.ID AS 'NomeArquivo', 
    cte.XML_Enviado, 
    cte.XML_Retorno, 
    'Autorizado' AS status
FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0',
    'Excel 8.0;DATABASE=C:\EDI\XML Cte faltantes - 4 trimestre 2024.xlsx',
    'SELECT * FROM [Novembro$A1:P14000]') P 
JOIN LONTANO_GSe.dbo.CTe cte 
    ON P.[Chave CT-e] = cte.ID COLLATE Latin1_General_CI_AS
JOIN ConhecimentosTransporte CT 
    ON cte.Sequencial = CT.Sequencial
JOIN NotasFiscaisConhecimento NF 
    ON CT.Sequencial = NF.SequencialConhecimento 
    AND NF.Sequencial = 1
JOIN Rotas 
    ON Rotas.CodRota = CT.CodRota
JOIN Cidades dest1 
    ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 
    ON dest2.CodCidade = dest1.CodCidade_Subor
JOIN PedidosFrete ped 
    ON ped.CodPedidoFrete = CT.CodPedidoFrete
JOIN Clientes_Complemento comp 
    ON comp.CodCliente = CT.CodClientePagto
JOIN Clientes cli 
    ON cli.CodCliente = CT.CodClientePagto
WHERE CT.DataEmissao BETWEEN '2024-11-01' AND '2024-11-30 23:59:29' 
    AND CT.SerieConhecto = '0'


--Abril 2252 / 2182
--Maio 1343 /  1301
--Junho 1595 / 1528
--Julho 1660 / 1545
--Agosto 1373 / 1272
--Setembro 1552 / 1455
--Outubro 1751 / 1654
--Novembro 12549 / 12010