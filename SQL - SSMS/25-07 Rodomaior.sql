use RODOMAIOR


select * from ConhecimentosTransporte WHERE CodOrdemEmbarque = 18013261
select * from ConhecimentosTransporte WHERE NumConhecto = 39390 and CodUF = 'mt'
--CodOrdemEmbarque = 51009669
--= 39385 and CodUF = 'mt'

exec VerificaCTe 510000007717
exec MonitoraMDFe 57004435
SELECT TOP(1000) * FROM Rodomaior_GSe.dbo.tblLog_operacao where NM_Metodo = 'CTeRecepcaoWebService' ORDER BY DT_Hs DESC

SELECT TOP(1000) * FROM Rodomaior_GSe.dbo.tblLog_operacao  ORDER BY DT_Hs DESC  --MT-39386

Select * from Rodomaior_GSe.dbo.cte where sequencial in (SELECT Sequencial FROM Rodomaior_GSe.dbo.ConsultaCTeNova 
WHERE (DataEmissao BETWEEN '07/25/2023 00:00:00' AND '07/25/2023 23:59:29') AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) ) order by DataCriacao desc


--delete from RODOMAIOR_GSe.dbo.CTe_LOG where id in  (6123463,6123462) and Sequencial = 510000007716
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 180000013115
delete from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 180000013115
UPDATE RODOMAIOR_GSe.dbo.CTe set Status = Status where Sequencial = 180000013115

exec VerificaCTe 180000013115


update Rodomaior_GSe.dbo.CTe_LOG set Status = 1, cStat = 100, xMotivo = 'Autorizado o uso da CT-e', 
nProt = 151230632651350, codLog = 22,  xmlEnvolvido ='
	<protCTe> 
		<infProt>
			<tpAmb>1</tpAmb>
			<verAplic>MT150423003</verAplic>
			<chCTe>51230711595217000299570000000393741000393746</chCTe>
			<dhRecbto>2023-07-25T10:27:16-04:00</dhRecbto>
			<nProt>151230632651350</nProt>
			<digVal>eec5ij9sFQ1I1rSd35A65BQ4Yic=</digVal>
			<cStat>100</cStat>
			<xMotivo>Autorizado o Uso do CT-e</xMotivo>
		</infProt>
		</protCTe>'  where sequencial = 180000013115 and ID = 6123273

update Rodomaior_GSe.dbo.cte set NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e', 
NO_Protocolo = 151230632651350, dt_alteracao = GETDATE(),Status = 1  where sequencial = 180000013115

update Rodomaior_GSe.dbo.cte set   XML_Retorno= '
		<protCTe> 
		<infProt>
			<tpAmb>1</tpAmb>
			<verAplic>MT150423003</verAplic>
			<chCTe>51230711595217000299570000000393741000393746</chCTe>
			<dhRecbto>2023-07-25T10:27:16-04:00</dhRecbto>
			<nProt>151230632651350</nProt>
			<digVal>eec5ij9sFQ1I1rSd35A65BQ4Yic=</digVal>
			<cStat>100</cStat>
			<xMotivo>Autorizado o Uso do CT-e</xMotivo>
		</infProt>
		</protCTe>'  where Sequencial = 180000013115