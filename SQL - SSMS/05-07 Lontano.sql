use RODOMAIOR


exec MonitoraMDFe 76020563

select * from ConhecimentosTransporte where NumConhecto in( 76073) and CodUF = 'MG'
 --delete  from RODOMAIOR_GSe.dbo.cte where Sequencial in (660000019518,660000019520,660000019521,780000003375,780000003376,780000003377)

 exec Grava_CTe 780000003376
 exec Grava_CTe 780000003377

 exec VerificaCTe 410000025661
 exec VerificaCTe 410000025655

 select Status, tpImp,UF, * from RODOMAIOR_GSe.dbo.CTe WHERE DataCriacao > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)

  SELECT Status, UF, cUF, tpEmis, tpCTe, * FROM RODOMAIOR_GSe.dbo.CTe 
WHERE DataCriacao > '2023-07-04 00:00:01' AND Status NOT IN (1, 5, 9)
  --update RODOMAIOR_GSe.dbo.CTe set status = 0 WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)
  --update RODOMAIOR_GSe.dbo.CTe set status = 0 where Sequencial = 410000025655
-------------------------------------------------------------------------------------------
  exec MonitoraMDFe 35022497
  --delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (488937,488934,488931)
  --delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (489012)
  --delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (489039)
  --delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (489047)
  --delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (489039)
    exec MonitoraMDFe 9020122  -- rwd8d26
--update RODOMAIOR_GSe.dbo.mdfe set Status = 0 where Sequencial = 489140
exec MonitoraMDFe  87000645 -- put1d16
--update RODOMAIOR_GSe.dbo.mdfe set Status = 0 where Sequencial = 488791