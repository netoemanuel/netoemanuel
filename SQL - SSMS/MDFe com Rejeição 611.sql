--ORDEM COM 611:
exec MonitoraMDFe 78020463	--> 50230311455829000103580010002358601012842860
--update LONTANO_GSe.dbo.mdfe set Id = '50230311455829000103580010002358601012842860', cDV = 0, nMDF = 235860, cMDF = '01284286' where Sequencial = 1398483
--update LONTANO_GSe.dbo.mdfe set Id = '50230211595217000108580000000900641004533589', cDV = 9, nMDF = 090064, cMDF = '00453358' where Sequencial = 439839  exemplo

--update LONTANO_GSe.dbo.mdfe_LOG set cStat = 204 where ID = 22679750 -- Usar ID mais recente
--delete from LONTANO_GSe.dbo.mdfe where Sequencial = 419000 --in (419024,419015,419009,419008)

--ORDEM COM MDFE ERRADO!
--exec MonitoraMDFe 7014840
--delete from LONTANO_GSe.dbo.mdfe where Sequencial = 407662
--exec rodomaior_gse.dbo.geramdfeviagem 7014840, 10005, 'CG'