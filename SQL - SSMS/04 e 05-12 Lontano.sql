use LONTANO


select * from ConhecimentosTransporte where NumConhecto = 507127 and Coduf = 'MS'
exec VerificaCTe 450000025164

exec MonitoraMDFe 45027153

--UPDATE LONTANO_GSe.dbo.MDFe set Status = 0 where Sequencial = 1576207

exec VerificaCTe 150000020379


--Favor ajustar o ct-e GO-608377.

--Valor correta da mercadoria R$ 37.972,49
--Valor averbado R$ 18,99
--Valor seguro R$ 45,57

select * from ConhecimentosTransporte where NumConhecto = 608377 and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set ValorNF = 37972.49, SeguroAverbado = 18.99, GRIS_NaoDescontado = 26.58 where Sequencial = 280000177385
select * from ConhecimentosTransporte where NumConhecto = 124240  and CodUF = 'SP'

exec VerificaCTe 50000015716

--Favor ajustar o ct-e GO-609380.
--Valor correto da mercadoria R$ 80.938,98
--Valor averbado R$ 40,47
--Valor seguro R$ 97,13
select * from ConhecimentosTransporte where NumConhecto = 609380 and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set ValorNF = 80938.98, SeguroAverbado = 40.47, GRIS_NaoDescontado = 56.66 where Sequencial = 30000156577


exec MonitoraMDFe 6034677