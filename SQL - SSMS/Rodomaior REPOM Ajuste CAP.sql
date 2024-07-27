--REPOM RODOMAIOR

select * from Fatura_Repom where ID = 153 -- valor menor
select * from Fatura_Repom_Itens where IDFatura_REPOM = 153
select (  3226868.93  - 3211243.93) -- -15625.00
select (  6350.00  + 5000.00 + 4275.00)
select * from Fatura_Repom_Itens where IDFatura_REPOM = 153 and ValorTransacao = 15625.00
select * from Fatura_Repom_Itens where IDFatura_REPOM = 153 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select * from Fatura_Repom_Itens where IDFatura_REPOM = 149 and Sequencial_CTRC in (950000005131)
select SituacaoConhecto,* from ConhecimentosTransporte where Sequencial in (310000099674,980000029267,890000031624)
EXEC VerificaCTe 240000059370
select * from Fatura_Repom_Itens where IDFatura_REPOM = 149 and Sequencial_CTRC is null

 select * from ContasPagar where CodContasPagar = 1958289
 --UPDATE ContasPagar set ValorDocumento = (ValorDocumento + 15625.00), ValorPagar =  (ValorPagar +15625.00), Saldo = (Saldo + 15625.00) where CodContasPagar = 1958289
	

SELECT * from ContasPagar where CodContasPagar  = 1953468

