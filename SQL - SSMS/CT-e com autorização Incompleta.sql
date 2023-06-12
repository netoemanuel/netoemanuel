-- CT-e com autorização Incompleta!

select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno, NO_Protocolo, * from LONTANO_GSe.dbo.cte where Sequencial = 170000020581--  
select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno,  * from LONTANO_GSe.dbo.cte where Sequencial = 60000026643 -- EXEMPLO 
select  * from LONTANO_GSe.dbo.cte_log where Sequencial =  310000089019 order by dhLog desc 
exec VerificaCTe 170000020581
--*** UPDATE MAIS COMUM ***--

--update LONTANO_GSe.dbo.cte set NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e', NO_Protocolo = 170000020581 where Sequencial =  170000020581

----select status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from lontano_gse.dbo.cte where sequencial in (310000089019,640000052365)
--exec verificacte 310000089019
--update lontano_gse.dbo.cte set xml_retorno = '<protCTe versao="3.00">      <infProt Id="CTe352230015172015">        <tpAmb>1</tpAmb>        <verAplic>RS20230131113942</verAplic>        <chCTe>52230311455829000367570000005684671005684674</chCTe>        <dhRecbto>2023-03-17T18:28:29-03:00</dhRecbto>        <nProt>352230015172015</nProt>        <digVal>3AaWmpDLJdUdO8n2TPW+b3tt+UY=</digVal>        <cStat>100</cStat>        <xMotivo>Autorizado o uso do CT-e</xMotivo>      </infProt>    </protCTe>', dt_alteracao = '2023-03-17 18:06:14.580' where sequencial = 310000089019
--exec verificacte 640000052365
--update lontano_gse.dbo.cte set xml_retorno = '<?xml version="1.0" encoding="utf-16"?>  <TProtCTe xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" versao="3.00">    <infProt xmlns="http://www.portalfiscal.inf.br/cte">      <tpAmb>1</tpAmb>      <verAplic>PR-v3_3_09</verAplic>      <chCTe>41230311455829000790570000001733191001733195</chCTe>      <dhRecbto>2023-03-22T14:25:40-03:00</dhRecbto>      <nProt>141230051680659</nProt>      <digVal>QUotk5rjAcDKIdLCrAj9Qq6eMF8=</digVal>      <cStat>100</cStat>      <xMotivo>Autorizado o uso do CT-e</xMotivo>    </infProt>  </TProtCTe>', dt_alteracao = '2023-03-22 13:26:12.197' where sequencial = 170000020581

select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno, * from LONTANO_GSe.dbo.cte where Sequencial = 60000026643 -- EXEMPLO 

		--UPDATE LONTANO_GSe.dbo.cte set XML_Retorno = '<eventoCTe versao="3.00" xmlns="http://www.portalfiscal.inf.br/cte"><infProt><tpAmb>1</tpAmb><verAplic>1.04</verAplic><chCTe>' + cte.id + '</chCTe><dhRecbto>' + (CONVERT(VARCHAR(10),CTe.DT_Alteracao,120)+'T'+REPLACE(CONVERT(VARCHAR(8),CTe.DT_Alteracao,8),' ','T')) + '</dhRecbto><nProt>' + cte.NO_Protocolo + '</nProt><digVal>HDNsWvY8Cy1PhRVoeLb8d9U7MQA=</digVal><cStat>100</cStat><xMotivo>Autorizado o uso da CT-e</xMotivo></infProt></protCTe>' 
		--FROM CTe
		--WHERE convert(varchar(8),datacriacao,112) >= convert(varchar(8),getdate(),112) and Status in (1,5) and XML_Retorno IS NULL



--Procurar campo pelo nome em todo o banco:
SELECT T.name AS Tabela, C.name AS Coluna
FROM sys.sysobjects AS T (NOLOCK) 
INNER JOIN sys.all_columns AS C (NOLOCK) ON T.id = C.object_id AND T.XTYPE = 'U' 
WHERE C.NAME LIKE '%XML_%' 
ORDER BY T.name ASC


--select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1404571
--select * from LONTANO_GSe.dbo.MDFe where Sequencial = 1404571
--select * from MDFeViagem_OrdemEmbarque where SeqViagem = 1295417
--exec MonitoramDFe 26030266



select * from ConhecimentosTransporte where NumConhecto = 173319  and CodUF = 'PR'

exec VerificaCTe 640000052365
select status,* from LONTANO_GSe.dbo.CTe where Sequencial = 640000052365
--update LONTANO_GSe.dbo.CTe set Status = 1  where Sequencial = 640000052365
--delete from LONTANO_GSe.dbo.CTe_log where ID in ( 20282464,
--20282463,
--20282462,
--20282051,
--20282050,
--20282049,
--20282024,
--20282023,
--20281781,
--20281780,
--20281779,
--20281772,
--20281769,
--20281753,
--20281752,
--20281751)