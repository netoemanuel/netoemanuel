SELECT * from ConhecimentosTransporte where NumConhecto = 201778 AND CodUF = 'SP'

SELECT * from ConhecimentosRelacaoFretes where NumSeqConhecto = 50000026494
SELECT * from ConhecimentosRelacaoFretes_Log where NumSeqConhecto = 50000026494
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete	=1071518

--SELECT 
--    CT.ValorAdiantamento, CT.NumConhecto, CT.CodUF, *
--FROM 
--    ConhecimentosRelacaoFretes CRF
--JOIN 
--    ConhecimentosTransporte CT ON CRF.NumSeqConhecto = CT.Sequencial
--JOIN 
--    OrdemEmbarque OE ON OE.NumOrdemEmbarque = CT.CodOrdemEmbarque

--WHERE  
--    OE.CIOT = 'REPOM' 
--   AND CRF.CodTipoPagamento IN ( 2) 
--    AND ValorAdiantamento > 0 
--    AND DataEmissao > '2024-02-20 00:00:00'
--    AND CT.Sequencial NOT IN (
--        SELECT NumSeqConhecto 
--        FROM ConhecimentosRelacaoFretes 
--        WHERE CodTipoPagamento = 1
--    )
--ORDER BY 
--    crf.DataCriacao


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 64589                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


