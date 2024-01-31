use LONTANO

exec VerificaCTe
exec VerificaCTe 430000007232
exec VerificaCTe 730000132968
exec VerificaCTe 730000132969
exec VerificaCTe 50000015642
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 50000015642


select * from ConhecimentosTransporte where NumConhecto = 609363 and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set ValorNF =  101306.40 , SeguroAverbado = 50.65 , GRIS_NaoDescontado = 70.91  where Sequencial = 510000030637 