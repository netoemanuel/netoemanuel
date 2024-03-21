use RODOMAIOR

select * from ChequesEmitidos where NumeroCheque = 85187017 and CodFilial = 'CG' and ValorCheque = 67.80

select * from ChequesEmitidos where Sequencial = 160000019698

--UPDATE ChequesEmitidos set Gerado = 'N' where Sequencial = 160000019698


exec VerificaCTe 910000041806 
SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
FROM Rodomaior_GSe.dbo.CTe CTe
JOIN Rodomaior_GSe.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM Rodomaior_GSe.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735
GO

select * from ConhecimentosTransporte where NumConhecto in (48708) and CodUF = 'MT'
select * from NotasFiscaisConhecimento where SequencialConhecimento = 510000010272

select * from ConhecimentosTransporte where NumConhecto in (109718, 109717)  and CodUF = 'GO'



select * from Motoristas where CPF ='942.591.512-15' -- 56000565
select CodMotorista,* from OrdemEmbarque where NumOrdemEmbarque = 4039254 --4008080
--UPDATE OrdemEmbarque set CodMotorista = 56000565 where NumOrdemEmbarque = 4039254


exec VerificaCTe 750000009788
exec VerificaCTe 310000014279