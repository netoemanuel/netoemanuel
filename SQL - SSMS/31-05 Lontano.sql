SELECT * from ContasPagar where DataVencimento BETWEEN '2024-04-01' and '2024-04-22'and Situacao = 'Liberada' and CodFornecedor = '1106050'

SELECT * from Usuarios where CodUsuario = 12115
SELECT CodUsuarioCriacao,* from ContasPagar where CodContasPagar = 1937747
SELECT * from ContasPagar_log where CodContasPagar = 1937747

SELECT * FROM ContasPagar where CodContasPagar = 28014288
--UPDATE ContasPagar set Situacao = 'Liquidada' where CodContasPagar = 28014288



select * from RateioContasPagar where CodContasPagar = 28014288 
select * from DespesasRateioContasPagar where CodContasPagar = 28014288 

