SELECT Sequencial, DataMovimento, NumDoc, CodTipoMovEstoque, QtdeMovimento, EntradaSaida FROM MovimentoEstoque 
WHERE (Situacao = 'Normal') AND (CodFilial = 'CG') AND (CodDeposito = 15) AND (CodProduto = 117234) AND (DataMovimento >= '01/21/2025 00:00:00' AND DataMovimento <= '01/22/2025 23:59:29')
ORDER BY DataMovimento, EntradaSaida


SELECT * FROM	NotaEntrada	WHERE CodNotaEntrada = 1012449
SELECT SituacaoNotaEntrada,* FROM	NotaEntrada_log	WHERE CodNotaEntrada = 1012449


SELECT * FROM	NotaEntrada	WHERE CodNotaEntrada = 1011668
SELECT SituacaoNotaEntrada,* FROM	NotaEntrada_log	WHERE CodNotaEntrada = 1011668 order BY DataLog desc  -- 146323


SELECT COUNT(*) AS Registros FROM DespesasContasPagar WHERE (CodContasPagar = 53012959)
SELECT * FROM DespesasContasPagar WHERE (CodContasPagar = 53012959) ORDER BY CodTipoDespesa
SELECT SUM(ValorDespesaRateio) AS ValorDespesaRateio FROM DespesasRateioContasPagar WHERE (CodContasPagar = 53012959) AND (CodTipoDespesa = 78)
SELECT SUM(ValorDespesaRateio) AS ValorDespesaRateio FROM DespesasRateioContasPagar WHERE (CodContasPagar = 53012959) AND (CodTipoDespesa = 80)

SELECT * FROM DespesasRateioContasPagar WHERE (CodContasPagar = 53012959) AND (CodTipoDespesa = 78)
SELECT * FROM DespesasRateioContasPagar WHERE (CodContasPagar = 53012959) AND (CodTipoDespesa = 80)  ---1465.47

--UPDATE DespesasRateioContasPagar SET ValorDespesaRateio = 48903.55 WHERE (CodContasPagar = 53012959) AND (CodTipoDespesa = 78)
--UPDATE DespesasRateioContasPagar SET ValorDespesaRateio = (1465.47 + 1069.06)WHERE (CodContasPagar = 53012959) AND (CodTipoDespesa = 80)
--UPDATE DespesasRateioContasPagar SET ValorDespesaRateio = (1465.47)WHERE (CodContasPagar = 53012959) AND (CodTipoDespesa = 80)



SELECT * from ConhecimentosTransporte where NumConhecto = 141203 and CodUF = 'SP'
SELECT * from ConhecimentosTransporte where NumConhecto = 141204 and CodUF = 'SP'

EXEC VerificaCTe 60000032190
--DELETE FROM LONTANO_GSe.dbo.CTe_LOG WHERE ID =23178931 and Sequencial =  60000032190
EXEC VerificaCTe 60000032191
--DELETE FROM LONTANO_GSe.dbo.CTe_LOG WHERE ID =23179008 and Sequencial =  60000032191