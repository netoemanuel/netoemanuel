use LONTANO

select * from ConhecimentosTransporte where NumConhecto = 511506  and CodUF = 'GO'

exec VerificaCTe 850000012311


exec VerificaCTe 240000057368


select Status,* from LONTANO_GSe.dbo.CTe where Sequencial = 240000057368
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 240000057368


select * from ConhecimentosTransporte where NumConhecto = 396553  and CodUF = 'MG'
select Status,* from LONTANO_GSe.dbo.Eventos_CTe where Status = 0--  Sequencial_CTe = 530000161241
--UPDATE LONTANO_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 530000161241
exec VerificaCTe 530000161241
exec MonitoraMDFe 53101967
exec VerificaCTe 170000022866


SELECT Status, * FROM LONTANO_GSe.dbo.CTe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)
SELECT Status, * FROM LONTANO_GSe.dbo.Eventos_CTe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)
SELECT Status, * FROM LONTANO_GSe.dbo.MDFe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)
SELECT Status, * FROM LONTANO_GSe.dbo.Eventos_MDFe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)



select * from ConhecimentosTransporte where NumConhecto = 511552   and CodUF = 'MS'

exec Grava_CTe 850000012314
exec VerificaCTe 850000012314