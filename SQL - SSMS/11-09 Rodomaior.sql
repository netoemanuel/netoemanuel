use RODOMAIOR


exec VerificaCTe 660000020680

select Status, * from RODOMAIOR_GSe.dbo.cte where Sequencial = 660000020680
--UPDATE RODOMAIOR_GSe.dbo.cte set status = 0 where Sequencial = 660000020680
--delete from RODOMAIOR_GSe.dbo.cte where Sequencial = 660000020680
select * from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 660000020680
--delete from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 660000020680
--exec Grava_CTe 660000020680


exec VerificaCTe 660000020681

select Status, * from RODOMAIOR_GSe.dbo.cte where Sequencial = 660000020681
--UPDATE RODOMAIOR_GSe.dbo.cte set status = 0 where Sequencial = 660000020681
--delete from RODOMAIOR_GSe.dbo.cte where Sequencial = 660000020681
select * from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 660000020681
--delete from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 660000020681
--exec Grava_CTe 660000020681

SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
FROM RODOMAIOR_GSe.dbo.CTe CTe
JOIN RODOMAIOR_GSe.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM RODOMAIOR_GSe.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735
GO


select * from RODOMAIOR_GSe.dbo.ArquivoFinanceiroTipBank
select * from RODOMAIOR_GSe.dbo.ItensArquivoFinanceiroTipBank
