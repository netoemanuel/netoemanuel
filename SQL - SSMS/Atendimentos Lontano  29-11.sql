SELECT * FROM RateioDespesas WHERE (CodMovCaixa = 101814927) AND (CodFilial = 'ARN')
SELECT * FROM CentroCusto where CodFilial = 'ARN'
SELECT * from RateioDespesas order BY DataCriacao desc -- where CodMovCaixa = 101814927


SELECT CodTipoContasRec,* from ContasReceber where CodContasReceber = 22000031
--UPDATE ContasReceber SET CodTipoContasRec = 10 where CodContasReceber = 22000031

SELECT * FROM CentroCusto where CodFilial = 'ARN'


EXEC MonitoraMDFe 98034659
EXEC MonitoraMDFe 98034659
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1759303 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1759303
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '931240035736763', nProt = '931240035736763' where Sequencial = 1759303 and ID = 25496046 
--coloca cstat = 204 e status do mdfe = 2 TABELA MDFe_LOG
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET Status = 2, cstat = 204 where Sequencial = 1759303 and ID = 25496046 


select * from ConhecimentosTransporte where NumConhecto = 739999 and CodUF = 'mt'
EXEC MonitoraMDFe 22092953
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1763210 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1763210



select * from ConhecimentosTransporte where NumConhecto = 540367 and CodUF = 'mt'
EXEC MonitoraMDFe 17033338
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1763238 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1763238


SELECT NFSe_Log.NumeroNFe, NFSe_Log.DataEmissaoRPS, NFSe_Log.Status FROM  LONTANO.dbo.NFSe_ConhecimentosTransporte  
LEFT JOIN  Lontano_GSe.dbo.NFSe_Log ON NFSe_Log.CodGS = NFSe_ConhecimentosTransporte.Sequencial AND NFSe_Log.codLog = 21 AND NFSe_Log.Status = 1 
WHERE (NFSe_ConhecimentosTransporte.Sequencial = 530000172665 )

SELECT NFSe.CodGS, NFSe.Status, NFSe.ID, NFSe.ID_Lote, NFSe.NumeroRPS, Hist.NumeroNFe, NFSe.DataCriacao AS Criação,  (SELECT MAX(DataLog) FROM Lontano_GSe.dbo.NFSe_Log WHERE CodLog = 0 AND ID_NFSe = NFSe.ID)                  AS Gravação,  (SELECT MAX(DataLog) FROM Lontano_GSe.dbo.NFSe_Log WHERE CodLog = 10 AND ID_NFSe = NFSe.ID)                 AS Confirmação, (SELECT MAX(DataLog) FROM Lontano_GSe.dbo.NFSe_Log WHERE CodLog = 21 AND ID_NFSe = NFSe.ID AND Status = 1)  AS Autorização,Lontano_GSe.dbo.udf_diftempo(NFSe.DataCriacao,case when NFSe.Status <> 1 then getdate() else (SELECT MAX(DataLog) FROM Lontano_GSe.dbo.NFSe_Log WHERE CodLog = 21 AND ID_NFSe = NFSe.ID AND Status = 1) end, '') AS Tempo_Total, (SELECT COUNT(ID) FROM Lontano_GSe.dbo.NFSe_Log WHERE CodLog = 20 AND ID_NFSe = NFSe.ID)                 AS Qtde_Consultas, CASE NFSe.Status WHEN 7 THEN 'Por favor aguarde. NFSe em processamento...' WHEN 0 THEN 'Por favor aguarde. Enviando a NFSe...' WHEN 2 THEN (SELECT CASE WHEN PATINDEX('%<Descricao>%',CONVER
T(VARCHAR(8000),xmlEnvolvido)) > 0 THEN CASE WHEN PATINDEX('%<Alerta>%',CONVERT(VARCHAR(8000),xmlEnvolvido)) > 0 THEN 'Alerta: ' ELSE 'Rejeição: ' END + SUBSTRING(replace(cast(xmlEnvolvido as varchar(8000)),Char(10),' '), PATINDEX('%<Descricao>%',CONVERT(VARCHAR(8000),xmlEnvolvido))+11,(PATINDEX('%</Descricao>%',CONVERT(VARCHAR(8000),xmlEnvolvido))-(PATINDEX('%<Descricao>%',CONVERT(VARCHAR(8000),xmlEnvolvido))+11))) END FROM Lontano_GSe.dbo.Lote_NFSe_log WHERE ID_Lote = NFSe.ID_Lote AND CodLog = 21 AND ID = (SELECT MAX(ID) FROM Lontano_GSe.dbo.Lote_NFSe_Log WHERE ID_Lote = NFSe.ID_Lote AND CodLog = 21)) Else '' END AS Erro FROM Lontano_GSe.dbo.NFSe_DSF NFSe LEFT OUTER JOIN Lontano_GSe.dbo.NFSe_Log Hist ON Hist.ID_NFSe = NFSe.ID AND Hist.CodLog = 21 AND Hist.ID = (SELECT MAX(ID) FROM Lontano_GSe.dbo.NFSe_Log WHERE ID_NFSe = Hist.ID_NFSe AND CodLog = 21) Where NFSe.CodGS = 530000172665