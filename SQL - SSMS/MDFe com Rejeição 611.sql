--ORDEM COM 611:
EXEC MonitoraMDFe 24080574
--exec MonitoraMDFe 24080574	--> 52240111455829000367580030003716061014736303
--update Lontano_GSe.dbo.mdfe set Id = '52240111455829000367580030003716061014736303', cDV = 3, nMDF = 371606, cMDF = '01473630' where Sequencial = 1594534
--update Lontano_GSe.dbo.mdfe set Id = '50230211595217000108580000000900641004533589', cDV = 9, nMDF = 090064, cMDF = '00453358' where Sequencial = 439839  exemplo

--update Lontano_GSe.dbo.mdfe_LOG set cStat = 204 where ID = 24385309 -- Usar ID mais recente
--delete from Lontano_GSe.dbo.mdfe where Sequencial in (515255,515247,515246,515241,515240,515238,515235,515234) --in (419024,419015,419009,419008)

--ORDEM COM MDFE ERRADO!
--exec MonitoraMDFe 7014840
--delete from Lontano_GSe.dbo.mdfe where Sequencial in( 555073,555072,555071,555065,555063,555060,555057)
--exec Lontano_GSe.dbo.geramdfeviagem 7014840, 10005, 'CG'


--update Lontano_GSe.dbo.mdfe set Status = 0 where Sequencial = 1594533


EXEC MonitoraMDFe 7018902
select * from MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 7018902
--delete from MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 7018902

--SeqViagem	NumOrdemEmbarque	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	NumOrdemMDFeEspecifico
--598216	7018902	12893	CHP	2023-11-23 15:29:33.703	NULL	NULL	NULL	NULL
--598217	7018902	12893	CHP	2023-11-23 15:30:02.520	NULL	NULL	NULL	NULL
--598244	7018902	12893	CHP	2023-11-23 16:14:15.420	NULL	NULL	NULL	NULL
--598261	7018902	12451	CG	2023-11-23 16:28:30.013	NULL	NULL	NULL	7018902