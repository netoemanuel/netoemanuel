--ORDEM COM 611:
exec MonitoraMDFe 66025901
--exec MonitoraMDFe 24080574	--> 51240211595217000299580040000766771006281143
--update Rodomaior_GSe.dbo.mdfe set Id = '31240511595217000612580030000747561006716092', cDV = 2, nMDF = 074756, cMDF = '00671609' where Sequencial = 608884
--update Rodomaior_GSe.dbo.mdfe set Id = '50230211595217000108580000000900641004533589', cDV = 9, nMDF = 090064, cMDF = '00453358' where Sequencial = 439839  exemplo

--update Rodomaior_GSe.dbo.mdfe_LOG set cStat = 204 where ID = 6881083 -- Usar ID mais recente
--delete from Rodomaior_GSe.dbo.mdfe where Sequencial in (515255,515247,515246,515241,515240,515238,515235,515234) --in (419024,419015,419009,419008)

--ORDEM COM MDFE ERRADO!
--exec MonitoraMDFe 7014840
--delete from Rodomaior_GSe.dbo.mdfe where Sequencial in( 568702,568660)
--exec Rodomaior_GSe.dbo.geramdfeviagem 7014840, 10005, 'CG'


--update Rodomaior_GSe.dbo.mdfe set Status = 0 where Sequencial = 1594533


EXEC MonitoraMDFe 7018902
select * from MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 7018902
--delete from MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 7018902

--SeqViagem	NumOrdemEmbarque	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	NumOrdemMDFeEspecifico
--598216	7018902	12893	CHP	2023-11-23 15:29:33.703	NULL	NULL	NULL	NULL
--598217	7018902	12893	CHP	2023-11-23 15:30:02.520	NULL	NULL	NULL	NULL
--598244	7018902	12893	CHP	2023-11-23 16:14:15.420	NULL	NULL	NULL	NULL
--598261	7018902	12451	CG	2023-11-23 16:28:30.013	NULL	NULL	NULL	7018902