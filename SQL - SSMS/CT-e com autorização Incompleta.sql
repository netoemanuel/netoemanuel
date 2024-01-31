-- CT-e com autorização Incompleta!

Select * from ConhecimentosTransporte where NumConhecto = 389533 and CodUF = 'MG'
----select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno,  * from Lontano_GSe.dbo.cte where Sequencial = 60000026643 -- EXEMPLO 

select * from ConhecimentosTransporte where NumConhecto = 587113 and CodUF = 'GO'

select * from Lontano_GSe.dbo.CTe_LOG where Sequencial =530000156975
select DataCriacao,Status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from Lontano_GSe.dbo.cte where sequencial in (570000002518)
select DataCriacao,Status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from Lontano_GSe.dbo.cte where sequencial in (680000018168)


Select * from Lontano_GSe.dbo.cte where sequencial in (SELECT Sequencial FROM Lontano_GSe.dbo.ConsultaCTeNova 
WHERE (DataEmissao BETWEEN '06/25/2023 00:00:00' AND '07/25/2023 23:59:29') AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) )

----UPDATE Lontano_GSe.dbo.cte set Status = 0 where Sequencial = 760000054608
exec verificacte 20000148166
--
select * from ConhecimentosTransporte where NumConhecto = 700266 and CodUF = 'MT'
--select dt_alteracao, no_protocolo, xml_enviado, xml_retorno, * from Lontano_GSe.dbo.CTe where sequencial = 680000018168
--
select * from Lontano_GSe.dbo.AverbacaoFrete where SequencialCTe = 120000024263
exec verificacte 890000030451
--update Lontano_GSe.dbo.CTe_LOG set Status = 1, cStat = 100, xMotivo = 'Autorizado o uso da CT-e', tpLog = 'RETORNO ENVIO LOTE',
--nProt = 315240000062155, codLog = 22, ID_Servidor = 14, xmlEnvolvido ='	<protCTe versao="4.00" xmlns="http://www.portalfiscal.inf.br/cte">
--		<infProt Id="CTe315240000062155">
--			<tpAmb>1</tpAmb>
--			<verAplic>RS20231227135908</verAplic>
--			<chCTe>15240111455829002220570000000167411000167418</chCTe>
--			<dhRecbto>2024-01-03T08:18:00-03:00</dhRecbto>
--			<nProt>315240000062155</nProt>
--			<digVal>YQV6x3N/jp0bzl3hUzKFglJhmX8=</digVal>
--			<cStat>100</cStat>
--			<xMotivo>Autorizado o uso do CT-e</xMotivo>
--		</infProt>
--	</protCTe>'  where sequencial = 890000030451 and ID = 22375996

--update Lontano_GSe.dbo.cte set NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e', 
--NO_Protocolo = 315240000062155, dt_alteracao = GETDATE(),Status = 1  where sequencial = 890000030451

--update Lontano_GSe.dbo.cte set   XML_Retorno= '<protCTe versao="4.00" xmlns="http://www.portalfiscal.inf.br/cte">
--		<infProt Id="CTe315240000062155">
--			<tpAmb>1</tpAmb>
--			<verAplic>RS20231227135908</verAplic>
--			<chCTe>15240111455829002220570000000167411000167418</chCTe>
--			<dhRecbto>2024-01-03T08:18:00-03:00</dhRecbto>
--			<nProt>315240000062155</nProt>
--			<digVal>YQV6x3N/jp0bzl3hUzKFglJhmX8=</digVal>
--			<cStat>100</cStat>
--			<xMotivo>Autorizado o uso do CT-e</xMotivo>
--		</infProt>
--		</protCTe>', NO_Protocolo = 315240000062155 where Sequencial = 890000030451


--delete from Lontano_GSe.dbo.CTe_LOG where sequencial = 100000080598 and ID > 22261628



--ALTER TABLE Lontano_GSe.dbo.CTe ALTER COLUMN NO_Protocolo varchar(16);

--ALTER TABLE Lontano_GSe.dbo.CTe_LOG ALTER COLUMN nProt varchar(16);