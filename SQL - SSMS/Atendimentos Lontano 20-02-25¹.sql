SELECT * from ContasPagar where CodContasPagar = 2240164
--UPDATE ContasPagar set ValorDocumento = 251.66, ValorPagar = 251.66 where CodContasPagar = 2240164
SELECT * from ContasPagas where CodContasPagar = 2240164
--UPDATE  ContasPagas SET ValorTotalPago = 251.66 where CodContasPagar = 2240164
SELECT * from DespesasRateioContasPagar where CodContasPagar = 2240164
--UPDATE DespesasRateioContasPagar SET ValorDespesaRateio = 251.66 where CodContasPagar = 2240164
select * FROM MovimentacaoBancaria where CodMovBancaria = 1628276
--UPDATE  MovimentacaoBancaria set ValorMovimento = 251.66  where CodMovBancaria = 1628276

select * FROM MovimentacaoBancaria where CodMovBancaria = 1635505 --2212.15
--UPDATE  MovimentacaoBancaria set ValorMovimento = 2071.77  where CodMovBancaria = 1635505

--ZDA
SELECT * from ContasPagas where CodContasPagar IN ( 1007123,1007136,1007733,1007734)
--UPDATE  ContasPagas SET DataPagamento = '2025-02-06 00:00:00' where CodContasPagar IN ( 1007123,1007136,1007733,1007734)


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 649034                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select DiferencaFreteAgregado,IndPagtoDiferenca,* from ConhecimentosTransporte where NumConhecto = 649034 and CodUF = 'GO'
SELECT * from ConhecimentosRelacaoFretes where NumSeqConhecto = 280000185684

--SISTEMA EFRETE (WWW.EFRETE.COM.BR): [NEGÓCIO] (PROTOCOLO: 703.332.307) ERRO ADICIONANDO PAGAMENTO: TODOS OS PAGAMENTOS JÁ ESTAVAM CADASTRADOS

 --pgtoEstadia = new Pagamento3() - Verificar sempre aqui a parcela enviada no caso de ser difernça de frete. IdPagamentoCliente alterar a parcela nessa tag. 


 EXEC VerificaCTe 530000175064
 --UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 530000175064
 --DELETE from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 530000175064 and ID  = 23232877


 SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 650290                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 1752413 
--UPDATE  CartaFrete_Parcela SET Pago = 'S' WHERE IdCartaFrete = 1752413 AND NumeroClienteParcela = 1

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 650536                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 1753924 
--UPDATE  CartaFrete_Parcela SET Pago = 'S' WHERE IdCartaFrete = 1753924 AND NumeroClienteParcela = 1


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 650635                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 1754356 
--UPDATE  CartaFrete_Parcela SET Pago = 'S' WHERE IdCartaFrete = 1754356 AND NumeroClienteParcela = 1

SELECT * FROM RegistroAcessoProgramas WHERE CodUsuario = 990001 AND DataAcesso BETWEEN '2025-01-01 11:00:29.000' AND '2025-02-21 11:15:29.000' ORDER BY DataAcesso
SELECT * from ConhecimentosTransporte where CodUsuarioAlteracao = 990001
SELECT * from ConhecimentosTransporte where NumConhecto = 651036 and CodUF = 'GO' AND SerieConhecto = '0'
SELECT * from ConhecimentosTransporte_log where NumConhecto = 651036 and CodUF = 'GO' AND SerieConhecto = '0' ORDER by DataLog desc



SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 649597                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC
