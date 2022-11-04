SELECT top(100) Status, DT_Alteracao, * from Rodomaior_GSe.dbo.cte order by datacriacao desc
SELECT top(100) * from RODOMAIOR_GSe.dbo.tbllog_operacao order BY ID DESC -- Erros Log
SELECT * from RODOMAIOR_GSe.dbo.Eventos_MDFe where dhEvento >= '2022-10-20' and Status = 0 -- Verificar eventos
--
exec Rodomaior_GSe.dbo.geramdfeviagem 000000, 10005, 'CG'
exec monitoramdfe  3021646
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 00000
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 000000  --- da pare=te de baixo do EXEC Monitora
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial =   --- deletar e gerar novamente
--
-- Excluir linha, caso a MDF-e esteja autorizada. (LOG)

SELECT *FROM Rodomaior_GSe.dbo.MDFe_LOG WHERE Sequencial = 407873 AND Id in (55208839,5208832,5208831,5208830,5208811,5208791,5208790)
--DELETE FROM Rodomaior_GSe.dbo.MDFe_LOG WHERE Sequencial = 407873 AND Id IN (5208839)

-- Caso MDF-e 


-- Casos dos dias 19/10 á 21/10 RDM

--exec Rodomaior_GSe.dbo.geramdfeviagem 25004940, 10005, 'CG'
--exec monitoramdfe  25004940
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 

--exec Rodomaior_GSe.dbo.geramdfeviagem 71004883, 10005, 'CG'
--exec monitoramdfe  71004883
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 406811
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 5136709
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 406811

--exec Rodomaior_GSe.dbo.geramdfeviagem 71004883, 10005, 'CG'
--exec monitoramdfe  71004883
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 406813
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 5136770
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 406813

--exec Rodomaior_GSe.dbo.geramdfeviagem 66017863, 10005, 'CG'
--exec monitoramdfe  66017863
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 406815
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 5136833
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 406815

--exec Rodomaior_GSe.dbo.geramdfeviagem , 10005, 'CG'
--exec monitoramdfe  71004881
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 406787
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 5134434
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 

--exec Rodomaior_GSe.dbo.geramdfeviagem 8016100, 10005, 'CG'
--exec monitoramdfe  8016100
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 406887
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 5159177
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 406900

--exec Rodomaior_GSe.dbo.geramdfeviagem 2039413, 10005, 'CG'
--exec monitoramdfe  2039413
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 406878
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 5160768
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 406904

--exec Rodomaior_GSe.dbo.geramdfeviagem 5020525, 10005, 'CG'
--exec monitoramdfe 31007131 
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe_LOG WHERE Sequencial = 406689 AND Id = 5148070
--SELECT *FROM Rodomaior_GSe.dbo.MDFe_LOG WHERE Sequencial = 406689 AND Id = 5148070
--DELETE FROM Rodomaior_GSe.dbo.MDFe_LOG WHERE Sequencial = 406787 AND Id IN (5134434,5134433,5133868,5133861,5133860,5133857,5133850,5133849,5133848,5133825)
--SELECT *FROM Rodomaior_GSe.dbo.MDFe_LOG WHERE Sequencial = 406787 AND Id IN (5134434,5134433,5133868,5133861,5133860,5133857,5133850,5133849,5133848,5133825)
--DELETE FROM Rodomaior_GSe.dbo.MDFe_LOG WHERE Sequencial = 406852 AND Id IN (5148069,5148068,5147345)
--SELECT *FROM Rodomaior_GSe.dbo.MDFe_LOG WHERE Sequencial = 406852 AND Id IN(5148069,5148068,5147345) -- 31007131

--exec Rodomaior_GSe.dbo.geramdfeviagem 65001535, 10005, 'CG'
--exec monitoramdfe  31007131
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 406920
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 406920
--DELETE FROM Rodomaior_GSe.dbo.MDFe_LOG WHERE Sequencial = 406852 AND Id = 5165376


--exec Rodomaior_GSe.dbo.geramdfeviagem 7014816, 10005, 'CG'
--exec monitoramdfe  7014816
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 406932
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 5166191
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 406938

--exec Rodomaior_GSe.dbo.geramdfeviagem 76015504, 10005, 'CG'
--exec monitoramdfe  76015504
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 406444
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 5180490
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 406444

--exec MonitoraMDFe 31007131
--select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 406852
--select * fROM Rodomaior_GSe.dbo.MDFe_log WHERE Sequencial = 406852 AND Id in (5180714,5180713,5180432,5180431,5180348,5180347,5179793,5179792,5179665,5179445,5179444,5179091)
--DELETE fROM Rodomaior_GSe.dbo.MDFe_log WHERE Sequencial = 406852 AND Id in (5180714,5180713,5180432,5180431,5180348,5180347,5179793,5179792,5179665,5179445,5179444,5179091)
--update RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial = 326024
--update RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial = 326024
--exec MonitoraMDFe 76015504
--select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 406444
--update RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial = 326025
--exec MonitoraMDFe 95002289
--select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 405711
--	delete from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial in (326232,326233)
--exec MonitoraMDFe 95002290
--select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 405770
--delete from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial in (326223)
--exec MonitoraMDFe 76015466
--select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 406326
--update RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial = 326015
--exec MonitoraMDFe 7014815
--select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 406689
--select * from RODOMAIOR_GSe.dbo.Eventos_MDFe where dhEvento >= '2022-10-19' and Status = 0

--SELECT MDFe_LOG.Sequencial, MAX(dhlog) FROM MDFe_LOG WHERE dhLog >= DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) AND cStat = 678 group by MDFe_LOG.Sequencial HAVING DATEDIFF(MINUTE,MAX(dhLog),GETDATE()) < 30

--exec MonitoraMDFe 18009857
--exec Rodomaior_GSe.dbo.geramdfeviagem 66017888, 10005, 'CG'
--exec monitoramdfe  18009892 
--SE ESTIVER COM STATUS = 7:
--update Rodomaior_GSe.dbo.MDFe set Status = 2 where Sequencial = 406811
--APÓS TEM QUE TENTAR VER SE ESTÁ DUPLICADO
--update Rodomaior_GSe.dbo.MDFe_LOG set codLog = 22, status = 2, cStat = 204 where ID = 5136709
--SE DER REJEIÇÃO 217
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 406811
--update Rodomaior_GSe.dbo.MDFe set  status = 2 where CodManifestoCarga = 414707
--exec Rodomaior_GSe.dbo.geramdfeviagem 31007152, 10005, 'CG'
--exec monitoramdfe 31007152

--select * from ConhecimentosTransporte where NumConhecto = 172987 and CodUF ='SP'
--EXEC VerificaCTe 40000031030
--UPDATE RODOMaior_GSe.dbo.CTe SET STATUS = 0 WHERE Sequencial = 40000031030

--exec monitoramdfe 95002316
--exec monitoramdfe 93001001
--exec monitoramdfe 93001002
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial = 407554
--exec Rodomaior_GSe.dbo.geramdfeviagem 93001002, 10005, 'CG'


SELECT * from ConhecimentosTransporte where NumConhecto = 59261 and CodUF  = 'MG'
EXEC VerificaCTe 830000003107
UPDATE Rodomaior_GSe.dbo.CTe SET STATUS = 0 WHERE Sequencial = 830000003107
