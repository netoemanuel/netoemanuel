SELECT CodFornecedor from Fornecedores where IndDesabilitaCriticaPIS <> 'S'   --Verificar se tem algum fornecedor com a Crítica ativa.
--update Fornecedores SET IndDesabilitaCriticaPIS = 'S' where CodFornecedor in (SELECT CodFornecedor from Fornecedores where IndDesabilitaCriticaPIS <> 'S')


SELECT * from ConhecimentosTransporte where NumConhecto = 747020

EXEC MonitoraMDFe 2175097
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1789828

EXEC MonitoraMDFe 22095814
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1789877


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 424114                                            
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 27086447 ORDER BY datalog desc

SELECT pedagio,* from ConhecimentosTransporte where CodUF = 'MG' AND Numconhecto = 424114  
SELECT pedagio,* from ConhecimentosTransporte_log where CodUF = 'MG' AND Numconhecto = 424114  


SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio , ValorPedagioSemParar
from OrdemEmbarque where NumOrdemEmbarque = 27086447 ORDER BY DataCriacao desc

EXEC MonitoraMDFe 22095866
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1789937
EXEC MonitoraMDFe 22095770
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1789937


EXEC MonitoraMDFe 71032339
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1789984
EXEC MonitoraMDFe 83079758
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1789831
EXEC MonitoraMDFe 27086593
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1789831
--DELETE FROM LONTANO_GSe.dbo.MDFe where Sequencial = 1789934

SELECT pedagio,* from ConhecimentosTransporte where CodUF = 'MS' AND Numconhecto = 545477  
exec VerificaCTe 830000071259
--DELETE FROM LONTANO_GSe.dbo.CTe_LOG WHERE ID = 23213012 AND Sequencial = 830000071259

SELECT TipoDispositivoValePedagio,* FROM OrdemEmbarque WHERE NumordemEmbarque = 26038860