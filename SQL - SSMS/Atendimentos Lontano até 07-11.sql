SELECT SUM(ValorDespesaRateio) AS ValorDespesaRateio FROM DespesasRateioContasPagar WHERE (CodContasPagar = 10007352) AND (CodTipoDespesa = 78)
SELECT * FROM DespesasContasPagar WHERE (CodContasPagar = 10007352) ORDER BY CodTipoDespesa
SELECT COUNT(*) AS Registros FROM DespesasContasPagar WHERE (CodContasPagar = 10007352)

select * from ContasPagar where CodContasPagar = 10007352 -- 37987.76	37987.76	3188.30
--UPDATE ContasPagar set ValorDocumento = 34799.46, ValorPagar = 34799.46, Saldo = 0.00 where CodContasPagar = 10007352

SELECT * from RelacaoFretes where CodRelacaoFrete = 10007348 --37987.76
--UPDATE RelacaoFretes set TotalRelacao = 34799.46 where CodRelacaoFrete = 10007348

SELECT * FROM Temp_SaldoMovCaixa WHERE (CodFilial = 'CG') AND (CodUsuario = 14102) AND (DataCriacao = '11/07/2024 10:03:53') ORDER BY Data, NumDoc, ValorMovimento, CodMovCaixa DESC

SELECT ContasReceber.CodContasReceber, Clientes.CodCliente FROM Caixas  
INNER JOIN Clientes ON Clientes.CodColaborador = Caixas.CodColaborador 
INNER JOIN ContasReceber ON ContasReceber.CodCliente = Clientes.CodCliente 
WHERE Caixas.CodFilial = 'CG' AND Caixas.CodCaixa = 1904 AND (ContasReceber.Situacao NOT IN ('Liquidada', 'Cancelada'))

select * FROM MovimentosCaixa where CodFilial = 'CG' and CodCaixa = 1904 ORDER BY DataMovimento desc
select * FROM MovimentosCaixa where CodMovCaixa = 101789878  -- 10/2024 Férias
--UPDATE MovimentosCaixa set NumDocumento = '11/2024 Férias' where CodMovCaixa = 101789878

SELECT * from RateioContasPagar where CodContasPagar = 1855622 

SELECT 
    CentroCusto.CodFilial AS 'Filial', 
    CentroCusto.CodCentroCusto AS 'C.Custo', 
    DescCentroCusto AS 'Placa Veiculo', 
    FORMAT((ContasPagar.ValorPagar * RateioContasPagar.Percentual / 100), 'N2') + ' %' AS 'Valor Rateado %'
FROM 
    RateioContasPagar 
LEFT OUTER JOIN 
    CentroCusto ON RateioContasPagar.CodFilial = CentroCusto.CodFilial 
                 AND RateioContasPagar.CodCentroCusto = CentroCusto.CodCentroCusto 
INNER JOIN 
    ContasPagar ON RateioContasPagar.CodContasPagar = ContasPagar.CodContasPagar 
WHERE 
    RateioContasPagar.CodContasPagar = 1855622

