--ORDEM COM 611:
exec MonitoraMDFe 22072602	--> 31230211455829000529580050001628331012689840
--update LONTANO_GSe.dbo.mdfe set Id = '51230211455829000286580020003239381012689975', cDV = 5, nMDF = 23938, cMDF = '01268997' where Sequencial = 1376231
--update LONTANO_GSe.dbo.mdfe set Id = '50230211595217000108580000000900641004533589', cDV = 9, nMDF = 90064, cMDF = '00453358' where Sequencial = 439839  exemplo

--update LONTANO_GSe.dbo.mdfe_LOG set cStat = 204 where ID = 22459007 -- Usar ID mais recente
--delete from LONTANO_GSe.dbo.mdfe where Sequencial = 419000 --in (419024,419015,419009,419008)

--ORDEM COM MDFE ERRADO!
--exec MonitoraMDFe 7014840
--delete from LONTANO_GSe.dbo.mdfe where Sequencial = 407662
--exec rodomaior_gse.dbo.geramdfeviagem 7014840, 10005, 'CG'