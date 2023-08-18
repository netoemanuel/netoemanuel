use RODOMAIOR 
--ALTERAR SITUAÇÃO DA ORGEM 97003048 PARA GERAR O MDF-E DOS CTES 2720 E 2721

select Situacao, * from OrdemEmbarque where NumOrdemEmbarque =	97003048 
--UPDATE OrdemEmbarque set Situacao = 2 where NumOrdemEmbarque = 97003048 

--------------------------------------------------------------------------------------------------------
--ERRO EMISSÃO DE CT-E 76144

select * from ConhecimentosTransporte where NumConhecto = 76187 and CodUF = 'PR'
exec VerificaCTe 10000023039
--UPDATE RODOMAIOR_gse.dbo.CTe set Status = 0 where Sequencial = 10000023028
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where ID in (5899146,5899147) and Sequencial = 10000023028

--------------------------------------------------------------------------------------------------------

 select Status, tpEmis,UF, DataCriacao, * from RODOMAIOR_gse.dbo.CTe WHERE dhEmi > '2023-07-05 00:00:01'  and UF = 'MG' AND Status NOT IN (1, 5, 9)
 --update RODOMAIOR_gse.dbo.CTe set status = 0 WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9) and UF = 'PR'
 
 exec VerificaCTe 660000019568
 --delete from RODOMAIOR_GSe.dbo.cte_log where id in (5899346,5899345,5899338,5899334,5899331,5899328) and Sequencial = 10000023028

 exec VerificaCTe
--update RODOMAIOR_gse.dbo.CTe set status = 0 where Sequencial in (340000023712,410000025703,950000003482,930000002911,410000025701,950000003481) 
--------------------------------------------------------------------------------------------------------

exec MonitoraMDFe 81004112
select top(1000) DataCriacao, * from rodomaior_gse.dbo.averbacaofrete order by id desc


exec MonitoraMDFe 87000651

--update RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 490181

--------------------------------------------------------------------------------------------------------
--Duplicidade de cte (motorista aguardando)  / 204 -  Rejeicao :  Duplicidade de CT-e [nProt: 151230627903520][dhAut: 2023-07-07T15:07:35-04:00]

select * from ConhecimentosTransporte where NumConhecto = 38630 and CodUF = 'MT'
select * from ConhecimentosTransporte where  CodUF = 'MT' order by DataCriacao desc
exec VerificaCTe 510000007519

select Status, * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 510000007516
select Status, cStat, * from RODOMAIOR_GSe.dbo.CTe_log where Sequencial = 510000007519

--update RODOMAIOR_GSe.dbo.cte set NO_Retorno = 100, Status = 1,  DS_Retorno = 'Autorizado o uso da CT-e', NO_Protocolo = 151230627903520, dt_alteracao = '2023-07-06 15:07:35.040' where sequencial = 510000007516 
--update RODOMAIOR_GSe.dbo.cte_log  set codLog = 22, Status = 1,  xMotivo = 'Autorizado o uso da CT-e', nProt = 151230627903520, cStat = 100 where Sequencial = 510000007516 and ID = 5900266

exec verificacte 510000007516


--------------------------------------------------------------------------------------------------------

exec MonitoraMDFe 51009387
select top(1000) DataCriacao, * from rodomaior_gse.dbo.averbacaofrete order by id desc
select Status, * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 510000007516
select  DataCriacao, * from rodomaior_gse.dbo.averbacaofrete where SequencialCTe = 510000007516
select  DataCriacao, * from rodomaior_gse.dbo.averbacaofrete where SequencialCTe = 510000007516 and Id = 871358
--update rodomaior_gse.dbo.averbacaofrete set Situacao = 'Pendente' where SequencialCTe = 510000007516 and Id = 871358
select Status,XML_Enviado, XML_Retorno, DT_Alteracao,NO_Protocolo, * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 510000007516
--update RODOMAIOR_GSe.dbo.CTe set XML_Retorno = '<?xml version="1.0" encoding="utf-16"?><TProtCTe xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" versao="4.00"><infProt><tpAmb>1</tpAmb><verAplic>MT150423003</verAplic><chCTe>51230711595217000299570000000386301000386305</chCTe><dhRecbto>2023-07-07T15:07:35-04:00</dhRecbto><nProt>151230627903520</nProt><digVal>hXYfsO6Dy1uKUUtPqx06UPnfkmg=</digVal><cStat>100</cStat><xMotivo>Autorizado o Uso do CT-e</xMotivo></infProt></TProtCTe>' where Sequencial = 510000007516
--update RODOMAIOR_GSe.dbo.CTe_LOG set xmlEnvolvido = '<?xml version="1.0" encoding="utf-16"?><TProtCTe xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" versao="4.00"><infProt><tpAmb>1</tpAmb><verAplic>MT150423003</verAplic><chCTe>51230711595217000299570000000386301000386305</chCTe><dhRecbto>2023-07-07T15:07:35-04:00</dhRecbto><nProt>151230627903520</nProt><digVal>hXYfsO6Dy1uKUUtPqx06UPnfkmg=</digVal><cStat>100</cStat><xMotivo>Autorizado o Uso do CT-e</xMotivo></infProt></TProtCTe>' where ID = 5900266 
