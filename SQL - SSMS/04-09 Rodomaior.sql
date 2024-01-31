use RODOMAIOR

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 68971                      
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC 

select * from LogRoteirizacaoPedagio where NumOrdemEmbarque =66020305

SELECT RotaSemParar, ValorPedagioSemParar,EmpresaValePedagio , TipoDispositivoValePedagio, NumCartaoValePedagio, Situacao, DataLog
from OrdemEmbarque_Log where NumOrdemEmbarque = 66020305 ORDER BY datalog desc


select Situacao,* from ContasReceber where CodContasReceber = 1172969
--UPDATE ContasReceber SET Situacao = 'Confirmada' where CodContasReceber = 1172969

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

exec MonitoraMDFe 51010346
--UPDATE RODOMAIOR_GSe.dbo.mdfe set Status = 0 where Sequencial = 514837

