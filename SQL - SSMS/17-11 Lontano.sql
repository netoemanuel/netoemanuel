use LONTANO


select * from ConhecimentosTransporte where Sequencial = 280000174883
select * from RelacaoFretes where CodRelacaoFrete = 28014913
select * from ContasPagar where CodContasPagar = 28014916
select * from ContasPagas where CodContasPagar = 28014916
select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 28014913

--Segue passo a passo feito nesse caso!
--excluina guia2 da relação
--corrigi o valor da guia 1
--update RelacaoFretes set TotalRelacao = TotalRelacao + 4131.81 where CodRelacaoFrete = 28014913 --50721.77
--zerei o saldo
select saldo, * from contaspagar where CodContasPagar = 28014916
--update contaspagar set saldo = 0 where CodContasPagar = 28014916 ---4131.81
select * from RelacaoFretes where CodRelacaoFrete = 28014913
--e por fim, alterar e confirmar na guia 1 da relação
select 58986.59 - 54854.78 -- = 4131.81
SELECT *  FROM ContasPagas WHERE (CodContasPagar = 28014916) ORDER BY CodContasPagar, CodMovCaixa
SELECT sum(valortotalpago)  FROM ContasPagas WHERE (CodContasPagar = 28014916)
SELECT *  FROM ContasPagas_log WHERE (CodContasPagar = 28014916) ORDER BY CodContasPagar, CodMovCaixa
select * from MovimentosCaixa where 2800211343 in (CodMovimentoCaixa, CodMovCaixa)
select * from MovimentosCaixa_log where 2800211343 in (CodMovimentoCaixa, CodMovCaixa)

-------------------------------------------------------------------------------------------------------------------------------------

select ValorNF, SeguroAverbado, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 15922 and CodUF = 'PA'
--UPDATE ConhecimentosTransporte set ValorNF = 107448.30, SeguroAverbado = 53.72, GRIS_NaoDescontado = 109.59  where Sequencial = 260000023362
-------------------------------------------------------------------------------------------------------------------------------------

SELECT SUM(ValorTotalItem) AS SumTotal FROM ItensNotaEntrada WHERE (CodNotaEntrada = 2021450)
select * from NotaEntrada_log where (CodNotaEntrada = 2021450) order by DataLog desc
select * from Usuarios where CodUsuario = 14665
-------------------------------------------------------------------------------------------------------------------------------------

select ValorNF, SeguroAverbado, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 694616 and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set ValorNF = 111143.20, SeguroAverbado = 55.57, GRIS_NaoDescontado = 86.69  where Sequencial = 260000023373
