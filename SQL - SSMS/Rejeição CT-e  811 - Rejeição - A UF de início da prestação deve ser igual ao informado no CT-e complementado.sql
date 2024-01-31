select * from ConhecimentosTransporte where NumConhecto = 506512 and CodUF = 'MS'

exec VerificaCTe 250000078278

select CodRota,* from ConhecimentosTransporte where NumConhecto = 494772 and CodUF = 'MS'
select CodRota,* from ConhecimentosTransporte where NumConhecto = 508177 and CodUF = 'MS'
exec VerificaCTe 620000018385
exec VerificaCTe 350000003038

select * from ConhecimentosComplementados where 250000077996 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

select UFFim, UFIni, UF, cUF, cMunIni, xMunIni, UFEnv, cMunIni, cMunFim, xMunFim,* from LONTANO_GSe.dbo.CTe where Sequencial = 820000009950 --1º CT-e
select UFFim, UFIni, UF, cUF, cMunIni, xMunIni, UFEnv, cMunIni, cMunFim, xMunFim, * from LONTANO_GSe.dbo.CTe where Sequencial = 250000078278 -- CT-e para autorizar 

--arrumar o update a baixo no proximo caso 

--update LONTANO_GSe.dbo.CTe set xMunIni = 'SONORA', cMunIni =5007935, cMunFim = 4115200 where Sequencial = 250000078278
--update LONTANO_GSe.dbo.CTe set UFFim = 'PR', UFIni = 'MS', UFEnv = 'MS', cMunIni = 5007935  where Sequencial = 250000078278
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 250000078278




