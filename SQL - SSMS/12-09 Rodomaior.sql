use RODOMAIOR


select * from ConhecimentosTransporte where CodOrdemEmbarque = 51010483

select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 510000008294

select * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 510000008294

exec MonitoraMDFe 51010483

select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialMDFe = 517843

select * from RODOMAIOR_GSe.dbo.ModalRodoviario_MDFe where Sequencial = 517843

exec MonitoraMDFe 51010482

--delete from RODOMAIOR_GSe.dbo.mdfe where Sequencial = 517822


select * from ConhecimentosTransporte where NumConhecto = 185529 and CodUF = 'MS'

exec VerificaCTe 60000044091
--UPDATE RODOMAIOR_GSe.dbo.CTe set Status = 0 where Sequencial = 60000044091