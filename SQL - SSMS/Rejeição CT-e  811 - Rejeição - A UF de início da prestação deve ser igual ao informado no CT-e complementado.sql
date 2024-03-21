select * from ConhecimentosTransporte where NumConhecto = 506512 and CodUF = 'MS'

exec VerificaCTe 220000073097

select CodRota,* from ConhecimentosTransporte where NumConhecto = 704887 and CodUF = 'MS'
select CodRota,* from ConhecimentosTransporte where NumConhecto = 514205 and CodUF = 'MS'
exec VerificaCTe 620000018385
exec VerificaCTe 100000081494
select TipoConhecimento,* from ConhecimentosTransporte where NumConhecto = 705678 
select * from ConhecimentosComplementados where 260000023882 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

select UFFim, UFIni, UF, cUF,  xMunIni, UFEnv, cMunIni, cMunFim, xMunFim,* from LONTANO_GSe.dbo.CTe where Sequencial = 120000024767 --1º CT-e
select UFFim, UFIni, UF, cUF,  xMunIni, UFEnv, cMunIni, cMunFim, xMunFim, * from LONTANO_GSe.dbo.CTe where Sequencial = 260000023882 -- CT-e para autorizar 


--arrumar o update a baixo no proximo caso 
exec VerificaCTe 260000023882

--update LONTANO_GSe.dbo.CTe set xMunIni = 'SAO JOSE DO XINGU', cMunIni =5107354, cMunFim = 1715705 where Sequencial = 260000023882
--update LONTANO_GSe.dbo.CTe set UFFim = 'TO', UFIni = 'MT', UFEnv = 'MT',xMunFim = 'PALMEIRANTE' where Sequencial = 260000023882
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 260000023882




