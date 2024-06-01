use LONTANO

select * from Fatura_Repom where ID = 142 -- valor menor
select * from Fatura_Repom_Itens where IDFatura_REPOM = 142
select (  2945358.34  - 2943857.44) -- -1500.90
select * from Fatura_Repom_Itens where IDFatura_REPOM = 142 and ValorTransacao = 1500.90
select * from Fatura_Repom_Itens where IDFatura_REPOM = 142 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select * from Fatura_Repom_Itens where IDFatura_REPOM = 142 and Sequencial_CTRC in (170000023281,120000025105,80000085204,80000085205,60000030450,310000098580,240000058792,60000030462,450000025720)
select * from Fatura_Repom_Itens where IDFatura_REPOM = 142 and Sequencial_CTRC in (890000031132,890000031133,530000164589,530000164590,240000058742)
select SituacaoConhecto,* from ConhecimentosTransporte where Sequencial in (60000030450)
select * from Fatura_Repom_Itens where IDFatura_REPOM = 142 and Sequencial_CTRC in (60000030450) 
--select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and Sequencial_CTRC is null

select Situacao,* from ContasPagar where CodContasPagar = 1943064
--UPDATE ContasPagar  set ValorDocumento = (ValorDocumento  + 1500.90), ValorPagar = (ValorPagar + 1500.90), Saldo = (Saldo + 1500.90) where CodContasPagar = 1943064

select * from ConhecimentosTransporte where NumConhecto = 65063 and CodUF = 'PR' and SerieConhecto = 'NS'
--update ConhecimentosTransporte set SerieConhecto = '1' where Sequencial = 640000063703
 
SELECT * from Usuarios where NomeUsuario LIKE '%Andre%Costa%'
SELECT * FROM Rotas where CodUsuarioCriacao = 14102


--17995 
SELECT TotalRelacao,ValorDiferenca,* from RelacaoFretes where CodRelacaoFrete = 83004742
SELECT ValorPago,ValorConferido,* FROM ConhecimentosRelacaoFretes where NumSeqConhecto = 830000066643 -- 4973.49
SELECT ValorDocumento,ValorPagar,Saldo, * from ContasPagar where CodContasPagar = 83004745
SELECT ValorTotalPago, * from ContasPagas where CodContasPagar = 83004745 -- 4973.49
SELECT ValorMovimento,* FROM MovimentosCaixa where CodMovCaixa = 8300044048 -- 1406.49
SELECT ValorMovimento,* from MovimentacaoBancaria where CodMovBancaria = 83044048 -- 1406.49

--18023
SELECT TotalRelacao,ValorDiferenca,CodContasPagar,* from RelacaoFretes where CodRelacaoFrete = 83004539
SELECT ValorPago,ValorConferido,* FROM ConhecimentosRelacaoFretes where CodRelacaoFrete = 83004539
SELECT ValorPago,ValorConferido,* FROM ConhecimentosRelacaoFretes where NumSeqConhecto = 20000147352 -- 4973.49
SELECT ValorDocumento,ValorPagar,Saldo, * from ContasPagar where CodContasPagar = 83004542
SELECT ValorTotalPago, * from ContasPagas where CodContasPagar = 83004542 -- 7010.88
SELECT ValorMovimento,* FROM MovimentosCaixa where CodMovCaixa = 8300041948 -- 7010.88
SELECT ValorMovimento,* from MovimentacaoBancaria where CodMovBancaria = 83041948 -- 7010.88



select NumRelatorioEmbarque, CodPedidoFrete, * from ConhecimentosTransporte where NumConhecto = 522418 and CodUF = 'MS' and SerieConhecto = '0' -- 1001870
--UPDATE ConhecimentosTransporte set CodPedidoFrete = 52000604 where NumConhecto = 522418 and CodUF = 'MS' and SerieConhecto = '0'

select SituacaoConhecto, * from ConhecimentosTransporte where NumConhecto = 713744 and CodUF = 'MT' and SerieConhecto = '0'
EXEC VerificaCTe 20000153580
EXEC Grava_CTe 20000153580

