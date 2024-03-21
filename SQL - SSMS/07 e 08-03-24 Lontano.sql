use LONTANO


select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1612691
select SeguroAverbado from ConhecimentosTransporte where DataCriacao > '2023-06-01'and SeguroAverbado = null order BY DataEmissao desc
select * from ConhecimentosTransporte where NumConhecto in (99000363,99000365,99000363,99000359)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where Sequencial = 530000162383
select * from ConhecimentosComplementados where 220000073123 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
select UFFim, UFIni, UF, cUF,  xMunIni, UFEnv, cMunIni, cMunFim, xMunFim,* from LONTANO_GSe.dbo.CTe where Sequencial = 100000081507 --1º CT-e
select UFFim, UFIni, UF, cUF,  xMunIni, UFEnv, cMunIni, cMunFim, xMunFim, * from LONTANO_GSe.dbo.CTe where Sequencial = 220000073121 -- CT-e para autorizar 

--arrumar o update a baixo no proximo caso 
exec VerificaCTe 220000073123
--update LONTANO_GSe.dbo.CTe set xMunIni = 'SORRISO', cMunIni =5107925, cMunFim = 1503606 where Sequencial = 220000073123
--update LONTANO_GSe.dbo.CTe set UFFim = 'PA', UFIni = 'MT', UFEnv = 'MT',xMunFim = 'ITAITUBA' where Sequencial = 220000073123
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 220000073123
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select ValorNF,SeguroAverbado,GRIS_NaoDescontado from ConhecimentosTransporte where NumConhecto = 617004 and CodUF = 'GO' and SerieConhecto = 0
--UPDATE  ConhecimentosTransporte SET ValorNF = 86837.58, SeguroAverbado = 43.41, GRIS_NaoDescontado = 67.73 where NumConhecto = 617004 and CodUF = 'GO' and SerieConhecto = 0
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select TipoConhecimento, SituacaoConhecto, * from ConhecimentosTransporte where Sequencial = 880000136893
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT NumConhecimentoCliente, * FROM ConhecimentosCliente WHERE SequencialConhecimento = 730000132624 ORDER BY Sequencial -- Novo
SELECT NumConhecimentoCliente, * FROM ConhecimentosCliente WHERE SequencialConhecimento = 280000133757 ORDER BY Sequencial -- Original
