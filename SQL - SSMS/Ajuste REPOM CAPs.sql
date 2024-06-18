select * from Fatura_Repom where ID = 146 -- valor maior
select * from Fatura_Repom_Itens where IDFatura_REPOM = 146
select (  2799389.05  - 2790364.05) -- -6505.00
select * from Fatura_Repom_Itens where IDFatura_REPOM = 146 and ValorTransacao = 9025.00
select * from Fatura_Repom_Itens where IDFatura_REPOM = 146 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select * from Fatura_Repom_Itens where IDFatura_REPOM = 146 and Sequencial_CTRC in (230000044384,230000044383)
select SituacaoConhecto,* from ConhecimentosTransporte where Sequencial in (230000044384,230000044383)
EXEC VerificaCTe 170000024005
select * from Fatura_Repom_Itens where IDFatura_REPOM = 146 and Sequencial_CTRC is null


 select * from ContasPagar where CodContasPagar = 1950721 -- 2620966.63
 --UPDATE ContasPagar set ValorDocumento = (ValorDocumento + 9025.00), ValorPagar =  (ValorPagar + 9025.00), Saldo = (Saldo + 9025.00) where CodContasPagar = 1950721
