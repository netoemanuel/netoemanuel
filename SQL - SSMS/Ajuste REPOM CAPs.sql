select * from Fatura_Repom where ID = 90 -- valor maior
select * from Fatura_Repom_Itens where IDFatura_REPOM = 90
select (  1989051.25  - 1987637.15) -- -1414.10
select * from Fatura_Repom_Itens where IDFatura_REPOM = 90 and ValorTransacao = 1414.10
select * from Fatura_Repom_Itens where IDFatura_REPOM = 90 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select * from Fatura_Repom_Itens where IDFatura_REPOM = 90 and Sequencial_CTRC in (230000044384,230000044383)
select SituacaoConhecto,* from ConhecimentosTransporte where Sequencial in (230000044384,230000044383)
EXEC VerificaCTe 230000002320
select * from Fatura_Repom_Itens where IDFatura_REPOM = 90 and Sequencial_CTRC is null


 select * from ContasPagar where CodContasPagar = 1431373 -- 1704531.26
 --UPDATE ContasPagar set ValorDocumento = (ValorDocumento - 1414.1), ValorPagar =  (ValorPagar - 1414.1), Saldo = (Saldo - 1414.1) where CodContasPagar = 1431373
