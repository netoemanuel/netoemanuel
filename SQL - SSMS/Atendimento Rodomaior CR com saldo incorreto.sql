use RODOMAIOR


SELECT DISTINCT CTRC.Sequencial, CTRC.CodPedidoFrete, CCR.CodContasReceber, CTRC.CodUF, CTRC.NumConhecto, CTRC.CodUF + '-' + LTRIM(STR(CTRC.NumConhecto)) AS CTRC, 
CTRC.DataEmissao, CCR.QuantUtilizadaCalculo, ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) AS QuantChegFaturamento, CTRC.CodUnidadeMedida,
CCR.ValorFaturado, CTRC.QuantidadeSaida, CTRC.ValorTotalFrete,CTRC.Outros,CTRC.ValorNF, CASE ISNULL((SELECT COUNT(NumeroNF) AS QtdeNF
FROM NotasFiscaisConhecimento 
WHERE SequencialConhecimento = CTRC.Sequencial), 0) WHEN 1 THEN NotasFiscaisConhecimento.NumeroNF WHEN 0 THEN NULL ELSE 'Várias' END AS NF, 
CASE WHEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > 0 AND CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) * (ToleranciaQuebra / 100) 
THEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) ELSE QuantidadeSaida - ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) END ELSE NULL END AS Quebra, Recebidos.DataRecebimento, ISNULL(Recebidos.ValorRecebido, 0) AS ValorRecebido, ISNULL(Recebidos.Juros, 0) AS Juros, ISNULL(Recebidos.Multa, 0) AS Multa, ISNULL(Recebidos.Desconto, 0) AS Desconto, (ISNULL(CCR.ValorFaturado, 0) - ISNULL(Recebidos.ValorRecebido, 0)) AS SaldoReceber FROM ConhecimentosContasReceber CCR INNER JOIN ConhecimentosTransporte CTRC ON CCR.NumSeqConhecto = CTRC.Sequencial 
LEFT OUTER JOIN NotasFiscaisConhecimento ON CTRC.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento LEFT OUTER JOIN Clientes_Complemento ON CodCliente = CodClientePagto 
LEFT OUTER JOIN (SELECT CodContasReceber, NumSeqConhecto, MAX(DataRecebimento) AS DataRecebimento, SUM(ISNULL(ValorPrincipal, 0)) AS ValorRecebido, SUM(ISNULL(Juros, 0)) AS Juros, SUM(ISNULL(Multa, 0)) AS Multa, SUM(ISNULL(Desconto, 0)) AS Desconto FROM ConhecimentosContasReceber_Recebidos GROUP BY CodContasReceber, NumSeqConhecto) AS Recebidos ON Recebidos.CodContasReceber = CCR.CodContasReceber AND Recebidos.NumSeqConhecto = CCR.NumSeqConhecto WHERE (CCR.CodContasReceber = 1195499) ORDER BY CTRC.CodUF, CTRC.NumConhecto

SELECT CTRC.Sequencial, CTRC.CodPedidoFrete, CCR.CodContasReceber, CTRC.CodUF, CTRC.NumConhecto, CTRC.CodUF + '-' + LTRIM(STR(CTRC.NumConhecto)) AS CTRC, 
CTRC.DataEmissao, CCR.QuantUtilizadaCalculo, ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) AS QuantChegFaturamento, CTRC.CodUnidadeMedida,
CCR.ValorFaturado, CTRC.QuantidadeSaida, CTRC.ValorTotalFrete,CTRC.Outros,CTRC.ValorNF, CASE ISNULL((SELECT COUNT(NumeroNF) AS QtdeNF
FROM NotasFiscaisConhecimento 
WHERE SequencialConhecimento = CTRC.Sequencial), 0) WHEN 1 THEN NotasFiscaisConhecimento.NumeroNF WHEN 0 THEN NULL ELSE 'Várias' END AS NF, 
CASE WHEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > 0 AND CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) * (ToleranciaQuebra / 100) 
THEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) ELSE QuantidadeSaida - ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) END ELSE NULL END AS Quebra, Recebidos.DataRecebimento, ISNULL(Recebidos.ValorRecebido, 0) AS ValorRecebido, ISNULL(Recebidos.Juros, 0) AS Juros, ISNULL(Recebidos.Multa, 0) AS Multa, ISNULL(Recebidos.Desconto, 0) AS Desconto, (ISNULL(CCR.ValorFaturado, 0) - ISNULL(Recebidos.ValorRecebido, 0)) AS SaldoReceber FROM ConhecimentosContasReceber CCR INNER JOIN ConhecimentosTransporte CTRC ON CCR.NumSeqConhecto = CTRC.Sequencial 
LEFT OUTER JOIN NotasFiscaisConhecimento ON CTRC.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento LEFT OUTER JOIN Clientes_Complemento ON CodCliente = CodClientePagto 
LEFT OUTER JOIN (SELECT CodContasReceber, NumSeqConhecto, MAX(DataRecebimento) AS DataRecebimento, SUM(ISNULL(ValorPrincipal, 0)) AS ValorRecebido, SUM(ISNULL(Juros, 0)) AS Juros, SUM(ISNULL(Multa, 0)) AS Multa, SUM(ISNULL(Desconto, 0)) AS Desconto FROM ConhecimentosContasReceber_Recebidos GROUP BY CodContasReceber, NumSeqConhecto) AS Recebidos ON Recebidos.CodContasReceber = CCR.CodContasReceber AND Recebidos.NumSeqConhecto = CCR.NumSeqConhecto WHERE (CCR.CodContasReceber = 1195499) ORDER BY CTRC.CodUF, CTRC.NumConhecto

SELECT * FROM ContasRecebidas WHERE (CodContasReceber = 1195499) ORDER BY DataRecebimento, CodContasReceber


SELECT * from ContasReceber where CodContasReceber = 1195499
SELECT * from ContasRecebidas where CodContasReceber = 1195499
SELECT * FROM MovimentosCaixa where CodMovCaixa In (101265439,101266834,101268131)
SELECT * from MovimentacaoBancaria where CodMovBancaria IN  (1553994,1554437,1555129)
SELECT (125067.00+22419.00+11559.65) --valor CR
select (159054.10+106763.18+11559.65)

SELECT * FROM Usuarios WHERE NomeUsuario LIKE '%VANESSA%'
SELECT TotalRelacao,* FROM RelacaoFretes WHERE (CodRelacaoFrete = 1102957)

SELECT Saldo,* from ContasReceber where CodContasReceber = 1195499 -- 373.65
--UPDATE ContasReceber SET Saldo = 11583.15 where CodContasReceber = 1195499