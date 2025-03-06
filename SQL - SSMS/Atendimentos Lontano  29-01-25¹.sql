SELECT * from ConhecimentosTransporte where NumConhecto = 744990 and CodUF = 'MT'
EXEC VerificaCTe 220000083576
--EXEC Grava_CTe 220000083576


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 543659                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete	= 1741254


select * from MovimentacaoBancaria where CodMovBancaria = 1634884  --657.59
--UPDATE MovimentacaoBancaria set ValorMovimento = 526.07 where CodMovBancaria = 1634884
SELECT * from ContasPagar where CodContasPagar = 10012140
--UPDATE ContasPagar SET ValorDocumento = 526.07 where CodContasPagar = 10012140  -- 657.59

SELECT * FROM ContasPagas where CodContasPagar = 10012140
--UPDATE ContasPagas SET ValorTotalPago = 526.07  where CodContasPagar = 10012140  -- 657.59

SELECT SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 745022 and CodUF = 'MT'
EXEC VerificaCTe 47000003721
--UPDATE ConhecimentosTransporte SET SituacaoConhecto = 'Cancelado' where Sequencial = 47000003721

SELECT * from ConhecimentosTransporte where NumConhecto = 745076 and CodUF = 'MT'
EXEC VerificaCTe 90000035843
--UPDATE LONTANO_GSe.dbo.cte SET Status = 0 where Sequencial = 90000035843
--EXEC Grava_CTe 90000035843