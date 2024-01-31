use LONTANO

--select * from ConhecimentosTransporte where NumConhecto = 603428 and CodUF = 'GO'
----novo
--select * from Veiculos where CodVeiculo = 154914
--select * from ConjuntosVeiculo where CodVeiculo = 154914
----antigo
--select * from Veiculos where CodVeiculo = 153777
--select * from ConjuntosVeiculo where CodVeiculo = 153777
--exec MonitoraMDFe 28178350
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select * from ConhecimentosTransporte where NumConhecto = 691237 and CodUF = 'mT'
--exec VerificaCTe 20000148701
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select ValorNF, SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 603606 and CodUF = 'GO'  -- 11060192.00 / 5530.10
--UPDATE ConhecimentosTransporte set ValorNF = 110601.92 , SeguroAverbado = 55.30 where Sequencial = 660000027040

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 1922723 and CodUF = 'GO' -- Substituído

--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Emitido' where Sequencial = 620000024018