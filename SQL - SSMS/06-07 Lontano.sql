
exec VerificaCTe 510000029643
select Status,* from LONTANO_GSe.dbo.CTe where Sequencial = 510000029643
--delete from LONTANO_GSe.dbo.CTe_LOG where id in(21258890,21258889,21258886,21258758,21258757,21258754,21258752,21258693,21258692) and Sequencial = 760000054603
--update Lontano_GSe.dbo.CTe set status = 1 WHERE Sequencial = 760000054603
 select Status, tpEmis,UF, * from Lontano_GSe.dbo.MDFe WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)
select * from ConhecimentosTransporte where NumConhecto = 486517 and CodUF = 'MS'
exec VerificaCTe 760000054603
--exec Grava_CTe 240000053822
 select Status, tpEmis,UF, DataCriacao, * from Lontano_GSe.dbo.CTe WHERE dhEmi > '2023-07-02 00:00:01' AND Status NOT IN (1, 5, 9)
  --update Lontano_GSe.dbo.CTe set status = 0 WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)

  exec VerificaCTe 880000119528
  exec VerificaCTe 780000018249
  select Status, tpEmis,UF, * from Lontano_GSe.dbo.CTe WHERE Sequencial = 780000018249
  delete from Lontano_GSe.dbo.CTe WHERE Sequencial = 240000053822
  --update Lontano_GSe.dbo.CTe set Status = 1 WHERE Sequencial = 780000018249

--------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto in (382216,382213,382199,382208) and CodUF = 'MG'
exec VerificaCTe 940000057495
exec VerificaCTe 940000057501
exec VerificaCTe 940000057503
exec VerificaCTe 300000055163

select * from LONTANO_GSe.dbo.cte where ID = '31230611455829000529570000003822168003822164'
select * from LONTANO_GSe.dbo.CTe_LOG  where Sequencial = 300000055163


select * from ConhecimentosTransporte_log where NumConhecto = 382216 and CodUF = 'MG'

