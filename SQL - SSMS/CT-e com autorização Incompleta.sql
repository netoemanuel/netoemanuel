-- CT-e com autorização Incompleta!

Select * from ConhecimentosTransporte where NumConhecto = 489411 and CodUF = 'MS'
----select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno,  * from Rodomaior_GSe.dbo.cte where Sequencial = 60000026643 -- EXEMPLO 

select * from ConhecimentosTransporte where NumConhecto = 587113 and CodUF = 'GO'

select * from Rodomaior_GSe.dbo.CTe_LOG where Sequencial =680000018168
select DataCriacao,Status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from Rodomaior_GSe.dbo.cte where sequencial in (680000018168)
select DataCriacao,Status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from Rodomaior_GSe.dbo.cte where sequencial in (680000018168)


Select * from Rodomaior_GSe.dbo.cte where sequencial in (SELECT Sequencial FROM Rodomaior_GSe.dbo.ConsultaCTeNova 
WHERE (DataEmissao BETWEEN '06/25/2023 00:00:00' AND '07/25/2023 23:59:29') AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) )

--UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 760000054608
exec verificacte 680000018168
--
select * from ConhecimentosTransporte where NumConhecto = 489411
--select dt_alteracao, no_protocolo, xml_enviado, xml_retorno, * from RODOMAIOR_GSe.dbo.CTe where sequencial = 680000018168
--
--760000054840
--800000027986



update Rodomaior_GSe.dbo.CTe_LOG set Status = 1, cStat = 100, xMotivo = 'Autorizado o uso da CT-e', 
nProt = 352230045346666, codLog = 22, ID_Servidor = 14, xmlEnvolvido ='	<protCTe versao="4.00" xmlns="http://www.portalfiscal.inf.br/cte">
		<infProt Id="CTe352230045346666">
			<tpAmb>1</tpAmb>
			<verAplic>RS20230731144235</verAplic>
			<chCTe>52230811595217000531570000000992701000992700</chCTe>
			<dhRecbto>2023-08-01T15:48:25-03:00</dhRecbto>
			<nProt>352230045346666</nProt>
			<digVal>wx1r1VciFJp73pDPG/dwZP+A2TI=</digVal>
			<cStat>100</cStat>
			<xMotivo>Autorizado o uso do CT-e</xMotivo>
		</infProt>
	</protCTe>'  where sequencial = 680000018168 and ID = 6132773

update Rodomaior_GSe.dbo.cte set NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e', 
NO_Protocolo = 352230045346666, dt_alteracao = '2023-08-01 14:48:25.617',Status = 1  where sequencial = 680000018168

update Rodomaior_GSe.dbo.cte set   XML_Retorno= '	<protCTe versao="4.00" xmlns="http://www.portalfiscal.inf.br/cte">
		<infProt Id="CTe352230045346666">
			<tpAmb>1</tpAmb>
			<verAplic>RS20230731144235</verAplic>
			<chCTe>52230811595217000531570000000992701000992700</chCTe>
			<dhRecbto>2023-08-01T15:48:25-03:00</dhRecbto>
			<nProt>352230045346666</nProt>
			<digVal>wx1r1VciFJp73pDPG/dwZP+A2TI=</digVal>
			<cStat>100</cStat>
			<xMotivo>Autorizado o uso do CT-e</xMotivo>
		</infProt>
	</protCTe>' where Sequencial = 680000018168




