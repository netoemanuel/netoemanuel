SELECT ValorICMSFrete,SituacaoConhecto, *  from ConhecimentosTransporte where NumConhecto = 58065 and CodUF = 'MG' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte SET ValorICMSFrete = 34.00 where Sequencial = 530000172227 

SELECT ValorICMSFrete, *  from ConhecimentosTransporte where CodUF = 'MG' and SerieConhecto = '2' ORDER by DataCriacao desc


EXEC MonitoraMDFe 12044876
select * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1787071 ORDER by DataCriacao desc
--UPDATE  LONTANO_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 1787071 and Sequencial = 1654559

EXEC MonitoraMDFe 2175006

EXEC MonitoraMDFe 43014676

EXEC MonitoraMDFe 26038804
select Status,* from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1787106 ORDER by DataCriacao desc
--UPDATE  LONTANO_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 1787106 and Sequencial = 1654565

EXEC MonitoraMDFe 43014673
select Status,* from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1788327 ORDER by DataCriacao desc
--UPDATE  LONTANO_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 1787106 and Sequencial = 1654565


SELECT * from ConhecimentosTransporte where NumConhecto = 22723 and CodUF = 'PA'
SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PA' AND CTRC.Numconhecto = 22723                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC
SELECT * from CartaFrete_Parcela where IdCartaFrete = 1724897

SELECT  TipoCalculoLucro,* from ConhecimentosTransporte where NumConhecto = 91536 and CodUF = 'MT' AND SerieConhecto = '2'
SELECT * from ConhecimentosTransporte where NumConhecto = 91535 and CodUF = 'MT' AND SerieConhecto = '2'

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '2' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 91536                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC




--EXEC ConfereAjuste3Reais '2025-01-01', '2025-01-31 23:59', 'CONFERE'
--EXEC ConfereAjuste3Reais '2025-01-01', '2025-01-31 23:59', 'AJUSTA'


SELECT ToleranciaQuebra, TipoToleranciaQuebra FROM Clientes_Complemento WHERE (CodCliente = 64001965)

	SELECT TipoCalculoLucro, SeguroAverbado,GRIS_NaoDescontado,* 
	from ConhecimentosTransporte c
	where c.CodPedidoFrete = 22008503
--UPDATE ConhecimentosTransporte set TipoCalculoLucro = 'Mercado Interno'  where CodPedidoFrete = 22008503  --Puxinha / Seguro 0.58
--UPDATE ConhecimentosTransporte set SeguroAverbado = 0.00  where CodPedidoFrete = 22008503 



SELECT TipoCalculoLucro, SeguroAverbado, GRIS_NaoDescontado,* 
from ConhecimentosTransporte c
where c.CodPedidoFrete = 22008527
--UPDATE ConhecimentosTransporte set TipoCalculoLucro = 'Mercado Interno'  where CodPedidoFrete = 22008527  --Puxinha / Seguro 1.97  
--UPDATE ConhecimentosTransporte set SeguroAverbado = 0.00  where CodPedidoFrete = 22008527 


select * FROM PedidoCompras where CodPedidoCompra = 36889
select * FROM Itens_PedidoCompra where CodPedidoCompra = 36889
--UPDATE  Itens_PedidoCompra set CodProduto = 38970   where CodPedidoCompra = 36889 AND OrdemSequencial = 1  --109398
--UPDATE  Itens_PedidoCompra set CodProduto = 12475   where CodPedidoCompra = 36889 AND OrdemSequencial = 2  --115053

SELECT * FROM NotaEntrada where CodNotaEntrada = 1012396
select * FROM Itens_PedidoCompra where CodPedidoCompra = 36889
SELECT * FROM ItensNotaEntrada where CodNotaEntrada = 1012396
--UPDATE  ItensNotaEntrada set CodProduto = 38970   where CodNotaEntrada = 1012396 AND SeqItemNota = 1  --109398
--UPDATE  ItensNotaEntrada set CodProduto = 12475   where CodNotaEntrada = 1012396 AND SeqItemNota = 2  --115053