use LONTANO
--Marilene: #10056 - Impressão duplicidade cheque
select CodUsuarioCriacao, * from ConhecimentosTransporte where NumConhecto = 484129  and CodUF = 'MS'

SELECT * FROM ConhecimentosRelacaoFretes WHERE (CodRelacaoFrete <> 45003525) AND (NumSeqConhecto = 450000023824) AND (CodTipoPagamento = 1)
SELECT * FROM ConhecimentosRelacaoFretes WHERE  NumSeqConhecto = 450000023824

select * from ChequesEmitidos where NumeroCheque = 223960  -- Pagto. CTRC MS-487656 -- excluido
select * from ChequesEmitidos_log where NumeroCheque = 223960
select * from ChequesEmitidos where NumeroCheque = 223961 --Pagto. CTRC MS-487656
select * from ChequesEmitidos_log where NumeroCheque = 223961
select * from ChequesEmitidos where NumeroCheque = 190133
select * from ChequesEmitidos_log where NumeroCheque = 190133 -- Pagto. CTRC MS-484129 


select * from RegistroAcessoProgramas where CodUsuario = 10371 and DataAcesso between '2023-06-20 00:00:00' and '2023-06-20 23:00:00' order by DataAcesso desc

select * from ChequesEmitidos where NumeroCheque = 190133 and DataEmissao = '2023-06-20 00:00:00'
select * from ChequesEmitidos where NumeroCheque = 223960 and DataEmissao = '2023-07-13 00:00:00'

