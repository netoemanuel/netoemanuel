--Lontano_GSe.dbo.MDFe MDFe 
--INNER JOIN MDFeViagem_OrdemEmbarque OE ON OE.SeqViagem = MDFe.CodManifestoCarga
--WHERE OE.NumOrdemEmbarque = 6029519
--AND Status IN (1,9)

--DECLARE @NumOrdemEmbarque AS DECIMAL SET @NumOrdemEmbarque = 6029519 ;WITH LogMDFe (Tipo, Status, dhLog, Mensagem, ID, ChaveMDFe) AS ( SELECT TOP (1) CASE WHEN L.codLog IN (40, 41, 42) THEN 'Cancelamento' ELSE 'Encerramento' END AS 'Tipo', EV.Status, L.dhLog, CASE WHEN MDFe.Status = 2 THEN l.xMotivo ELSE NULL END AS 'Mensagem', L.ID, MDFe.Id FROM Lontano_GSe.dbo.MDFe MDFe INNER JOIN MDFeViagem_OrdemEmbarque OE ON OE.SeqViagem = MDFe.CodManifestoCarga INNER JOIN Lontano_GSe.dbo.Eventos_MDFe EV ON EV.Sequencial_MDFe = MDFe.Sequencial INNER JOIN Lontano_GSe.DBO.MDFe_LOG L ON  L.CodManifestoCarga = MDFe.CodManifestoCarga WHERE  OE.NumOrdemEmbarque = @NumOrdemEmbarque AND L.codLog IN (40, 41, 42, 50, 51, 52) ORDER BY L.ID DESC UNION SELECT TOP (1) 'Autorização' AS 'Tipo', MDFe.Status, L.dhLog, CASE WHEN MDFe.Status = 2 THEN l.xMotivo ELSE NULL END AS 'Mensagem', L.ID, MDFe.Id FROM Lontano_GSe.dbo.MDFe MDFe INNER JOIN MDFeViagem_OrdemEmbarque OE ON OE.SeqViagem = MDFe.CodManifestoCarga INNER JOIN Lontano_GSe.DBO.M
--DFe_LOG L ON  L.CodManifestoCarga = MDFe.CodManifestoCarga WHERE  OE.NumOrdemEmbarque = @NumOrdemEmbarque AND L.codLog IN (20, 21, 22, 30, 31, 32) ORDER BY L.ID DESC UNION SELECT TOP (1) 'Processando' AS 'Tipo', MDFe.Status, L.dhLog, CASE WHEN MDFe.Status = 2 THEN l.xMotivo ELSE NULL END AS 'Mensagem', L.ID, MDFe.Id FROM Lontano_GSe.dbo.MDFe MDFe INNER JOIN MDFeViagem_OrdemEmbarque OE ON OE.SeqViagem = MDFe.CodManifestoCarga INNER JOIN Lontano_GSe.DBO.MDFe_LOG L ON  L.CodManifestoCarga = MDFe.CodManifestoCarga WHERE OE.NumOrdemEmbarque = @NumOrdemEmbarque AND L.codLog IN (10, 11) ORDER BY L.ID DESC ) SELECT TOP (1) *, CASE WHEN Status = 1 THEN 'Autorizado em ' ELSE CASE WHEN Status = 2 THEN 'Rejeitado em ' ELSE CASE WHEN Status = 5 THEN 'Cancelado em ' ELSE CASE WHEN Status = 9 THEN 'Encerrado em ' END END END END AS Label FROM LogMDFe ORDER BY ID DESC

SELECT COUNT(*) AS Registros FROM Lontano_GSe.dbo.MDFe MDFe INNER JOIN MDFeViagem_OrdemEmbarque OE ON OE.SeqViagem = MDFe.CodManifestoCarga WHERE OE.NumOrdemEmbarque = 6029519 AND Status = 1

SELECT * FROM Lontano_GSe.dbo.MDFe MDFe INNER JOIN MDFeViagem_OrdemEmbarque OE ON OE.SeqViagem = MDFe.CodManifestoCarga WHERE OE.NumOrdemEmbarque = 6029519 --AND Status IN (1,9)

exec MonitoraMDFe 6029519



SELECT CodRota,CodPedidoFrete,CodVeiculo, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 110482  and CodUF = 'SP' 
SELECT CodRota,CodPedidoFrete,CodVeiculo, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 110514   and CodUF = 'SP'

select UFFim,  * from LONTANO_GSe.dbo.MDFe where Sequencial = 1356226
select * from MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 6029519
select * from OrdemEmbarque where NumOrdemEmbarque = 6029519
select UF_Descarregamento, * from LONTANO_GSe.dbo.MDFe_Damdfe where Sequencial =1356226	
select * from LONTANO_GSe.dbo.Descarga_MDFe where Sequencial = 1356226 


SELECT MAX(MDFe.Sequencial), ROW_NUMBER() OVER (ORDER BY CTe.cMunFim), CTe.cMunFim, LONTANO_GSe.DBO.TiraCaracteres(CidF.NomeMunicipioIBGE),
	--	  CodFilialCriacao		    CodUsuarioCriacao		   DataCriacao CodFilialAlteracao CodUsuarioAlteracao DataAlteracao 
			MAX(MV.CodFilialCriacao), MAX(MV.CodUsuarioCriacao), GETDATE(),  NULL,			  NULL,				  NULL
	FROM MDFeViagem MV
	INNER JOIN LONTANO_GSe.dbo.MDFe MDFe ON MDFe.CodManifestoCarga = MV.Sequencial --AND MDFe.Status = 0
	--INNER JOIN LONTANO_GSe.dbo.infCTe_MDFe infcte ON infcte.Sequencial = MDFe.Sequencial
	INNER JOIN MDFeViagem_OrdemEmbarque OE ON OE.SeqViagem = MV.Sequencial

	INNER JOIN ConhecimentosTransporte CTRC ON CTRC.CodOrdemEmbarque = OE.NumOrdemEmbarque AND CTRC.SituacaoConhecto <> 'Cancelado' AND CTRC.SituacaoConhecto <> 'Substituído' AND (CTRC.TipoConhecimento <> 'Substituto' OR CTRC.CodOrdemMDFE IS NOT NULL)  --AND CTRC.TipoConhecimento = 'Normal'
										and ctrc.dataemissao >= '2019-01-17'	--LNC-19/01/2019 (provisório devido crash do banco de dados)

	INNER JOIN LONTANO_GSe.dbo.CTe CTe ON CTe.Sequencial = CTRC.Sequencial AND CTe.Status = 1 AND (CTe.tpCTe = 0 OR CTRC.CodOrdemMDFE = OE.NumOrdemEmbarque) --> comentar essa última condição para gerar com CTEs de Complemento
	INNER JOIN LONTANO_GSe.dbo.Cidades_e CidF ON CidF.CodMunicipioIBGE = CTe.cMunFim
	WHERE MV.Sequencial = 1250325
	GROUP BY CTe.cMunFim, CidF.NomeMunicipioIBGE
