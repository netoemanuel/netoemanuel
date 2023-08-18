use LONTANO


exec MonitoraMDFe 50011494
exec VerificaCTe 650000023547

select status, * from LONTANO_GSe.dbo.CTe where Sequencial = 650000023547
select status, * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 650000023547 and id > 21402002
--delete from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 650000023547 and id > 21402002

select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 650000023547 and id BETWEEN 21385739  and 21401974
--delete from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 650000023547 and id BETWEEN 21385739  and 21401974
----------------------------------------------------------------------------------------------------------------------------------------------------
select ValorNF, SeguroAverbado, * from ConhecimentosTransporte where NumConhecto = 384291 and CodUF = 'MG' -- seguro 5171.41 / NF 10342824.00
--update ConhecimentosTransporte set ValorNF = 103428.24, SeguroAverbado = 51.71 where Sequencial = 530000154959
----------------------------------------------------------------------------------------------------------------------------------------------------
select ValorNF, SeguroAverbado, * from ConhecimentosTransporte where NumConhecto = 590586 and CodUF = 'GO'
exec VerificaCTe 240000054579

select * from ConhecimentosTransporte where NumConhecto = 681040 and CodUF = 'MT'
exec VerificaCTe 890000029099
----------------------------------------------------------------------------------------------------------------------------------------------------


select IndPagtoDiferenca,* from ConhecimentosTransporte where NumConhecto in  (383102,383103,383104,383105,383108) and CodUF = 'MG'

--exec VerificaCTe 940000057665
--exec VerificaCTe 940000057666
--exec VerificaCTe 940000057667
--exec VerificaCTe 940000057668
exec VerificaCTe 940000057669
----------------------------------------------------------------------------------------------------------------------------------------------------
select IndPagtoDiferenca, * from ConhecimentosTransporte where NumConhecto = 588715 and CodUF = 'GO' -- Paga
--update ConhecimentosTransporte set IndPagtoDiferenca = NULL where sequencial = 560000028979
----------------------------------------------------------------------------------------------------------------------------------------------------
select * from LONTANO_GSe.dbo.AverbacaoFrete where Situacao <> 'Enviado' order by DataCriacao desc