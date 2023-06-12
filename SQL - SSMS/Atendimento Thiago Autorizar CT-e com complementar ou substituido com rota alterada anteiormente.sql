-- Atendimento Thiago para autorizar um CT-e apos mudar a rota de uma nova MDF-e
-- Conforme rejeições ao gerar o CT-e
-- Alterar CodigoCFOP Tabela de ConhecimentosTransporte 
select CodigoCFOP,* from ConhecimentosTransporte where NumConhecto = 480871 and CodUF = 'MS' --6.352 -- Rejeicao: CFOP invalido, informar 5932 ou 6932
--UPDATE ConhecimentosTransporte set CodigoCFOP = '6.352' where Sequencial = 250000074024
-- Alterar CFOP Tabela de CTe 
select CFOP, * from LONTANO_GSe.dbo.CTe where Sequencial =250000074024
--update  LONTANO_GSe.dbo.CTe set CFOP = 6352 where Sequencial =250000074024
--
-- ver sempre o CT-e de origem 
select UFIni, UFFim, UFEnv, cMunEnv,cMunIni, cMunFim ,xMunEnv, xMunIni, xMunFim, * from LONTANO_GSe.dbo.CTe where Sequencial =830000062824
-- ALterar as infos abaixo no novo CT-e
--update  LONTANO_GSe.dbo.CTe set UFIni ='MS' , UFFim = 'SC', UFEnv = 'MS', cMunEnv = 5002704 ,cMunIni = 5006606 ,
--cMunFim = 4202537 ,xMunEnv = 'CAMPO GRANDE', xMunIni = 'BOM JESUS', xMunFim = 'PONTA PORA'  where Sequencial =250000074024
--
exec VerificaCTe 250000074024  
-- Reenviar 
--update  LONTANO_GSe.dbo.CTe set status = 0 where Sequencial =250000074024