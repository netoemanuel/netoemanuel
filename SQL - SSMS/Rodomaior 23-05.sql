use RODOMAIOR


select ValorDiferenca,TotalRelacao,OutrasDespesas,CodContasPagar,* from RelacaoFretes where CodRelacaoFrete = 1102259 -- 334879.62
--UPDATE  RelacaoFretes set TotalRelacao = 344679.62  where CodRelacaoFrete = 1102259
SELECT * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 1102259 
SELECT * from ConhecimentosRelacaoFretes_log where CodRelacaoFrete = 1102259
select * FROM ContasPagar where CodContasPagar = 1414274 -- 344679.62 / 344679.62
--UPDATE ContasPagar SET ValorDocumento = 344679.62, ValorPagar = 344679.62 where CodContasPagar = 1414274
select CodMovCaixa, * FROM ContasPagas where CodContasPagar = 1414274 -- 344679.62
--UPDATE ContasPagas set ValorTotalPago = 344679.62 where CodContasPagar = 1414274
SELECT * FROM MovimentosCaixa where CodMovCaixa = 101261232 -- 344679.62
--UPDATE MovimentosCaixa set ValorMovimento = 344679.62  where CodMovCaixa = 101261232
SELECT ValorMovimento, * from MovimentacaoBancaria where CodMovBancaria = 1551875 -- 344679.62
--UPDATE MovimentacaoBancaria SET ValorMovimento = 344679.62 where CodMovBancaria = 1551875 



EXEC MonitoraMDFe 72002528
--chMDFe Não Encerrada:52240511595217000531580050001077921006657948
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 600609
--delete FROM RODOMAIOR_GSe.dbo.MDFe WHERE Sequencial IN (600604,600601,600600,600593)
exec MonitoraMDFe 72002460
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 594357
--UPDATE RODOMAIOR_GSe.dbo.MDFe_LOG set cStat = 204 where Sequencial = 594357 AND ID = 6811400

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PR' AND CTRC.Numconhecto = 66591                                         
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT COUNT(*) AS Registros FROM ConhecimentosRelacaoFretes WHERE (CodRelacaoFrete <> 34004744) AND (NumSeqConhecto = 790000003826) AND (CodTipoPagamento = 2)

select * FROM ConhecimentosRelacaoFretes WHERE (CodRelacaoFrete <> 34004744) AND (NumSeqConhecto = 790000003826) AND (CodTipoPagamento = 2)