EXEC MonitoraMdfe 22070755

--Placa cavalo mecânico: QAH-1813
--Placas carretas: OOM-5721 // OOM-5722  //  OOM-5723

--select * from LONTANO_GSe.dbo.veicReboque_MDFe where Sequencial = 1352754
--select * from LONTANO_GSe.dbo.propVeiculos_MDFe where Sequencial = 1352754

--select * from Veiculos where PlacaVeiculo = 'QAH-1813'
--select * from Veiculos where PlacaVeiculo = 'OOM-5721'
--select * from Veiculos where PlacaVeiculo = 'OOM-5722'
--select * from Veiculos where PlacaVeiculo = 'OOM-5723'

--select * from ConjuntosVeiculo where CodVeiculo = 1813
--update ConjuntosVeiculo set CodVeiculoAdicional1 = 5721, CodVeiculoAdicional2 = 5722, CodVeiculoAdicional3 = 5723 WHERE CodVeiculo = 1813 and CodUsuarioCriacao = 12591

--select * from ConjuntosVeiculo where CodVeiculo = 9539
--update ConjuntosVeiculo set CodVeiculoAdicional1 = 1930, CodVeiculoAdicional2 = 1934, CodVeiculoAdicional3 = 1931 WHERE CodVeiculo = 9539 and CodUsuarioCriacao = 10142

-------------------------
--02/01/2023 - Marilene #5565


select * from Veiculos where PlacaVeiculo = 'OOM-9540'  -- 9385
select * from ConjuntosVeiculo where CodVeiculo = 9540
--UPDATE ConjuntosVeiculo SET CodVeiculoAdicional1 = Null, CodVeiculoAdicional2 = Null, CodVeiculoAdicional3 = Null WHERE CodVeiculo = 9540

select * from Veiculos where PlacaVeiculo = 'RWF3G81' 
select * from ConjuntosVeiculo where CodVeiculo = 3681 

--UPDATE ConjuntosVeiculo SET CodVeiculoAdicional1 = 329, CodVeiculoAdicional2 = 321, CodVeiculoAdicional3 = 3717 WHERE CodVeiculo = 3681


-

--10/01/2022 - Marilene 
--select * from Veiculos where PlacaVeiculo = 'OOM-9540'
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj
--	9540			2				329						321						3717					25.00				10919				CG				2021-11-17 16:55:51.000	NULL	NULL	NULL	4


--select * from ConjuntosVeiculo where CodVeiculo = 9385
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj
--	9385			2					1859					161						862						25.50				10142				CG					2019-05-16 12:41:42.000	12779	CG	2019-08-14 08:35:53.000	4


--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj
--  99529				2				2064					2076					2075					25.50				10142				CG					2019-06-12 12:23:46.000	NULL	NULL	NULL	4




--28/12/2022

--select * from Veiculos where PlacaVeiculo = 'ADG0G56'  -- 426495
--select * from ConjuntosVeiculo where CodVeiculo = 426495
--UPDATE ConjuntosVeiculo SET CodVeiculoAdicional1 = 44194, CodVeiculoAdicional2 = NULL WHERE CodVeiculo = 426495

--select * from Veiculos where CodVeiculo = 481998 
--select * from ConjuntosVeiculo where CodVeiculo = 481998 

--UPDATE ConjuntosVeiculo SET CodVeiculoAdicional1 = 347421, CodVeiculoAdicional2 = 347422 WHERE CodVeiculo = 481998

-- original = 426495
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj
--426495	           1				347421					347422				    NULL					NULL				12286			PPO	2021-01-08 13:51:46.000	10504	PPO	2022-08-18 09:52:27.000	NULL


-- original = 481998
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj
--481998				3				44194					NULL					NULL					NULL				10504			PPO	2022-10-13 13:07:31.000	NULL	NULL	NULL	NULL

