exec VerificaCTe 510000029643
select Status,tpCTe, * from Rodomaior_GSe.dbo.CTe where Sequencial = 130000017422
--delete from Rodomaior_GSe.dbo.CTe_LOG where id in(21257584,21257583,21257580,21257569,21257568,21257565) and Sequencial = 940000057626
--update Rodomaior_GSe.dbo.CTe set status = 1 WHERE Sequencial = 940000057626
  --update RODOMAIOR_GSe.dbo.AverbacaoFrete set NumApolice = null, Protocolo = NULL  where SequencialCTe = 720000001709
 select Status, tpEmis,UF, * from Rodomaior_GSe.dbo.MDFe WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)
select * from ConhecimentosTransporte where NumConhecto = 382889 and CodUF = 'MG'
exec VerificaCTe 860000001921
--exec Grava_CTe 940000057619
 select Status, tpEmis,UF, * from Rodomaior_GSe.dbo.CTe WHERE dhEmi > '2023-07-06 00:00:01' AND Status NOT IN (1, 5, 9)
  --update Rodomaior_GSe.dbo.CTe set status = 0 WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)


  exec MonitoraMDFe 
  select CodFilialCriacao, * from ConhecimentosTransporte where NumConhecto in ( 76090,76089 ) and CodUF = 'PR'
  select Situacao, Retorno,  * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 720000001709

  select Status,* from RODOMAIOR_GSe.dbo.CTe where Sequencial in (10000022993,10000022994)
  --UPDATE RODOMAIOR_GSe.dbo.CTe set Status = 0 where Sequencial in (10000022993,10000022994)
 
 exec VerificaCTe 410000025675