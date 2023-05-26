select ValorTotalFrete,  * from ConhecimentosTransporte where NumConhecto = 72369 and CodUF = 'PR'
--update ConhecimentosTransporte set ValorTotalFrete = 5052.50 where Sequencial = 340000023034  -- 5052.50
select ValorTotalFrete, BaseCalculoICMS, ValorReceber, * from RODOMAIOR_GSe.dbo.CTe_Dacte where Sequencial = 340000023034


select vTPrest,vRec,vBC,* from RODOMAIOR_GSe.dbo.CTe where Sequencial = 340000023034
--update RODOMAIOR_GSe.dbo.CTe set vTPrest = 5052.50, vRec = 5052.50, vBC = 5052.50  where  Sequencial = 340000023034

select pICMS, vICMS, vICMSSTRet, pICMSSTRet, vFretePeso,vTPrest, * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 340000023034
select PesoNF,* from NotasFiscaisConhecimento where SequencialConhecimento = 340000023034
--update NotasFiscaisConhecimento set PesoNF = 47060.000 where SequencialConhecimento = 340000023034


select pesoL, pesoB,* from RODOMAIOR_GSe.dbo.NFe where ID = '41230407571116000120550010000732601633839658'
select * from RODOMAIOR_GSe.dbo.NotaFiscal_CTe where Sequencial = 340000023034

select * from PedidosFrete where CodPedidoFrete = 34004732
select * from PedidosFrete_log where CodPedidoFrete = 34004732 order by DataLog desc
select * from OrdemEmbarque where NumOrdemEmbarque = 34021922 
select * from OrdemEmbarque_log where NumOrdemEmbarque = 34021922 order by DataLog desc

exec VerificaCTe 340000023034
exec VerificaCTe 340000023033
select * from NotasFiscaisConhecimento where SequencialConhecimento = 340000023034
select * from RODOMAIOR_GSe.dbo.NFe where ID = '41230407571116000120550010000732601633839658'
select pICMS, vICMS, vICMSSTRet, pICMSSTRet, * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 340000023034



--select  codclientematriz, * from clientes_complemento where codcliente = 1023573
--select * from Clientes where CodCliente = 1023573


--CASE WHEN CliComp.CodClienteMatriz = 1023573 AND NOT (Ped.ICMSDestacado = 'U' AND Ped.CodUFTributacao = 'MS')
--THEN CTRC.BaseCalculoICMS
--ELSE CASE WHEN (Ped.ICMSDestacado = 'U' AND Ped.CodUFTributacao = 'MS' AND CliComp.CodClienteMatriz = 1023573 AND CTRC.TarifaSEFAZ > CTRC.ValorTotalFrete)
--THEN ROUND((CTRC.ValorTotalFrete - (ISNULL(CTRC.ValorICMSRetido,0) * 0.2)),2)
--ELSE CTRC.ValorTotalFrete END END,

