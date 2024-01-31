use LONTANO



select * from ConhecimentosTransporte where NumConhecto = 189317  and CodUF = 'PR'

exec MonitoraMDFe 91053722
EXEC VerificaCTe 910000043625


-----------------------------------------------------------------------------------------------------------------------------------------------------------------


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga, 
CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC',
CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '1' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 1922947                      
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC