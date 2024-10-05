--REPOM RODOMAIOR

select * from Fatura_Repom order by DataCriacao desc
select * from Fatura_Repom where ID = 161 -- valor menor
select * from Fatura_Repom_Itens where IDFatura_REPOM = 161
select (  2510829.09  - 2509359.13) -- -1469.96
--select (  6350.00  + 5000.00 + 4275.00)
select * from Fatura_Repom_Itens where IDFatura_REPOM = 161 and ValorTransacao = 1469.96
select * from Fatura_Repom_Itens where IDFatura_REPOM = 161 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select * from Fatura_Repom_Itens where IDFatura_REPOM = 161 and Sequencial_CTRC in (270000078497)
select SituacaoConhecto,* from ConhecimentosTransporte where Sequencial in (270000078497)
EXEC VerificaCTe 270000078497
select * from Fatura_Repom_Itens where IDFatura_REPOM = 149 and Sequencial_CTRC is null

 select * from ContasPagar where CodContasPagar = 1968013
 --UPDATE ContasPagar set ValorDocumento = (ValorDocumento - 0.10), ValorPagar =  (ValorPagar -0.10), Saldo = (Saldo - 0.10) where CodContasPagar = 1968013
	

SELECT * from ContasPagar where CodContasPagar  = 1953468

