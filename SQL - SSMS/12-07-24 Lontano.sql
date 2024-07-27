select * from ConhecimentosTransporte where NumConhecto = 720421 and CodUF = 'mt'
select * from ConhecimentosTransporte where NumConhecto in ( 410183,410184 , 410185 , 410186) and CodUF = 'MG' AND SerieConhecto = '0'

exec VerificaCTe 100000082934
exec VerificaCTe 940000060985
exec VerificaCTe 940000060986
exec VerificaCTe 940000060987
exec VerificaCTe 940000060988

--exec Grava_CTe 940000060986
--update LONTANO_GSe.dbo.cte set status = 0 where Sequencial = 940000060986

SELECT TipoOS,* FROM OrdemServico where CodOS = 1514651
SELECT TipoOS,* FROM OrdemServico_log where CodOS = 1514651 order BY DataLog desc

--SELECT * FROM RequisicaoProdutos where CodRequisicao = 1514651 order BY 


SELECT * from ContasPagar where CodContasPagar = 1910139

SELECT * FROM 
ConhecimentosRelacaoFretes CRF
INNER JOIN ConhecimentosTransporte CTRC ON CRF.NumSeqConhecto = CTRC.Sequencial
WHERE (CRF.NumSeqConhecto = 890000031454) 
AND (CRF.CodTipoPagamento = 2) 
AND (ISNULL(CRF.ValorConferido, 0) <> 0) 
AND (ISNULL(CRF.IndAbonoQuebra, '') <> 'S') 
AND (dbo.CalculoQuebra(890000031454, 49585, 49710, 49420.43, 'Saída', 'ValorQuebra') > 0)

SELECT ISNULL(QuantidadeChegada, 0) AS QuantidadeChegada, ISNULL(QuantidadeSaida, 0) AS QuantidadeSaida, ISNULL(ValorNF, 0) AS ValorNF 
FROM ConhecimentosTransporte WHERE (Sequencial = 890000031454)

EXEC VerificaCTe 430000009582
EXEC VerificaCTe 760000058454
SELECT * FROM LONTANO_GSe.dbo.CTe where Sequencial = 760000058454

EXEC MonitoraMDFe 66032543
--UPDATE LONTANO_GSe.dbo.MDFe SET status =  0 where Sequencial = 1683253

select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto in (718371) and CodUF = 'MT' AND SerieConhecto = '0'  --38.00
--UPDATE ConhecimentosTransporte SET TarifaFreteMotorista = null where NumConhecto in (718371) and CodUF = 'MT' AND SerieConhecto = '0'


exec VerificaCTe 220000076968
exec VerificaCTe 220000076974
exec VerificaCTe 220000076975
exec VerificaCTe 940000060986
--update LONTANO_GSe.dbo.cte set status = 0 where Sequencial in (220000076974)
--DELETE  FROM LONTANO_GSe.dbo.CTe_LOG where ID > 22838443 and Sequencial = 940000060986


EXEC MonitoraMDFe 50013626

--DELETE FROM LONTANO_GSe.dbo.MDFe WHERE Sequencial = 1684950
--update LONTANO_GSe.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 1559905


select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto in (55803) and CodUF = 'MG' AND SerieConhecto = '2'  --38.00
select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto in (57305) and CodUF = 'MG' AND SerieConhecto = '2'  --38.00

SELECT * from ConhecimentosComplementados where 530000158698 IN (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
SELECT * from ConhecimentosSubstituidos where 530000158698 IN (SeqCTRCOriginal,SeqCTRCSubstituto)

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '2' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 57305                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto in (632729 ) and CodUF = 'GO' AND SerieConhecto = '0'
exec VerificaCTe 510000032180
EXEC MonitoraMDFe 51040528



	SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
	INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
	INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
	inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
	LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
	WHERE CTRC.SerieConhecto = '2' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 65235                                 
	ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from ConhecimentosTransporte where NumConhecto in (65235) and CodUF = 'GO' AND SerieConhecto = '2'  --
--UPDATE ConhecimentosTransporte SET NumConhecto = 632697  WHERE Sequencial = 30000160991  -- antigo
--UPDATE ConhecimentosTransporte SET NumConhecto = 65235  WHERE Sequencial = 30000160991  -- novo



select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto in (528856 ) and CodUF = 'MS' AND SerieConhecto = '0'
exec VerificaCTe 780000023669
--exec Grava_CTe 780000023669
EXEC MonitoraMDFe 51040528
