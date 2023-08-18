select * from ChequesEmitidos where NumeroCheque = 223960  -- Pagto. CTRC MS-487656
select * from ChequesEmitidos_log where NumeroCheque = 223960
select * from ChequesEmitidos where NumeroCheque = 190133
select * from ChequesEmitidos_log where NumeroCheque = 190133 -- Pagto. CTRC MS-484129

exec VerificaCTe 450000024716

select * from  ConhecimentosRelacaoFretes_Log where CodRelacaoFrete = 45003488

------------------------------------------------------------------------------------------------------------------------------------

select CIOT, * from ConhecimentosTransporte where NumConhecto in (483761,483762, 483763)  and CodUF = 'MS'
select CIOT, * from ConhecimentosTransporte_log where NumConhecto in (483761,483762, 483763)  and CodUF = 'MS'

SELECT TOP(100) oe.TipoDispositivoValePedagio, CTRC.SituacaoConhecto, oe.CIOT, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 483761    
SELECT TOP(100) oe.TipoDispositivoValePedagio, CTRC.SituacaoConhecto, oe.CIOT, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 483762    
SELECT TOP(100) oe.TipoDispositivoValePedagio, CTRC.SituacaoConhecto, oe.CIOT, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 483763    