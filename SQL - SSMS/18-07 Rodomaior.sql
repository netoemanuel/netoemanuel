use RODOMAIOR
select * from ConhecimentosTransporte where NumConhecto = 97664  and CodUF = 'go'
--update RODOMAIOR_GSe.dbo.cte set Status = 1 where Sequencial = 760000016921

	
select * from RODOMAIOR_GSe.dbo.cte where Sequencial
--delete from RODOMAIOR_GSe.dbo.cte_log where id in (5967407,5967410,5967411)

exec MonitoraMDFe 53003686

select * from ConhecimentosTransporte where NumConhecto = 97699  and CodUF = 'go'
--update RODOMAIOR_GSe.dbo.cte set Status = 1 where Sequencial = 760000016930
--delete from RODOMAIOR_GSe.dbo.cte_log where id in (5968935,5968934)
exec VerificaCTe 760000016930

------------------------------------------------------------------------------------------------------------------------------------

select KmInicial, * from AcertoViagem where Sequencial = 100021161  -- 798889.00   / Placa NRL8008 (cod.808) - KM inicial no acerto 794.304 
--update AcertoViagem set KmInicial = 794304 where Sequencial = 100021161
------------------------------------------------------------------------------------------------------------------------------------


select * from OrdemEmbarque where NumOrdemEmbarque = 66020840

select * from ConhecimentosTransporte where CodOrdemEmbarque = 66020840

select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 660000019729


------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto in (98116,98114,98111) and CodUF = 'GO'

exec VerificaCTe 50000023853
exec VerificaCTe 50000023854
exec VerificaCTe 50000023855
--O elemento 'infCteSub' no espaço para nome 'http://www.portalfiscal.inf.br/cte' apresenta elemento filho 'refCteAnu' no espaço para nome 'http://www.portalfiscal.inf.br/cte' inválido.
--Lista de possíveis elementos esperados: 'indAlteraToma' no e
select Status, * from RODOMAIOR_GSe.dbo.cte where Sequencial in (50000023853, 50000023854, 50000023855)
--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial in (50000023854, 50000023855)