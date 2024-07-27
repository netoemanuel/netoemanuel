SELECT DataEmissao,ValorICMSRetido,ValorTotalFrete,AliquotaICMSRetido,TarifaSEFAZ,* from ConhecimentosTransporte where NumConhecto IN (632673, 604244 ) and CodUF = 'GO' and SerieConhecto = '0'

SELECT DataEmissao,ValorICMSRetido,ValorTotalFrete,AliquotaICMSRetido,TarifaSEFAZ,* from ConhecimentosTransporte_log where NumConhecto IN (632673, 604244 ) and CodUF = 'GO' and SerieConhecto = '0' order by DataLog, NumConhecto desc


--select * from PedidosFrete where CodPedidoFrete IN (3013015,3014171)
select ICMSDestacado,* from PedidosFrete_log where CodPedidoFrete IN (3013015) order BY DataLog desc
select ICMSDestacado, * from PedidosFrete_log where CodPedidoFrete IN (3014171) order BY DataLog desc -- alteração para tributação U 2024-07-11 18:10:11.000

EXEC VerificaCTe 510000032179
EXEC VerificaCTe 30000155641

select pICMS,vICMS, vICMSSTRet,pICMSSTRet,* from LONTANO_GSe.dbo.CTe where Sequencial in (510000032179,30000155641)


select * from Clientes_Complemento where CodCliente = 3002256
select * from Clientes_Complemento_Log where CodCliente = 3002256 ORDER BY DataLog desc -- ultima ateração 2024-07-12 17:21:01.000


EXEC RealizadoCTRC 510000032179
EXEC RealizadoCTRC 30000155641

SELECT CodUF, NumConhecto, ValorIRRFMotorista, ValorRetidoINSS, ValorRetidoSestSenat, CodOrdemEmbarque FROM ConhecimentosTransporte WHERE (Sequencial = 510000032179)
SELECT ValorICMS,BaseCalculoICMS,AliquotaICMS,* from LONTANO_GSe.dbo.CTe_Dacte where Sequencial  in (510000032179,30000155641)

EXEC NovoCalculoLucratividade 30000155641

select CreditoICMS,* from Clientes_Complemento_log WHERE CodCliente = 3002256 order BY DataLog desc--AND ISNULL(CreditoICMS,'') = 'S' or






SELECT TOP (100)* from LONTANO_GSe.dbo.AverbacaoFrete order by DataCriacao desc

EXEC MonitoraMDFe 64076288
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '941240015482607', nProt = '941240015482607' where Sequencial = 1691997 and ID = 25153769
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1691997 

--Anota !
EXEC MonitoraMDFe 64076288
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1691997 
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '941240015482607', nProt = '941240015482607' where Sequencial = 000000 and ID = 00000000 
--coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 2, cstat = 204 where Sequencial = 1691997


SELECT Status, * from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 980000029360
EXEC VerificaCTe 980000029360