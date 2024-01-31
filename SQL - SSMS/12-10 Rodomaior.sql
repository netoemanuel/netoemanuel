use RODOMAIOR

--exec VerificaCTe 40000035843
--exec VerificaCTe 780000003620  -- MG-74158
----delete from RODOMAIOR_GSe.dbo.cte where Sequencial = 780000003620
----exec Grava_CTe 780000003620
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select  * from Veiculos where CodVeiculo =  126402
--select * from ConjuntosVeiculo where CodVeiculo =  126402
----CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Eixos
----126402	3	126403	NULL	NULL	NULL	12694	DOU	2023-09-21 17:14:42.000	NULL	NULL	NULL	NULL
----UPDATE ConjuntosVeiculo set CodVeiculoAdicional1 = 341988 where CodVeiculo =  126402
--select  * from Veiculos where CodVeiculo = 341988
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

--select * from ConhecimentosTransporte where NumConhecto = 60943   and CodUF = 'MG'
--exec VerificaCTe 660000017657



--select * from contaspagar_log where codcontaspagar = 1339207 order by datalog desc


select * from ConhecimentosTransporte where NumConhecto = 74401 and CodUF = 'mg'
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete  where SequencialCTe = 66000002152
--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial =660000021523

exec VerificaCTe 660000021523
exec MonitoraMDFe 66022902