-- CT-e com autorização Incompleta!

Select * from ConhecimentosTransporte where NumConhecto = 389533 and CodUF = 'MG'
----select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno,  * from LONTANO_GSe.dbo.cte where Sequencial = 60000026643 -- EXEMPLO 

select * from ConhecimentosTransporte where NumConhecto = 587113 and CodUF = 'GO'

select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial =530000156975
select DataCriacao,Status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from LONTANO_GSe.dbo.cte where sequencial in (20000157184)
select DataCriacao,Status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from LONTANO_GSe.dbo.cte where sequencial in (440000019598)


Select * from LONTANO_GSe.dbo.cte where sequencial in (SELECT Sequencial FROM LONTANO_GSe.dbo.ConsultaCTeNova 
WHERE (DataEmissao BETWEEN '06/25/2023 00:00:00' AND '07/25/2023 23:59:29') AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) )

----UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 760000054608
exec verificacte 20000148166
--
select * from ConhecimentosTransporte where NumConhecto = 700266 and CodUF = 'MT'
--select dt_alteracao, no_protocolo, xml_enviado, xml_retorno, * from LONTANO_GSe.dbo.CTe where sequencial = 680000018168
--
select * from LONTANO_GSe.dbo.AverbacaoFrete where SequencialCTe = 120000024263

-- Autorização
EXEC VerificaCTe 90000035843
--update LONTANO_GSe.dbo.CTe_LOG set Status = 1, cStat = 100, xMotivo = 'Autorizado o uso da CT-e', tpLog = 'RETORNO ENVIO LOTE',
--nProt = 151250768144638, codLog = 22, ID_Servidor = 14, xmlEnvolvido ='	<protCTe versao="4.00" xmlns="http://www.portalfiscal.inf.br/cte">
--<infProt>
--<tpAmb>1</tpAmb>
--<verAplic>MT150423003</verAplic>
--<chCTe>51250111455829000286570000007450761007450768</chCTe>
--<dhRecbto>2025-01-29T16:27:51-04:00</dhRecbto>
--<nProt>151250768144638</nProt>
--<digVal>+mfETNjHuk3a3nMZQ1xea0qXiWA=</digVal>
--<cStat>100</cStat>
--<xMotivo>Autorizado o Uso do CT-e</xMotivo>
--</infProt>
--	</protCTe>'  where sequencial = 90000035843 and ID = 23187263

--update LONTANO_GSe.dbo.cte set NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e', 
--NO_Protocolo = 151250768144638, dt_alteracao = GETDATE(),Status = 1  where sequencial = 90000035843

-- Cancelamento

 exec VerificaCTe 20000157184
--update LONTANO_GSe.dbo.CTe_LOG set Status = 5, cStat = 135, xMotivo = 'Evento registrado e vinculado a CTe', tpLog = 'RETORNO ENVIO EVENTO  CANCELAMENTO',
--nProt = 151240741471136, codLog = 32, ID_Servidor = 14, 
--xmlEnvolvido =
--'	<?xml version="1.0" encoding="utf-16"?>
--<retEventoCTe xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" versao="4.00" xmlns="http://www.portalfiscal.inf.br/cte">
--	<infEvento Id="ID131242631443564">
--		<tpAmb>1</tpAmb>
--		<verAplic>W-6.0.4</verAplic>
--		<cOrgao>31</cOrgao>
--		<cStat>135</cStat>
--		<xMotivo>Evento registrado e vinculado a CTe</xMotivo>
--		<chCTe>51241011455829000286570000007338951007338953</chCTe>
--		<tpEvento>110111</tpEvento>
--		<nSeqEvento>1</nSeqEvento>
--		<dhRegEvento>2024-10-07T17:29:09-03:00</dhRegEvento>
--		<nProt>151240741471136</nProt>
--	</infEvento>
--</retEventoCTe>>'  where sequencial = 20000157184 and ID = 23027794

--update LONTANO_GSe.dbo.cte set NO_Retorno = 135, DS_Retorno = 'Evento registrado e vinculado a CTe', 
--NO_Protocolo = 151240741471136, dt_alteracao = '2024-10-07 17:29:48.530',Status = 5  where sequencial = 20000157184




--update LONTANO_GSe.dbo.cte set   XML_Retorno= '<protCTe versao="4.00" xmlns="http://www.portalfiscal.inf.br/cte">
--		<infProt>
--			<tpAmb>1</tpAmb>
--			<verAplic>MT150423003</verAplic>
--			<chCTe>51240311455829000286570000007058431007058438</chCTe>
--			<dhRecbto>2024-03-14T12:37:55-04:00</dhRecbto>
--			<nProt>151240695533886</nProt>
--			<digVal>ttJPTvS1xhtrH2+hzjj6BR+ox48=</digVal>
--			<cStat>100</cStat>
--			<xMotivo>Autorizado o Uso do CT-e</xMotivo>
--		</infProt>
--		</protCTe>', NO_Protocolo = 151240695533886 where Sequencial = 190000037790


--delete from LONTANO_GSe.dbo.CTe_LOG where sequencial = 280000179010 and ID > 22261628



--ALTER TABLE LONTANO_GSe.dbo.CTe ALTER COLUMN NO_Protocolo varchar(16);

--ALTER TABLE LONTANO_GSe.dbo.CTe_LOG ALTER COLUMN nProt varchar(16);