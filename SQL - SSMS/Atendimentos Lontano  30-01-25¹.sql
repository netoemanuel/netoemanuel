select CIOT,* from ConhecimentosTransporte where Numconhecto = 745078  and CodUF = 'MT' and SerieConhecto = '0' 
select * FROM OrdemEmbarque where NumOrdemEmbarque = 4031790
select * FROM OrdemEmbarque_log where NumOrdemEmbarque = 4031790

select CIOT,* from ConhecimentosTransporte where CodOrdemEmbarque = 4031790
select * from ConhecimentosTransporte_log where CodOrdemEmbarque = 4031790
SELECT * from ConhecimentosTransporte where CIOT = '167022798888/7440'

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 745078                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete	= 1737933


select ValorAdiantamento,* from ConhecimentosTransporte where Numconhecto = 745106  and CodUF = 'MT' and SerieConhecto = '0'  --1640228035467555
--UPDATE ConhecimentosTransporte SET CIOT = null where Numconhecto = 745106  and CodUF = 'MT' and SerieConhecto = '0' 

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 745106                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete	= 1741762
--UPDATE CartaFrete_Parcela SET Valor = 11000.00 WHERE IdCartaFrete	= 1741762 AND NumeroClienteParcela = 1
--UPDATE CartaFrete_Parcela SET valor = 4839.92 WHERE IdCartaFrete	= 1741762 AND NumeroClienteParcela = 3

--Id	IdCartaFrete	NumOrdemEmbarque	NumeroClienteParcela	CodAdmPagtoFrete	DescParcela	Valor	Pago	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioPago	CodFilialPago	DataPago	CodigoOperacao
--1655791	1741762	NULL	1	6	ADIANTAMENTO	1100.00	N	13479	EDL	2025-01-29 18:03:11.060	NULL	NULL	NULL	NULL
--1655792	1741762	NULL	3	6	SALDO			14739.92	N	13479	EDL	2025-01-29 18:03:11.060	NULL	NULL	NULL	NULL



select * from ContasPagas where CodContasPagar = 28016454 AND CodMovCaixa = 2800229494  --1428.56
--UPDATE ContasPagas SET ValorTotalPago = 997.00 where CodContasPagar = 28016454 AND CodMovCaixa = 2800229494  
select * from MovimentosCaixa where CodMovCaixa = 2800229494  
select * from RelacaoFretes where CodContasPagar = 28016454

select * from ContasPagas where CodContasPagar = 44005844 AND CodMovCaixa = 4400036671  --1428.56
--UPDATE ContasPagas SET ValorTotalPago = 668.00 where CodContasPagar = 44005844 AND CodMovCaixa = 4400036671 
select * from MovimentosCaixa where CodMovCaixa = 4400036671  
select * from RelacaoFretes where CodContasPagar = 44005844

select * from ContasPagas where CodContasPagar = 53013011 AND CodMovCaixa = 5300183208  --2347.77
--UPDATE ContasPagas SET ValorTotalPago = 1610.00 where CodContasPagar = 53013011 AND CodMovCaixa = 5300183208 
select * from MovimentosCaixa where CodMovCaixa = 5300183208  
select * from RelacaoFretes where CodContasPagar = 53013011

select * from ContasPagas where CodContasPagar = 53012976 AND CodMovCaixa = 5300182833  --4378.55
--UPDATE ContasPagas SET ValorTotalPago = 3150.00 where CodContasPagar = 53012976 AND CodMovCaixa = 5300182833 
select * from MovimentosCaixa where CodMovCaixa = 5300182833  
select * from RelacaoFretes where CodContasPagar = 53012976

select * from ContasPagas where CodContasPagar = 53012931 AND CodMovCaixa = 5300182441  --4379.97
--UPDATE ContasPagas SET ValorTotalPago = 3059.00 where CodContasPagar = 53012931 AND CodMovCaixa = 5300182441
select * from MovimentosCaixa where CodMovCaixa = 5300182441  
select * from RelacaoFretes where CodContasPagar = 53012931

select * from ContasPagas where CodContasPagar = 53012919 AND CodMovCaixa = 5300182220  --4379.97
--UPDATE ContasPagas SET ValorTotalPago = 3150.00 where CodContasPagar = 53012919 AND CodMovCaixa = 5300182220
select * from MovimentosCaixa where CodMovCaixa = 5300182220  
select * from RelacaoFretes where CodContasPagar = 53012919



SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 745070                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select CIOT,* from ConhecimentosTransporte where Numconhecto = 745070  and CodUF = 'MT' and SerieConhecto = '0'  --1620228021667965
--UPDATE ConhecimentosTransporte SET CIOT = null where Numconhecto = 745070  and CodUF = 'MT' and SerieConhecto = '0' 
select CIOT, * FROM OrdemEmbarque where NumOrdemEmbarque = 48009962
select CIOT, * FROM OrdemEmbarque where CIOT = 'EFRETE PIX'
--UPDATE OrdemEmbarque set CIOT = 'EFRETE PIX' where NumOrdemEmbarque = 48009962


select * from ConhecimentosTransporte where Numconhecto = 745176  and CodUF = 'MT' and SerieConhecto = '0' 

exec VerificaCTe 200000003571
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 200000003571
--EXEC Grava_CTe 200000003571