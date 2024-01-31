-- Atendimento Thiago para autorizar um CT-e apos mudar a rota de uma nova MDF-e
-- Conforme rejeições ao gerar o CT-e
-- Alterar CodigoCFOP Tabela de ConhecimentosTransporte 
select CodigoCFOP,* from ConhecimentosTransporte where NumConhecto = 683554 and CodUF = 'MT' --6.352 -- Rejeicao: CFOP invalido, informar 5932 ou 6932
--UPDATE ConhecimentosTransporte set CodigoCFOP = '6.353' where Sequencial = 260000022086
-- Alterar CFOP Tabela de CTe 
select CFOP, * from LONTANO_GSe.dbo.CTe where Sequencial =260000022086
--update  LONTANO_GSe.dbo.CTe set CFOP = 6353 where Sequencial =260000022086
--
-- ver sempre o CT-e de origem 
select CodigoCFOP,* from ConhecimentosTransporte where NumConhecto = 683309 and CodUF = 'MT'
select UFIni, UFFim, UFEnv, cMunEnv,cMunIni, cMunFim ,xMunEnv, xMunIni, xMunFim, * from LONTANO_GSe.dbo.CTe where Sequencial =260000022048
-- ALterar as infos abaixo no novo CT-e
--update  LONTANO_GSe.dbo.CTe set UFIni ='MT' , UFFim = 'GO', UFEnv = 'MT', cMunEnv = 5107602 ,cMunIni = 5100201 ,
--cMunFim = 5218805 ,xMunEnv = 'RONDONOPOLIS', xMunIni = 'AGUA BOA', xMunFim = 'RIO VERDE'  where Sequencial = 260000022086
--
exec VerificaCTe 260000022086  
-- Reenviar 
--update  LONTANO_GSe.dbo.CTe set status = 0 where Sequencial =260000022086

--select UFIni, UFFim, UFEnv, cMunEnv,cMunIni, cMunFim ,xMunEnv, xMunIni, xMunFim, * from LONTANO_GSe.dbo.CTe where Sequencial in (260000022048, 260000022086)