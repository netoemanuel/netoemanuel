-- CT-e com autorização Incompleta!

Select * from ConhecimentosTransporte where NumConhecto = 389533 and CodUF = 'MG'
----select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno,  * from Lontano_GSe.dbo.cte where Sequencial = 60000026643 -- EXEMPLO 

select * from ConhecimentosTransporte where NumConhecto = 587113 and CodUF = 'GO'

select * from Lontano_GSe.dbo.CTe_LOG where Sequencial =530000156975
select DataCriacao,Status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from Lontano_GSe.dbo.cte where sequencial in (710000027825)
select DataCriacao,Status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from Lontano_GSe.dbo.cte where sequencial in (710000027825)


Select * from Lontano_GSe.dbo.cte where sequencial in (SELECT Sequencial FROM Lontano_GSe.dbo.ConsultaCTeNova 
WHERE (DataEmissao BETWEEN '06/25/2023 00:00:00' AND '07/25/2023 23:59:29') AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) )

----UPDATE Lontano_GSe.dbo.cte set Status = 0 where Sequencial = 760000054608
exec verificacte 20000148166
--
select * from ConhecimentosTransporte where NumConhecto = 700266 and CodUF = 'MT'
--select dt_alteracao, no_protocolo, xml_enviado, xml_retorno, * from Lontano_GSe.dbo.CTe where sequencial = 680000018168
--
select * from Lontano_GSe.dbo.AverbacaoFrete where SequencialCTe = 120000024263
exec verificacte 190000037790
--update Lontano_GSe.dbo.CTe_LOG set Status = 1, cStat = 100, xMotivo = 'Autorizado o uso da CT-e', tpLog = 'RETORNO ENVIO LOTE',
--nProt = 151240695533886, codLog = 22, ID_Servidor = 14, xmlEnvolvido ='	<protCTe versao="4.00" xmlns="http://www.portalfiscal.inf.br/cte">
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
--	</protCTe>'  where sequencial = 190000037790 and ID = 22587782

--update Lontano_GSe.dbo.cte set NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e', 
--NO_Protocolo = 151240695533886, dt_alteracao = GETDATE(),Status = 1  where sequencial = 190000037790

--update Lontano_GSe.dbo.cte set   XML_Retorno= '<protCTe versao="4.00" xmlns="http://www.portalfiscal.inf.br/cte">
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


--delete from Lontano_GSe.dbo.CTe_LOG where sequencial = 280000179010 and ID > 22261628



--ALTER TABLE Lontano_GSe.dbo.CTe ALTER COLUMN NO_Protocolo varchar(16);

--ALTER TABLE Lontano_GSe.dbo.CTe_LOG ALTER COLUMN nProt varchar(16);