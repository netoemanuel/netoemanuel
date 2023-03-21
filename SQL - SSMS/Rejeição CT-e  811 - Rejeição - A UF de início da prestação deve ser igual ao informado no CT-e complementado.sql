select * from ConhecimentosTransporte where NumConhecto = 568441 and CodUF = 'GO'

exec VerificaCTe 310000089019

select CodRota,* from ConhecimentosTransporte where NumConhecto = 568144 and CodUF = 'GO'
select CodRota,* from ConhecimentosTransporte where NumConhecto = 565632 and CodUF = 'GO'
exec VerificaCTe 620000018385
exec VerificaCTe 350000003038


select UFFim, UFIni, UF, cUF, cMunIni, xMunIni, UFEnv, cMunIni, cMunFim, xMunFim,* from LONTANO_GSe.dbo.CTe where Sequencial = 620000018385 --1º CT-e
select UFFim, UFIni, UF, cUF, cMunIni, xMunIni, UFEnv, cMunIni, cMunFim, xMunFim, * from LONTANO_GSe.dbo.CTe where Sequencial = 350000003038 -- CT-e para autorizar 

--arrumar o update a baixo no proximo caso 

--update LONTANO_GSe.dbo.CTe set xMunIni = 'NEROPOLIS', cMunIni =5214507, cMunFim = 5107602 where Sequencial = 350000003038
--update LONTANO_GSe.dbo.CTe set UFFim = 'MT', UFIni = 'GO', UFEnv = 'MS', cMunIni = 5214507  where Sequencial = 350000003038
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 350000003038




