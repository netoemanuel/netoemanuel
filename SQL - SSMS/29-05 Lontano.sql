use lontano

--EXEC ConfereAjuste3Reais '2024-04-01', '2024-04-30 23:59', 'CONFERE'
--EXEC ConfereAjuste3Reais '2024-04-01', '2024-04-30 23:59', 'AJUSTA'

--SELECT * FROM ConhecimentosTransporte where NumConhecto = 18331 and CodUF = 'PA' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte SET CodVeiculo = 7879, CodMotorista = 10002824 where NumConhecto = 18331 and CodUF = 'PA' and SerieConhecto = '0' -- 7879
--SELECT * FROM Veiculos where CodVeiculo = 7879 -- antigo
--SELECT * FROM Veiculos where PlacaVeiculo = 'QAO9B14' -- novo -- 9114

--SELECT DiferencaFreteAgregado,* FROM ConhecimentosTransporte where NumConhecto = 712999 and CodUF = 'MT' and SerieConhecto = '0'  -- 162.17
----UPDATE ConhecimentosTransporte set DiferencaFreteAgregado = 0.00 where NumConhecto = 712999 and CodUF = 'MT' and SerieConhecto = '0'

SELECT 
	DISTINCT CTRC.Sequencial, CTRC.CodPedidoFrete, CCR.CodContasReceber, CTRC.CodUF, CTRC.NumConhecto, CTRC.CodUF + '-' + LTRIM(STR(CTRC.NumConhecto)) AS CTRC, CTRC.DataEmissao,
	CCR.QuantUtilizadaCalculo, ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) AS QuantChegFaturamento, CTRC.CodUnidadeMedida, CCR.ValorFaturado, CTRC.QuantidadeSaida,
	CTRC.ValorTotalFrete, CASE ISNULL((SELECT COUNT(NumeroNF) AS QtdeNF  
FROM
	NotasFiscaisConhecimento 
WHERE
	SequencialConhecimento = CTRC.Sequencial), 0) WHEN 1 THEN NotasFiscaisConhecimento.NumeroNF WHEN 0 THEN NULL ELSE 'Várias' END AS NF, CASE WHEN CASE ISNULL(TipoToleranciaQuebra, '')
WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100))  
ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > 0 AND CASE ISNULL(TipoToleranciaQuebra, '')  WHEN 'Diferença'
THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100))  
ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) * (ToleranciaQuebra / 100)  
THEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' 
THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100))
ELSE QuantidadeSaida - ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) END ELSE NULL END AS Quebra, CCR.DataRecebimento, ISNULL(CCR.ValorRecebido, 0) AS ValorRecebido,  
ISNULL(Recebidos.Juros, 0) AS Juros, ISNULL(Recebidos.Multa, 0) AS Multa, ISNULL(Recebidos.Desconto, 0) AS Desconto,
(ISNULL(CCR.ValorFaturado, 0) - ISNULL(CCR.ValorRecebido, 0)) AS SaldoReceber 

--SELECT *
	FROM ConhecimentosContasReceber_Saldo CCR  
		INNER JOIN ConhecimentosTransporte CTRC ON CCR.NumSeqConhecto = CTRC.Sequencial 
		LEFT OUTER JOIN NotasFiscaisConhecimento ON CTRC.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento
		LEFT OUTER JOIN Clientes_Complemento ON CodCliente = CodClientePagto 
		LEFT OUTER JOIN (SELECT CodContasReceber, NumSeqConhecto, SUM(ISNULL(Juros, 0)) AS Juros, SUM(ISNULL(Multa, 0)) AS Multa, SUM(ISNULL(Desconto, 0)) AS Desconto
	FROM 
		ConhecimentosContasReceber_Recebidos 
	GROUP BY
		CodContasReceber, NumSeqConhecto) AS Recebidos ON Recebidos.CodContasReceber = CCR.CodContasReceber AND Recebidos.NumSeqConhecto = CCR.NumSeqConhecto
		Where
			(CCR.CodContasReceber = 1584746)  ORDER BY CTRC.CodUF, CTRC.NumConhecto 


--exec VerificaCTe 470000018926

SELECT DISTINCT CTRC.Sequencial, CTRC.CodPedidoFrete, CCR.CodContasReceber, CTRC.CodUF, CTRC.NumConhecto, CTRC.CodUF + '-' + LTRIM(STR(CTRC.NumConhecto)) AS CTRC, CTRC.DataEmissao, CCR.QuantUtilizadaCalculo, ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) AS QuantChegFaturamento, 
CTRC.CodUnidadeMedida, CCR.ValorFaturado, CTRC.QuantidadeSaida, CTRC.ValorTotalFrete, CASE ISNULL((SELECT COUNT(NumeroNF) AS QtdeNF
FROM NotasFiscaisConhecimento 
WHERE SequencialConhecimento = CTRC.Sequencial), 0) 
WHEN 1 THEN NotasFiscaisConhecimento.NumeroNF WHEN 0 THEN NULL ELSE 'Várias' END AS NF,
CASE WHEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) 
ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > 0
AND CASE ISNULL(TipoToleranciaQuebra, '')  WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100))  
ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) * (ToleranciaQuebra / 100)  THEN
CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100))  ELSE QuantidadeSaida - ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) 
END ELSE NULL END AS Quebra, CCR.DataRecebimento, ISNULL(CCR.ValorRecebido, 0) AS ValorRecebido,  ISNULL(Recebidos.Juros, 0) AS Juros, ISNULL(Recebidos.Multa, 0) AS Multa,
ISNULL(Recebidos.Desconto, 0) AS Desconto, (ISNULL(CCR.ValorFaturado, 0) - ISNULL(CCR.ValorRecebido, 0)) AS SaldoReceber FROM ConhecimentosContasReceber_Saldo CCR  INNER JOIN ConhecimentosTransporte CTRC ON CCR.NumSeqConhecto = CTRC.Sequencial
LEFT OUTER JOIN NotasFiscaisConhecimento ON CTRC.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
LEFT OUTER JOIN Clientes_Complemento ON CodCliente = CodClientePagto 
LEFT OUTER JOIN (SELECT CodContasReceber, NumSeqConhecto, SUM(ISNULL(Juros, 0)) AS Juros, SUM(ISNULL(Multa, 0)) AS Multa, SUM(ISNULL(Desconto, 0)) AS Desconto 
FROM ConhecimentosContasReceber_Recebidos
GROUP BY CodContasReceber, NumSeqConhecto) AS Recebidos ON Recebidos.CodContasReceber = CCR.CodContasReceber AND Recebidos.NumSeqConhecto = CCR.NumSeqConhecto 
Where (CCR.CodContasReceber = 1584746)  ORDER BY CTRC.CodUF, CTRC.NumConhecto 



Declare @NomeColuna as varchar(20) set @NomeColuna =  '%UFSerieNumConhectoUnico%'
Declare @NomeDoBanco as varchar(20) set @NomeDoBanco = (SELECT DB_NAME() AS NomeDoBanco)

exec MASTER.dbo.ProcuraObjetos @NomeDoBanco, @NomeColuna, 'Tudo'
set @NomeDoBanco = @NomeDoBanco + '_GSE'
exec MASTER.dbo.ProcuraObjetos @NomeDoBanco, @NomeColuna, 'Tudo'