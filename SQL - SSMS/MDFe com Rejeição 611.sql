--ORDEM COM 611:
exec MonitoraMDFe 23001501	--> 50221111595217000108580000000869781004290240
--update RODOMAIOR_GSe.dbo.MDFe set Id = '50221111595217000108580000000869781004290240', cDV = 0, nMDF = 86978, cMDF = '00429024' where Sequencial = 419036
--update RODOMAIOR_GSe.dbo.MDFe set Id = '50221011595217000108580000000855131004149968', cDV = 8, nMDF = 85513, cMDF = '00414996' where Sequencial = 407734   exemplo

--update RODOMAIOR_GSe.dbo.MDFe_LOG set cStat = 204 where ID = 5295407 -- Usar ID mais recente
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 419000 --in (419024,419015,419009,419008)

--ORDEM COM MDFE ERRADO!
exec MonitoraMDFe 7014840
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 407662
--exec rodomaior_gse.dbo.geramdfeviagem 7014840, 10005, 'CG'