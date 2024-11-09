select * from ConhecimentosTransporte where NumConhecto = 506512 and CodUF = 'MS'

exec VerificaCTe 10000027199

select CodRota,* from ConhecimentosTransporte where NumConhecto = 734724 and CodUF = 'MS'
select CodRota,* from ConhecimentosTransporte where NumConhecto = 514205 and CodUF = 'MS'
exec VerificaCTe 620000018385
exec VerificaCTe 100000081494
select TipoConhecimento,* from ConhecimentosTransporte where NumConhecto = 734724 and CodUF = 'MT'
select * from ConhecimentosComplementados where 20000157312 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

select xMunIni,cMunIni,xMunFim,cMunFim,UFIni,UFFim,UF,UFEnv from LONTANO_GSe.dbo.CTe where Sequencial = 100000083508 --1º CT-e
select xMunIni,cMunIni,xMunFim,cMunFim,UFIni,UFFim,UF,UFEnv from LONTANO_GSe.dbo.CTe where Sequencial = 20000157312 -- CT-e para autorizar 


--arrumar o update a baixo no proximo caso 
exec VerificaCTe 20000157312

--update LONTANO_GSe.dbo.CTe set xMunIni = 'SORRISO', cMunIni =5107925, xMunFim = 'ITAITUBA', cMunFim = 1503606 where Sequencial = 20000157312
--update LONTANO_GSe.dbo.CTe set  UFIni = 'MT', UFFim = 'PA',UF = 'MT',  UFEnv = 'MT' where Sequencial = 20000157312
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 20000157312	




