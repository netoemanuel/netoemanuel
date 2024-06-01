EXEC VerificaCTe 20000153350

--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 20000153350
select * from ConhecimentosTransporte where NumConhecto IN (64380,64405 ) AND CodUF = 'GO' and SerieConhecto = '2'


select * from Fatura_Repom where ID = 141 -- valor menor
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141
select (  2626987.07  - 2465145.18) -- -161841.89
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and ValorTransacao = 161841.89
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and Sequencial_CTRC in (890000031132,890000031133,530000164577,260000024517,530000164589,530000164590,240000058742,60000030413,310000098515,310000098523)
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and Sequencial_CTRC in (890000031132,890000031133,530000164589,530000164590,240000058742)
select SituacaoConhecto,* from ConhecimentosTransporte where Sequencial in (890000031132,890000031133,530000164589,530000164590,240000058742)
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and Sequencial_CTRC in (530000163057) 
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and Sequencial_CTRC is null
SELECT (2013.00 + 2007.00 + 903.00 + 910.00 + 3500.00)

SELECT * from AGROGRANDE.dbo.tblEmitentes

select  TOP (10) SituacaoPedidoCompra,* from PedidoCompras order BY DataPedido desc

exec MonitoraMDFe 48008939
--UPDATE LONTANO_GSe.dbo.MDFe set Status = 0  where Sequencial = 1651181
select TOP (100)* from LONTANO_GSe.dbo.tblLog_operacao where NM_Metodo = 'MDFeRecepcaoWebService' order BY DT_Hs desc

exec MonitoraMDFe 42025655
--UPDATE LONTANO_GSe.dbo.MDFe set Status = 0  where Sequencial = 1651172
