use LONTANO


Select * from ConhecimentosTransporte where NumConhecto = 698160 and CodUF = 'MT'
exec VerificaCTe 120000024221
--UPDATE LONTANO_GSe.dbo.cte set Status = 0  WHERE Sequencial = 100000081087

select * from LONTANO_GSe.dbo.cte where Sequencial = 120000024221
--DELETE from LONTANO_GSe.dbo.cte where Sequencial = 120000024221
select * from LONTANO_GSe.dbo.cte_log where Sequencial = 120000024221
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 120000024221
--exec Grava_CTe 120000024221

select * from LONTANO_GSe.dbo.cte where Status = 2 and DataCriacao > '2023-12-14 06:38:24.607' and UF = 'MT'
DELETE  from LONTANO_GSe.dbo.cte where Status = 2 and DataCriacao > '2023-12-14 06:38:24.607' and UF = 'MT'

exec VerificaCTe 100000081087
select * from LONTANO_GSe.dbo.CTe_LOG where id in (22345089,22345088) and Sequencial =  310000095789
--delete from LONTANO_GSe.dbo.CTe_LOG where id in (22345089,22345088) and Sequencial =  310000095789

exec Grava_CTe 120000024224

--exec Grava_CTe 100000081084
--exec Grava_CTe 20000150459
--exec Grava_CTe 100000081083
--exec Grava_CTe 110000018835
--exec Grava_CTe 120000024223
--exec Grava_CTe 630000016486


--exec Grava_CTe 20000150458
--exec Grava_CTe 120000024222
--exec Grava_CTe 220000071698
--exec Grava_CTe 220000071699
--exec Grava_CTe 20000150457
--exec Grava_CTe 100000081081
--exec Grava_CTe 100000081082
--exec Grava_CTe 220000071693
--exec Grava_CTe 220000071694
--exec Grava_CTe 220000071695
--exec Grava_CTe 220000071697