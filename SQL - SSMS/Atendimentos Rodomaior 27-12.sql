EXEC MonitoraMDFe 51018969
--UPDATE RODOMAIOR_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 662913

EXEC MonitoraMDFe 95005928
SELECT * FROM Fatura_Repom
select * from ContasPagar_Log where  CodFornecedor = 1091494  and CodUsuarioLog = 12662 ORDER by DataLog desc

select  *  from ConhecimentosTransporte_Log where Sequencial =  340000029637
SELECT ISNULL(Situacao,'TOTAL') as Situação, count(*) AS QTD FROM CTRC_Cargill WHERE Situacao IN ('Erro','Pendente') GROUP BY Situacao WITH ROLLUP


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 123900                                      
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * from ConhecimentosRelacaoFretes where NumSeqConhecto = 800000009057
SELECT * from ConhecimentosRelacaoFretes_log where NumSeqConhecto = 800000009057


select Situacao,* FROM OrdemEmbarque_Log where NumOrdemEmbarque = 69014738
select Situacao,* FROM OrdemEmbarque where NumOrdemEmbarque = 69014738
--UPDATE OrdemEmbarque SET Situacao = '2' where NumOrdemEmbarque = 69014738
