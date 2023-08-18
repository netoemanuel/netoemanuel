exec VerificaCTe 510000007547


--update Rodomaior_GSe.dbo.cte set Status = 1 where Sequencial = 510000007547

select status,* from Rodomaior_GSe.dbo.CTe_LOG where Sequencial = 510000007547 and codLog = 22

---delete from Rodomaior_GSe.dbo.cte_log where Sequencial = 510000007547 and id > 5904364

------------------------------------------------------------------------------------------------------------------------------------

exec verificacte 510000007547
select DT_Alteracao, NO_Protocolo, XML_Enviado, XML_Retorno, * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 510000007547 

------------------------------------------------------------------------------------------------------------------------------------

SELECT TOP(100) oe.TipoDispositivoValePedagio, CTRC.SituacaoConhecto, oe.CIOT, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 96787                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT TOP(100) oe.TipoDispositivoValePedagio, CTRC.SituacaoConhecto, oe.CIOT, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 97788                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

------------------------------------------------------------------------------------------------------------------------------------

select * from RODOMAIOR_GSe.dbo.NFe where ID = '52230760498706006600550640001392901038643752'
select * from RODOMAIOR_NFe.dbo.NFe where ID = '52230760498706006600550640001392871038643480'