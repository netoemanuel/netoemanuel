use RODOMAIOR

--novo 
select * from Veiculos where CodVeiculo = 126737
select * from ConjuntosVeiculo where CodVeiculo = 126737

--insert INTO ConjuntosVeiculo (CodVeiculo,	CodTipoConjunto,	CodVeiculoAdicional1,	CodVeiculoAdicional2,	CodVeiculoAdicional3,	ComprimentoConjunto,	CodUsuarioCriacao,	CodFilialCriacao,	DataCriacao,	CodUsuarioAlteracao,	CodFilialAlteracao,	DataAlteracao,	Eixos)
--select 126737,	3,	342999,	NULL,	NULL,	NULL,	12451,	'CG',	getdate(),	NULL,	NULL,	NULL,	NULL

--antigo
select * from Veiculos where CodVeiculo = 317285
select * from ConjuntosVeiculo where CodVeiculo = 317285
---------------------------------------------------------------------------------------------------------
exec MonitoraMDFe 76022278
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524417
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 524417

exec MonitoraMDFe 41026355
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524415

exec MonitoraMDFe 72002007
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524428
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 524428

exec MonitoraMDFe 76022279
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524425
exec MonitoraMDFe 2047841
exec MonitoraMDFe 2047789
--delete from RODOMAIOR_GSe.dbo.MDFe_log where Sequencial = 523868 and ID > 6114128
exec MonitoraMDFe 4037195
exec MonitoraMDFe 19017918
------------------------------------------------------------------------------------------------------------------------
select top(1000) * from RODOMAIOR_GSe.dbo.tblLog_operacao where NM_Metodo like '%mdf%' or  DS_Descricao like '%mdf%' order by DT_Hs desc
SELECT TOP(500) * FROM RODOMAIOR_GSe.dbo.tblLog_operacao order by DT_Hs desc
select * from RODOMAIOR_GSe.dbo.tblThreads
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Status = 0
------------------------------------------------------------------------------------------------------------------------
	--CTE 73184 COM DESTAQUE DE VALOR NO CAMPO OUTROS

select ObsConhecto,* from ConhecimentosTransporte_Log where NumConhecto = 73184 and CodUF = 'MG'
--cOutros   vOutros  (ValorTotalFrete gravado - Pedágio Somado - Frete Peso calculado)
select ValorComponente3,  * from RODOMAIOR_GSe.dbo.CTe_Dacte where Sequencial = 310000013259
select vFretePeso,vPedagio, vOutros,* FROM RODOMAIOR_GSe.dbo.CTe where Sequencial = 310000013259
select SituacaoConsulta, * from AdmPagamentoFrete where CodAdmFrete = 4



exec MonitoraMDFe 58004106
--delete from RODOMAIOR_GSe.dbo.MDFe_log where Sequencial = 524199 and ID > 6116569
exec MonitoraMDFe 91003158
exec MonitoraMDFe 4037193
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524435
exec MonitoraMDFe 4037194
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524438
exec MonitoraMDFe 91003158
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524458
exec MonitoraMDFe 75009907
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524517
exec MonitoraMDFe 97003905
exec MonitoraMDFe 97003887
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524528
exec MonitoraMDFe 97003904
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524554
exec MonitoraMDFe 2047867
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 524554
exec MonitoraMDFe 97003906
