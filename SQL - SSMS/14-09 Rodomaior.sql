SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
FROM Rodomaior_GSe.dbo.CTe CTe
JOIN Rodomaior_GSe.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM Rodomaior_GSe.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735
GO

delete from Rodomaior_GSe.dbo.cte where Sequencial= 10000023819
exec Grava_CTe 10000023819
exec VerificaCTe 10000023819
--delete from Rodomaior_GSe.dbo.cte where Sequencial= 10000023820
--exec Grava_CTe 10000023820
exec VerificaCTe 10000023819
--delete from Rodomaior_GSe.dbo.cte where Sequencial= 10000023833
--exec Grava_CTe 10000023833
exec VerificaCTe 10000023833
--delete from Rodomaior_GSe.dbo.cte where Sequencial= 10000023822
--exec Grava_CTe 10000023822
exec VerificaCTe 10000023822
--delete from Rodomaior_GSe.dbo.cte where Sequencial= 10000023836
--exec Grava_CTe 10000023836
exec VerificaCTe 10000023836
--delete from Rodomaior_GSe.dbo.cte where Sequencial= 10000023835
--exec Grava_CTe 10000023835
exec VerificaCTe 10000023835
--delete from Rodomaior_GSe.dbo.cte where Sequencial= 40000035512
--exec Grava_CTe 40000035512
exec VerificaCTe 40000035512
--delete from Rodomaior_GSe.dbo.cte where Sequencial= 10000023838
--exec Grava_CTe 10000023838
exec VerificaCTe 10000023838
--delete from Rodomaior_GSe.dbo.cte where Sequencial= 10000023837
--exec Grava_CTe 10000023837
exec VerificaCTe 10000023837

---------------------------------------------------------------------------------------------------------------------------------

select ValorNF, * from ConhecimentosTransporte where CodOrdemEmbarque = 2047372
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 20000032609
--delete from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 20000032609
select * from NotasFiscaisConhecimento where SequencialConhecimento =  20000032609 -- 11376876.00
--UPDATE NotasFiscaisConhecimento set ValorNF = 11376876.00 where SequencialConhecimento =  20000032609
--UPDATE RODOMAIOR_GSe.dbo.CTe set status = status where sequencial =20000032609
--exec MonitoraMDFe 2047372
---------------------------------------------------------------------------------------------------------------------------------

Select * from ConhecimentosTransporte where NumConhecto = 186317  and CodUF = 'SP'
exec VerificaCTe 50000024552

select * from RODOMAIOR_GSe.dbo.Eventos_CTe where Sequencial_CTe = 50000024552
