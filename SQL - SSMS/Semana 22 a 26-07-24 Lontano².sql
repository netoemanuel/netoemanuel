exec MonitoraMDFe 22087267
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1688608
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nProt = 951240009684616, nRec = 951240009684616 WHERE Sequencial = 1688608


SELECT * from ConhecimentosTransporte where NumConhecto = 410839 and CodUF = 'MG'
EXEC VerificaCTe 130000006184
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial = 130000006184

exec MonitoraMDFe 28186513
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1688638
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nProt = 952240006803378, nRec = 952240006803378 WHERE Sequencial = 1688638

SELECT * from ConhecimentosTransporte where CodOrdemEmbarque = 87009445
EXEC MonitoraMDFe 87009445
EXEC VerificaCTe 870000008744
--EXEC Grava_CTe 870000008744

select * from RegistroAcessoProgramas where CodPrograma = 'frmRelCPagasPorPeriodo' order BY DataAcesso desc
--ALTER TABLE Temp_RelCAPPeriodo 
--   ADD  IndDocumento VARCHAR(10)  null


SELECT nfse.NumeroNfse, ct.NumConhecto FROM LONTANO.dbo.ConhecimentosTransporte ct INNER JOIN LONTANO_GSe.dbo.NFSe nfse ON nfse.Sequencial = ct.Sequencial Where ct.Sequencial = 30000161191


SELECT * from ConhecimentosTransporte where NumConhecto IN (722250,722252 ) and CodUF = 'MT'

EXEC VerificaCTe 500000006823
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial IN (500000006823,220000077336)
EXEC VerificaCTe 220000077336
--delete from LONTANO_GSe.dbo.CTe_LOG WHERE ID  = 22864504 and Sequencial = 220000077336
--delete from LONTANO_GSe.dbo.CTe_LOG WHERE ID  = 22864509 and Sequencial = 500000006823

SELECT TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto IN (722172) and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 193.62 where NumConhecto IN (722172) and CodUF = 'MT' and SerieConhecto = '0'

SELECT * from ConhecimentosTransporte where NumConhecto = 208293 and CodUF = 'PR'



SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 407438                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT CIOT, * from OrdemEmbarque where NumOrdemEmbarque = 53106157 -- REPOM
--UPDATE OrdemEmbarque set CIOT = 'EFRETE PAGO' where NumOrdemEmbarque = 53106157

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 715889                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT CIOT,* FROM ConhecimentosTransporte CTRC WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 715889     -- 000000000000/0000
--UPDATE ConhecimentosTransporte  set CIOT = null WHERE SerieConhecto = '0' AND CodUF = 'MT' AND Numconhecto = 715889


SELECT TOP (1) CodMotorista FROM Motoristas_Veiculos WHERE CodVeiculo = 1649 ORDER BY DataCriacao DESC

SELECT TOP (1) mv.CodMotorista, M.NomeMotorista FROM Motoristas_Veiculos MV  join Motoristas M ON M.CodMotorista = MV.CodMotorista  WHERE CodVeiculo = 1649 ORDER BY mv.DataCriacao DESC


SELECT TOP (1) MV.CodMotorista, M.NomeMotorista FROM Motoristas_Veiculos MV  join Motoristas M ON M.CodMotorista = MV.CodMotorista  WHERE CodVeiculo = 1649 ORDER BY mv.DataCriacao DESC, frmPrincipal.db, adOpenForwardOnly, adLockReadOnly


SELECT CIOT, * from OrdemEmbarque where NumOrdemEmbarque = 22087561
SELECT CIOT,* FROM ConhecimentosTransporte CTRC WHERE CodOrdemEmbarque = 22087561



SELECT CIOT,* FROM ConhecimentosTransporte CTRC WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 723323  

exec VerificaCTe 510000032325
--exec Grava_CTe 510000032325


EXEC MonitoraMDFe 52052167 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1695102



--INSERT INTO ConhecimentosSubstituidos
--SELECT Velho.Sequencial, Novo.Sequencial, Nota.Sequencial, 14102, 'CG', '07/26/2024 15:49:37', NULL, NULL, NULL
--FROM ConhecimentosTransporte Velho
--JOIN ConhecimentosTransporte Novo ON Novo.CodUF = 'MG' 
--AND Novo.NumConhecto = 411235 and novo.SerieConhecto = '0' 
--JOIN SubstituicaoConhecimentosTransporte Nota ON Nota.Sequencial = 1007020 
--WHERE (Velho.SerieConhecto = '0') AND (Velho.CodUF = 'MG') AND (Velho.NumConhecto = 411094)

SELECT * from ConhecimentosSubstituidos where 350000006122 IN (SeqCTRCOriginal,SeqCTRCSubstituto)
--DELETE from ConhecimentosSubstituidos where 350000006122 IN (SeqCTRCOriginal,SeqCTRCSubstituto)

--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--350000006122	350000006139	0	13903	TRC	2024-07-23 10:21:43.000	NULL	NULL	NULL

SELECT * from Usuarios where CodUsuario = 13903

exec VerificaCTe 350000006122 -- MG-411094
exec VerificaCTe 350000006139
