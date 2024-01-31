use LONTANO

select * from ConhecimentosTransporte where NumConhecto = 497563 and CodUF = 'MS'
exec VerificaCTe 250000076565 
select * from ConhecimentosTransporte where NumConhecto = 388407  and CodUF = 'MS'
exec VerificaCTe 530000156946 
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial = 530000156946
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
FROM Lontano_gse.dbo.CTe CTe
JOIN Lontano_GSe.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM Lontano_GSe.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735
 
exec VerificaCTe 530000156946
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 2 WHERE Sequencial = 530000156946
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 494227  and CodUF ='MS'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 59.3746 where Sequencial = 500000005964 -- 55.2208
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto = 388407  and CodUF = 'MS'
exec VerificaCTe 530000156946 
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial = 530000156946

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
 exec MonitoraMDFe 47018443
 --delete from LONTANO_GSe.dbo.MDFe where Sequencial = 1526621
 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select  * from ConhecimentosTransporte where NumConhecto = 676715 and CodUF = 'MT'
select * from CartaFrete where NumOrdemEmbarque  = 22076519 and Id = 1377580
--delete from CartaFrete where NumOrdemEmbarque  = 22076519 and Id = 1377580
select * from CartaFrete_Ocorrencia where IdCartaFrete = 1377580
--Id	NumOrdemEmbarque	Sequencial	dataCriacao	codUsuarioCriacao	codFilialCriacao	dataCiot	Ciot	CodAdmPagtoFrete	Protocolo	dataStatusProtocolo	statusProtocolo	cancelado	dataCancelamento	codUsuarioCancelamento	codFilialCancelamento	codViagemPamcard	codViagemRepom
--1377580	22076519	0	2023-07-01 17:08:00.300	14319	SNP	NULL	NULL	7	NULL	NULL	NULL	NULL	NULL	NULL	NULL	56987452	NULL
--select * from CartaFrete_OcorrenciaNew where
--UPDATE CartaFrete set codViagemPamcard = null, Sequencial = 0 where NumOrdemEmbarque  = 22076519 and Id = 1377580