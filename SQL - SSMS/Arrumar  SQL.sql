use LONTANO

select status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from lontano_gse.dbo.cte where sequencial in (830000062289)
exec verificacte 830000062289
update lontano_gse.dbo.cte set xml_retorno = '<protCTe versao="3.00">      <infProt Id="CTe352230015172015">        <tpAmb>1</tpAmb>        <verAplic>RS20230131113942</verAplic>        <chCTe>52230311455829000367570000005684671005684674</chCTe>        <dhRecbto>2023-03-17T18:28:29-03:00</dhRecbto>        <nProt>352230015172015</nProt>        <digVal>3AaWmpDLJdUdO8n2TPW+b3tt+UY=</digVal>        <cStat>100</cStat>        <xMotivo>Autorizado o uso do CT-e</xMotivo>      </infProt>    </protCTe>', dt_alteracao = '2023-04-11 19:22:22.000' where sequencial = 830000062289
exec verificacte 830000062289
update lontano_gse.dbo.cte set xml_retorno = '<?xml version="1.0" encoding="utf-16"?>  <TProtCTe xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" versao="3.00">    <infProt xmlns="http://www.portalfiscal.inf.br/cte">      <tpAmb>1</tpAmb>      <verAplic>PR-v3_3_09</verAplic>      <chCTe>41230311455829000790570000001733191001733195</chCTe>      <dhRecbto>2023-03-22T14:25:40-03:00</dhRecbto>      <nProt>141230051680659</nProt>      <digVal>QUotk5rjAcDKIdLCrAj9Qq6eMF8=</digVal>      <cStat>100</cStat>      <xMotivo>Autorizado o uso do CT-e</xMotivo>    </infProt>  </TProtCTe>', dt_alteracao = '2023-03-22 13:26:12.197' where sequencial = 830000062289


select Status, * from  LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe =  1422139
select Status, * from  LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1422678
--update LONTANO_GSe.dbo.Eventos_MDFe set Status  = 0 WHERE Sequencial_MDFe =  1422139

--Evento de MDFe com problema:
select status, * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1422139
select status, * from lontano_gse.dbo.mdfe where sequencial = 1422139
select * from mdfeviagem_ordemembarque where seqviagem= 1312073
exec monitoramdfe 52046912
delete from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1422139
select status, * from lontano_gse.dbo.MDFe_LOG where sequencial = 1422139 and codlog = 51
--delete from lontano_gse.dbo.MDFe_LOG where sequencial = 1422139 and codlog = 51
EXEC GravaEncerramentoMDFe 52046912, 10001, 'CG','Encerramento Manual'





exec MonitoraMDFe 94056034

SELECT TOP(1000) * FROM LONTANO_GSe.dbo.tblLog_operacao ORDER BY DT_Hs DESC

exec MonitoraMDFe 50010582 --RAV6H49
exec MonitoraMDFe 50010561

--update LONTANO_GSe.dbo.MDFe set Status = 0 where Sequencial = 1423541

select CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 374853 and CodUF = 'MG'

exec MonitoraMDFe 94056034

select Status, * from  LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1422678

select status, * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1423128
select status, * from lontano_gse.dbo.mdfe where sequencial = 1423128
select * from mdfeviagem_ordemembarque where seqviagem= 1313018
exec monitoramdfe 41055828
select status, * from lontano_gse.dbo.MDFe_LOG where sequencial = 1422139 and codlog = 51
--delete from lontano_gse.dbo.MDFe_LOG where sequencial = 1422139 and codlog = 51
EXEC GravaEncerramentoMDFe 52046912, 10001, 'CG','Encerramento Manual'