SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.NumConhecto = 421360 and   CTRC.CodUF = 'MG' and CTRC.SerieConhecto = '0'                         
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


select * from RelacaoFretes where CodRelacaoFrete = 6006913  --40028.79
--UPDATE RelacaoFretes SET TotalRelacao = 40670.42 where CodRelacaoFrete = 6006913

SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1723405 AND NumSeq = 8
--UPDATE CartaFrete_Ocorrencia  SET  tipoOcorrencia  = 'CANCELADO'WHERE IdCartaFrete = 1723405 AND NumSeq = 11


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.NumConhecto = 420711 and   CTRC.CodUF = 'MG' and CTRC.SerieConhecto = '0'                         
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1719138 AND NumSeq = 7
--UPDATE CartaFrete_Ocorrencia  SET  tipoOcorrencia  = 'CANCELADO'WHERE IdCartaFrete = 1719138 AND NumSeq = 7

