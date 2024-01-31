exec MonitoraMDFe 34024504
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 549668


exec MonitoraMDFe 3023216
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 549666


exec MonitoraMDFe 4038193
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 549663


exec MonitoraMDFe 4038194
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 549664

exec MonitoraMDFe 15037250
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 549662

exec MonitoraMDFe 95004373
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 549665


--EXEC ExportaFretes_SAGE @ini = '11/01/2023 00:00:00', @fim = '11/30/2023 23:59:29'


select * from ConhecimentosTransporte where NumConhecto = 189632 and CodUF = 'SP'
exec VerificaCTe 350000016356
select * from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 350000016356 and id > 6793833
--delete from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 350000016356 and id > 6793833
--UPDATE RODOMAIOR_GSe.dbo.cte SET Status = 1 where Sequencial = 350000016356
--UPDATE RODOMAIOR_GSe.dbo.cte_log set status= 1 where Sequencial = 350000016356 and id = 6793833

select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 350000016356


select * from ConhecimentosTransporte where NumConhecto = 189631 and CodUF = 'SP'
exec VerificaCTe 350000016355
select * from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 350000016355 and id > 6798957
--delete from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 350000016355 and id > 6798957
--UPDATE RODOMAIOR_GSe.dbo.cte SET Status = 1 where Sequencial = 350000016355
--UPDATE RODOMAIOR_GSe.dbo.cte_log set status= 1 where Sequencial = 350000016355 and id = 6798957
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 350000016355

select * from ConhecimentosTransporte where NumConhecto = 189633 and CodUF = 'SP'
exec VerificaCTe 40000036642
select * from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 40000036642 and id > 6791320
--delete from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 40000036642 and id > 6791320
--UPDATE RODOMAIOR_GSe.dbo.cte SET Status = 1 where Sequencial = 40000036642
--UPDATE RODOMAIOR_GSe.dbo.cte_log set status= 1 where Sequencial = 40000036642 and id = 6791320
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 40000036642

select * from ConhecimentosTransporte where NumConhecto = 189634 and CodUF = 'SP'
exec VerificaCTe 40000036643
select * from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 40000036643 and id > 6791320
--delete from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 40000036643 and id > 6791902
--UPDATE RODOMAIOR_GSe.dbo.cte SET Status = 1 where Sequencial = 40000036643
--UPDATE RODOMAIOR_GSe.dbo.cte_log set status= 1 where Sequencial = 40000036643 and id = 6791902
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 40000036643


select * from ConhecimentosTransporte where NumConhecto = 189635 and CodUF = 'SP'
exec VerificaCTe 350000016357
select * from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 350000016357 and id > 6793850
--delete from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 350000016357 and id > 6793850
--UPDATE RODOMAIOR_GSe.dbo.cte SET Status = 1 where Sequencial = 350000016357
--UPDATE RODOMAIOR_GSe.dbo.cte_log set status= 1 where Sequencial = 350000016357 and id = 6793850
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 350000016357

select * from ConhecimentosTransporte where NumConhecto = 189636 and CodUF = 'SP'
exec VerificaCTe 350000016358
select * from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 350000016358 and id > 6793868
--delete from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 350000016358 and id > 6793868
--UPDATE RODOMAIOR_GSe.dbo.cte SET Status = 1 where Sequencial = 350000016358
--UPDATE RODOMAIOR_GSe.dbo.cte_log set status= 1 where Sequencial = 350000016358 and id = 6793868
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 350000016358

select * from ConhecimentosTransporte where NumConhecto = 189637 and CodUF = 'SP'
exec VerificaCTe 350000016359
select * from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 350000016359 and id > 6799705
--delete from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 350000016359 and id > 6799705
--UPDATE RODOMAIOR_GSe.dbo.cte SET Status = Status where Sequencial = 350000016359
--UPDATE RODOMAIOR_GSe.dbo.cte_log set status= 1 where Sequencial = 350000016359 and id = 6799705
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 350000016359


select * from ConhecimentosTransporte where NumConhecto = 189638 and CodUF = 'SP'
exec VerificaCTe 40000036646

SELECT CodControleFilial, * FROM FiliaisAgencias WHERE (CodFilial = 'EST')

select SituacaoConhecto, * from ConhecimentosTransporte where NumConhecto IN( 421001,421002,421003,421004,421005,520501) and CodUF = 'GO' -- Emitido
--update ConhecimentosTransporte set SituacaoConhecto = 'Substituído' where Sequencial in (310000013857,310000013858,310000013859,310000013860,310000013861,310000013849)


exec MonitoraMDFe 79004057