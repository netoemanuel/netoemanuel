select * from CaramuruControle order BY DataCriacao desc

select * from CaramuruControle where id = '6001904568'

SELECT * from RODOMAIOR_GSe.dbo.nfe where ID = '52241114796754001267550100002430381968550683'
SELECT * from RODOMAIOR_GSe.dbo.nfe where ID = '52241114796754001267550100002430371605479148'


SELECT RetencaoContasPagar.CodContasPagar, ContasPagar.ValorDocumento, RetencaoContasPagar.ValorIRRF, RetencaoContasPagar.CodContasPagarIRRF, RetencaoContasPagar.ValorISSRetido, 
RetencaoContasPagar.CodContasPagarISS, RetencaoContasPagar.ValorINSS, RetencaoContasPagar.CodContasPagarINSS, RetencaoContasPagar.ValorRetido_RetFederal, RetencaoContasPagar.CodContasPagar_RetFederal
FROM RetencaoContasPagar 
INNER JOIN ContasPagar ON RetencaoContasPagar.CodContasPagar = ContasPagar.CodContasPagar
WHERE (RetencaoContasPagar.CodContasPagarIRRF = 1364596) OR (RetencaoContasPagar.CodContasPagarISS = 1364596) 
OR (RetencaoContasPagar.CodContasPagarINSS = 1364596) OR (RetencaoContasPagar.CodContasPagar_RetFederal = 1364596)
ORDER BY ContasPagar.DataVencimento

SELECT *from DespesasContasPagar where CodContasPagar = 1364596 and CodTipoDespesa = 112
--UPDATE DespesasContasPagar SET ValorDespesa = (ValorDespesa - 74.96) where CodContasPagar = 1364596 and CodTipoDespesa = 112
SELECT *from ContasPagar where CodContasPagar = 1364596
SELECT *from ContasPagas where CodContasPagar = 1364596
SELECT sum (ValorDespesa) from DespesasContasPagar where CodContasPagar = 1364596
SELECT * from DespesasContasPagar_Log where CodContasPagar = 1364596


select * from ConhecimentosTransporte where NumConhecto = 92871 and CodUF = 'pr'

exec VerificaCTe 930000003635

exec MonitoraMDFe 93003684

SELECT Status,* from RODOMAIOR_GSe.dbo.Eventos_CTe where Sequencial_CTe = 930000003635
--UPDATE RODOMAIOR_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 930000003635

exec MonitoraMDFe 36009285


select * from RateioContasPagar where CodContasPagar = 1364596