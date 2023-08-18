use LONTANO


SELECT DISTINCT CTRC.Sequencial, CTRC.CodPedidoFrete, CCR.CodContasReceber, CTRC.CodUF, CTRC.NumConhecto, CTRC.CodUF + '-' + LTRIM(STR(CTRC.NumConhecto)) AS CTRC, Recebidos.DataRecebimento,
CTRC.DataEmissao, CCR.QuantUtilizadaCalculo, ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) AS QuantChegFaturamento,
CTRC.CodUnidadeMedida, CCR.ValorFaturado, CTRC.QuantidadeSaida, CTRC.ValorTotalFrete, CASE ISNULL((SELECT COUNT(NumeroNF) AS QtdeNF 
FROM NotasFiscaisConhecimento WHERE SequencialConhecimento = CTRC.Sequencial), 0) WHEN 1 THEN NotasFiscaisConhecimento.NumeroNF WHEN 0 THEN NULL ELSE 'Várias' END AS NF,
CASE WHEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) 
ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > 0 AND CASE ISNULL(TipoToleranciaQuebra, '') 
WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) 
ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) * (ToleranciaQuebra / 100)
THEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) 
ELSE QuantidadeSaida - ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) END ELSE NULL END AS Quebra, Recebidos.DataRecebimento, ISNULL(Recebidos.ValorRecebido, 0) AS ValorRecebido, 
ISNULL(Recebidos.Juros, 0) AS Juros, ISNULL(Recebidos.Multa, 0) AS Multa, ISNULL(Recebidos.Desconto, 0) AS Desconto, (ISNULL(CCR.ValorFaturado, 0) - ISNULL(Recebidos.ValorRecebido, 0)) AS SaldoReceber 
FROM ConhecimentosContasReceber CCR 
INNER JOIN ConhecimentosTransporte CTRC ON CCR.NumSeqConhecto = CTRC.Sequencial
LEFT OUTER JOIN NotasFiscaisConhecimento ON CTRC.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
LEFT OUTER JOIN Clientes_Complemento ON CodCliente = CodClientePagto 
LEFT OUTER JOIN (SELECT CodContasReceber, NumSeqConhecto, MAX(DataRecebimento) AS DataRecebimento, SUM(ISNULL(ValorPrincipal, 0)) AS ValorRecebido, SUM(ISNULL(Juros, 0)) AS Juros, SUM(ISNULL(Multa, 0)) AS Multa, SUM(ISNULL(Desconto, 0)) AS Desconto FROM ConhecimentosContasReceber_Recebidos GROUP BY CodContasReceber, NumSeqConhecto) AS Recebidos ON Recebidos.CodContasReceber = CCR.CodContasReceber AND Recebidos.NumSeqConhecto = CCR.NumSeqConhecto WHERE (CCR.CodContasReceber = 1448337) 
ORDER BY CTRC.CodUF, CTRC.NumConhecto


SELECT DISTINCT CTRC.Sequencial, CTRC.CodPedidoFrete, CCR.CodContasReceber, CTRC.CodUF, CTRC.NumConhecto, CTRC.CodUF + '-' + LTRIM(STR(CTRC.NumConhecto)) AS CTRC, 
	CTRC.DataEmissao, CCR.QuantUtilizadaCalculo, ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) AS QuantChegFaturamento,
	CTRC.CodUnidadeMedida, CCR.ValorFaturado, CTRC.QuantidadeSaida, CTRC.ValorTotalFrete, CASE ISNULL((SELECT COUNT(NumeroNF) AS QtdeNF 
		FROM NotasFiscaisConhecimento WHERE SequencialConhecimento = CTRC.Sequencial), 0) WHEN 1 THEN NotasFiscaisConhecimento.NumeroNF WHEN 0 THEN NULL ELSE 'Várias' END AS NF,
	CASE WHEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) 
	ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > 0 AND CASE ISNULL(TipoToleranciaQuebra, '') 
	WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) 
	ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) * (ToleranciaQuebra / 100)
	THEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) 
	ELSE QuantidadeSaida - ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) END ELSE NULL END AS Quebra, CCR.DataRecebimento, ISNULL(CCR.ValorRecebido, 0) AS ValorRecebido, 
	ISNULL(Recebidos.Juros, 0) AS Juros, ISNULL(Recebidos.Multa, 0) AS Multa, ISNULL(Recebidos.Desconto, 0) AS Desconto, (ISNULL(CCR.ValorFaturado, 0) - ISNULL(CCR.ValorRecebido, 0)) AS SaldoReceber 
FROM ConhecimentosContasReceber_Saldo CCR 
INNER JOIN ConhecimentosTransporte CTRC ON CCR.NumSeqConhecto = CTRC.Sequencial
LEFT OUTER JOIN NotasFiscaisConhecimento ON CTRC.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
LEFT OUTER JOIN Clientes_Complemento ON CodCliente = CodClientePagto 
LEFT OUTER JOIN (SELECT CodContasReceber, NumSeqConhecto, SUM(ISNULL(Juros, 0)) AS Juros, SUM(ISNULL(Multa, 0)) AS Multa, SUM(ISNULL(Desconto, 0)) AS Desconto FROM ConhecimentosContasReceber_Recebidos GROUP BY CodContasReceber, NumSeqConhecto) AS Recebidos ON Recebidos.CodContasReceber = CCR.CodContasReceber AND Recebidos.NumSeqConhecto = CCR.NumSeqConhecto 
WHERE (CCR.CodContasReceber = 1448337) 
ORDER BY CTRC.CodUF, CTRC.NumConhecto

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select Saldo,  * from ContasPagar where CodContasPagar  =  62002084 -- 9688.04
--UPDATE ContasPagar set Saldo = 1529.28 where CodContasPagar  =  62002084

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--#10645 - Verificar rejeição de cancelamento

select * from ConhecimentosTransporte where NumConhecto = 491488 and CodUF = 'MS'

exec VerificaCTe 970000040314

exec MonitoraMDFe 97059902