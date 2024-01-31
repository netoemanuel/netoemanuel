use LONTANO

SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
FROM Lontano_gse.dbo.CTe CTe
JOIN Lontano_GSe.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM Lontano_GSe.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735

--UPDATE LONTANO_GSe.dbo.CTe set Status = 2 where Sequencial = 530000156964

exec VerificaCTe 530000156964
SELECT * FROM LONTANO_GSe.DBO.CTe_log WHERE  Sequencial IN (530000156964) and id > 21882918
--delete FROM LONTANO_GSe.DBO.CTe_log WHERE  Sequencial IN (530000156964) and id > 21882918



SELECT tpCTe, Status,* FROM LONTANO_GSe.DBO.CTe WHERE  Sequencial IN (740000004187,220000019773,220000019772,220000019771,10000023819,10000023820,10000023822) 

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select NumeroCNH, SituacaoMotorista,* from Motoristas where CodMotorista = 1076408 --03802041492
select NumeroCNH, SituacaoMotorista,* from Motoristas_log where CodMotorista = 1076408 order by DataLog desc --03802041492
--UPDATE Motoristas set NumeroCNH = 0, SituacaoMotorista = 'Inativo'  where CodMotorista = 1076408 
--UPDATE Motoristas set NumeroCNH = 03802041492, SituacaoMotorista = 'Ativo'  where CodMotorista = 1076408 

select NumeroCNH, SituacaoMotorista,* from Motoristas where NomeMotorista like '%EMILIO ROQUE MONTEIRO%'


SELECT * FROM LONTANO_GSe.dbo.tblEmitentes