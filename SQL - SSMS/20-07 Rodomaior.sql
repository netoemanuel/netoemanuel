use RODOMAIOR


select * from ConhecimentosTransporte where NumConhecto = 98186  and CodUF = 'GO'

exec VerificaCTe 220000018777 -- 659 Rejeição: CT-e substituido não pode ter sido complementado


select CodigoCFOPTributacao, * from PedidosFrete where CodPedidoFrete = 6005656


-------------------------------------------------------------------------------------------------------------

--CORRIGIR O MDF-E - 98212

select * from ConhecimentosTransporte where NumConhecto = 98212 and CodUF = 'GO'
select * from ConhecimentosTransporte where CodOrdemEmbarque = 76020874
--update RODOMAIOR_GSe.dbo.cte set Status = 1 where Sequencial = 760000016993
exec MonitoraMDFe 76020874
-------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 76594 and CodUF = 'PR'
select * from ConhecimentosSubstituidos where SeqCTRCSubstituto = 340000023877
--delete from ConhecimentosSubstituidos where SeqCTRCSubstituto = 340000023877

-------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 39188 and CodUF = 'MT'
exec VerificaCTe 530000003527
