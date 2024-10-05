select * from ConhecimentosTransporte where NumConhecto = 506512 and CodUF = 'MS'

exec VerificaCTe 10000027199

select CodRota,* from ConhecimentosTransporte where NumConhecto = 704887 and CodUF = 'MS'
select CodRota,* from ConhecimentosTransporte where NumConhecto = 514205 and CodUF = 'MS'
exec VerificaCTe 620000018385
exec VerificaCTe 100000081494
select TipoConhecimento,* from ConhecimentosTransporte where NumConhecto = 705678 
select * from ConhecimentosComplementados where 10000027199 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

select xMunIni,cMunIni,xMunFim,cMunFim,UFIni,UFFim,UF,UFEnv from Rodomaior_Gse.dbo.CTe where Sequencial = 510000013984 --1º CT-e
select xMunIni,cMunIni,xMunFim,cMunFim,UFIni,UFFim,UF,UFEnv from Rodomaior_Gse.dbo.CTe where Sequencial = 10000027199 -- CT-e para autorizar 


--arrumar o update a baixo no proximo caso 
exec VerificaCTe 260000023882

--update Rodomaior_Gse.dbo.CTe set xMunIni = 'SORRISO', cMunIni =5107925, xMunFim = 'ITAITUBA', cMunFim = 1503606 where Sequencial = 10000027199
--update Rodomaior_Gse.dbo.CTe set  UFIni = 'MT', UFFim = 'PA',UF = 'MT',  UFEnv = 'MT' where Sequencial = 10000027199
--update Rodomaior_Gse.dbo.CTe set Status = 0 where Sequencial = 10000027199




