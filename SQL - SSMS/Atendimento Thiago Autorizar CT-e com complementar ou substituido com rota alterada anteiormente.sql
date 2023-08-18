-- Atendimento Thiago para autorizar um CT-e apos mudar a rota de uma nova MDF-e
-- Conforme rejeições ao gerar o CT-e
-- Alterar CodigoCFOP Tabela de ConhecimentosTransporte 
select CodigoCFOP,* from ConhecimentosTransporte where NumConhecto = 492687 and CodUF = 'MS' --6.352 -- Rejeicao: CFOP invalido, informar 5932 ou 6932
--UPDATE ConhecimentosTransporte set CodigoCFOP = '6.353' where Sequencial = 250000075797
-- Alterar CFOP Tabela de CTe 
select CFOP, * from LONTANO_GSe.dbo.CTe where Sequencial =250000075798
--update  LONTANO_GSe.dbo.CTe set CFOP = 6353 where Sequencial =250000075797
--
-- ver sempre o CT-e de origem 
select CodigoCFOP,* from ConhecimentosTransporte where NumConhecto = 492076 and CodUF = 'MS'
select UFIni, UFFim, UFEnv, cMunEnv,cMunIni, cMunFim ,xMunEnv, xMunIni, xMunFim, * from LONTANO_GSe.dbo.CTe where Sequencial =250000075715
-- ALterar as infos abaixo no novo CT-e
--update  LONTANO_GSe.dbo.CTe set UFIni ='MS' , UFFim = 'PR', UFEnv = 'MS', cMunEnv = 5002704 ,cMunIni = 5005251 ,
--cMunFim = 4115200 ,xMunEnv = 'CAMPO GRANDE', xMunIni = 'LAGUNA CARAPA', xMunFim = 'MARINGA'  where Sequencial = 250000075797
--
exec VerificaCTe 250000075797  
-- Reenviar 
--update  LONTANO_GSe.dbo.CTe set status = 0 where Sequencial =250000075797