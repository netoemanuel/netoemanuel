use RODOMAIOR



select CodFornecedor, * from Motoristas where CodMotorista = 89000380
select * from Motoristas_log where CodMotorista = 89000380 order by DataLog desc
select * from Fornecedores_log where CodFornecedor  = 31000489 order by DataLog desc
select * from OrdemEmbarque where NumOrdemEmbarque = 31011868
select * from OrdemEmbarque_log where NumOrdemEmbarque = 31011868
select * from Fornecedores_log where CodFornecedor  = 31000489
select * from StatusANTT order by DataStatus DESC
select * from ConhecimentosTransporte where NumConhecto = 70116
select * from OrdemEmbarque where NumOrdemEmbarque = 31011868
select * from ConhecimentosComplementados where 10000023144 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
select * from StatusANTT order by DataStatus DESC
select * from Fornecedores where CodFornecedor  = 31000489
select * from Fornecedores_log where CodFornecedor  = 31000489


-------------------------------------------------------------------------------------------------------------------------------

select * from Veiculos where PlacaVeiculo = 'GGY1C91'
select * from ConjuntosVeiculo where CodVeiculo = 91296

--conjunto original
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Eixos
--91296	2	46252	46248	46241	NULL	12508	SGS	2023-07-21 14:00:37.000	NULL	NULL	NULL	NULL

select * from Veiculos where PlacaVeiculo in ('FPT2G37', 'FNN8J37', 'CUI2C77')
--UPDATE ConjuntosVeiculo set CodVeiculoAdicional1 = 42317 , CodVeiculoAdicional2 = 42318 , CodVeiculoAdicional3 = 42321 where CodVeiculo = 91296

-------------------------------------------------------------------------------------------------------------------------------

exec MonitoraMDFe 2045276
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in ( 502801,502800,502798,502796,502795)

exec MonitoraMDFe 2045277
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in ( 502801,502800,502798,502796,502795
