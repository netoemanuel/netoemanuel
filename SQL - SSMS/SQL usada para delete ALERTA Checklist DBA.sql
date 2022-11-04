--use RODOMAIOR
--use LONTANO
USE Traces
--
SELECT * from Traces.dbo.Alert where dt_alert >= '2022-08-06 23:00:33' and Id_Alert_Parameter = 7
SELECT * FROM Traces.dbo.Alert order BY Dt_Alert desc
--
--DELETE from Traces.dbo.Alert where dt_alert >= '2022-08-06 23:00:33' and Id_Alert_Parameter = 7
--EXEC sys.sp_helpfile
--
-- SQL para ver log de erros "Sistema de Alertas do SQL Server"
--
select * from Traces.dbo.Queries_Profile where starttime between '2022-07-05 09:29' and '2022-07-05 10:39' order by starttime desc