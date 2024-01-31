use LONTANO

select * from ConhecimentosTransporte where NumConhecto = 120185 and CodUF ='SP'

exec VerificaCTe 60000028417
--update LONTANO_GSe.dbo.cte set status = 0 where Sequencial = 60000028417

exec VerificaCTe 270000074357
select Status, * from LONTANO_GSe.dbo.cte where Sequencial = 270000074357
--UPDATE LONTANO_GSe.dbo.cte set status = 2 where Sequencial = 270000074357
--delete from LONTANO_GSe.dbo.cte where Sequencial = 270000074357
select * from LONTANO_GSe.dbo.cte_log where Sequencial = 270000074357
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 270000074357
--exec Grava_CTe 270000074357

exec VerificaCTe 530000156920
select Status, * from LONTANO_GSe.dbo.cte where Sequencial = 530000156920
--UPDATE LONTANO_GSe.dbo.cte set status = 2 where Sequencial = 530000156920
--delete from LONTANO_GSe.dbo.cte where Sequencial = 530000156920
select * from LONTANO_GSe.dbo.cte_log where Sequencial = 530000156920
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 530000156920
--exec Grava_CTe 530000156920

-------------------------------------------------------------------------------------------------------------------------------------------------
--delete from LONTANO_GSe.dbo.cte where Sequencial in (530000156921,530000156920,530000156922,270000074358,530000156923,980000027442,980000027443)
exec VerificaCTe 530000156921
--exec VerificaCTe 530000156920
--exec VerificaCTe 530000156922
--exec VerificaCTe 270000074358
exec VerificaCTe 530000156923
--exec VerificaCTe 980000027442
--exec VerificaCTe 980000027443

--exec Grava_CTe 530000156921
--exec Grava_CTe 530000156920
--exec Grava_CTe 530000156922
--exec Grava_CTe 270000074358
--exec Grava_CTe 530000156923
--exec Grava_CTe 980000027442
--exec Grava_CTe 980000027443

SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
FROM Lontano_gse.dbo.CTe CTe
JOIN Lontano_GSe.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM Lontano_GSe.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735
GO
-------------------------------------------------------------------------------------------------------------------------------------------------
--delete from LONTANO_GSe.dbo.cte where Sequencial in (530000156921,530000156927,530000156923,530000156926,530000156928,530000156932,530000156937,530000156934)
--delete from LONTANO_GSe.dbo.CTe_LOG where Sequencial in (530000156921,530000156927,530000156923,530000156926,530000156928,530000156932,530000156937,530000156934)

--exec Grava_CTe 530000156921
--exec Grava_CTe 530000156927
--exec Grava_CTe 530000156923
--exec Grava_CTe 530000156926
--exec Grava_CTe 530000156928
--exec Grava_CTe 530000156932
--exec Grava_CTe 530000156937
--exec Grava_CTe 530000156934

exec VerificaCTe 530000156921
exec VerificaCTe 530000156927
exec VerificaCTe 530000156923
exec VerificaCTe 530000156926
exec VerificaCTe 530000156928
exec VerificaCTe 530000156932
exec VerificaCTe 530000156937
exec VerificaCTe 530000156934
-------------------------------------------------------------------------------------------------------------------------------------------------

--update LONTANO_GSe.dbo.cte set tpCTe = 0 where Sequencial in (530000156921,530000156927,530000156923,530000156926,530000156928,530000156932,530000156937,530000156934)
--update LONTANO_GSe.dbo.cte set Status = 0 where Sequencial in (530000156937)

--delete from LONTANO_GSe.dbo.cte where Sequencial in (270000074364,530000156936,710000027267,530000156933,530000156934,530000156928,530000156921,530000156926,710000027268)
--exec Grava_CTe 270000074364
--exec Grava_CTe 530000156926
--exec Grava_CTe 710000027268
--exec Grava_CTe 530000156936
--exec Grava_CTe 710000027267
--exec Grava_CTe 530000156933
--exec Grava_CTe 530000156934
--exec Grava_CTe 530000156928
--exec Grava_CTe 530000156921
-------------------------------------------------------------------------------------------------------------------------------------------------

exec VerificaCTe 530000156921
select Status, * from LONTANO_GSe.dbo.cte where Sequencial = 530000156921
--UPDATE LONTANO_GSe.dbo.cte set tpcte =0  where Sequencial = 530000156921
--delete from LONTANO_GSe.dbo.cte where Sequencial = 530000156921
select * from LONTANO_GSe.dbo.cte_log where Sequencial = 530000156921
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 530000156921
--exec Grava_CTe 530000156921

-------------------------------------------------------------------------------------------------------------------------------------------------

SELECT COUNT(*) AS Registros FROM Lontano_GSe.dbo.Cidades_e WHERE (CodMunicipioIBGE = 4220000)
select * from Cidades where NomeCidade like '%Balneário Rincão%'
SELECT * FROM Lontano_GSe.dbo.Cidades_e WHERE (CodMunicipioIBGE = 4220000)
--insert into Lontano_GSe.dbo.Cidades_e values (4220000, 'Balneário Rincão', 42, 149864, 14102,'CG', GETDATE(), null,null,null)
--UPDATE Lontano_GSe.dbo.Cidades_e SET CodCidade = 149864 WHERE (CodMunicipioIBGE = 4220000)
-------------------------------------------------------------------------------------------------------------------------------------------------

select * from LONTANO_GSe.dbo.tblEmitentes
-------------------------------------------------------------------------------------------------------------------------------------------------

blk
kill 272
-------------------------------------------------------------------------------------------------------------------------------------------------

select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 494227  and CodUF ='MS'
--UPDATE  ConhecimentosTransporte SET TarifaFreteEmpresa = 55.2208 where Sequencial = 500000005964 -- 15.0000


select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 494412   and CodUF ='MS'
--UPDATE  ConhecimentosTransporte SET TarifaFreteEmpresa = 48.7500 where Sequencial = 500000005968 -- 19.5000

select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 494413    and CodUF ='MS'
--UPDATE  ConhecimentosTransporte SET TarifaFreteEmpresa = 48.7500 where Sequencial = 500000005969 -- 19.5000

select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 495553    and CodUF ='MS'
--UPDATE  ConhecimentosTransporte SET TarifaFreteEmpresa = 24.9167 where Sequencial = 500000005983 -- 26.0000