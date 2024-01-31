use RODOMAIOR


--select * from RODOMAIOR_GSe.dbo.AverbacaoFrete order by DataCriacao desc


select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 660000020364
--delete from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 660000020364
--UPDATE RODOMAIOR_GSe.dbo.CTe set Status = Status where Sequencial = 660000020364
--update  RODOMAIOR_GSe.dbo.AverbacaoFrete set Situacao = 'Pendente' where SequencialCTe = 660000020364
exec VerificaCTe 660000020364

exec monitoramdfe 44019040

--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial =509979
--delete from RODOMAIOR_GSe.dbo.mdfe where Sequencial = 509979

SELECT TOP(1000) * FROM RODOMAIOR_GSe.dbo.tblLog_operacao ORDER BY DT_Hs DESC



-----------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto in (101024,101027) and CodUF = 'GO'
select * from ConhecimentosSubstituidos where SeqCTRCSubstituto in (50000024324,50000024323)
select * from ConhecimentosTransporte where Sequencial in (50000024216,50000024207) 

exec VerificaCTe 50000024323
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where id in (6165236,6165235,6165234,6165230,6165229,6165228) and Sequencial = 50000024323
--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 1 where Sequencial in (50000024323,50000024324)


exec VerificaCTe 50000024324
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where id in (6165227,6165226,6165225) and Sequencial = 50000024324
--select * from RODOMAIOR_GSe.dbo.CTe where



