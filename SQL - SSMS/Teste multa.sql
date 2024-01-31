
select CodContasPagar, * from InfracaoTransito where CodUsuarioCriacao = 14102
select CodContasPagar, * from InfracaoTransito_log where CodUsuarioLog = 14102

select CodMovCaixa, * from ContasPagar_log where CodContasPagar = 1814439
select CodMovCaixa, * from ContasPagar where CodContasPagar = 1814439

select CodMovCaixa, * from ContasPagas where CodContasPagar = 1814439
select CodMovCaixa, * from ContasPagas_Log where CodContasPagar = 1814439

select * from MovimentosCaixa where CodMovCaixa = 101431357
select * from MovimentosCaixa_log where CodMovCaixa = 101431357