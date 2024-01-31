use LONTANO

SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
FROM Lontano_gse.dbo.CTe CTe
JOIN Lontano_GSe.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM Lontano_GSe.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735
GO
---------------------------------------------------------------------------------------------------------------------------------

--delete from LONTANO_GSe.dbo.cte where Sequencial= 530000156964
--exec Grava_CTe 530000156964
--delete from LONTANO_GSe.dbo.cte where Sequencial= 530000156961
--exec Grava_CTe 530000156961
--delete from LONTANO_GSe.dbo.cte where Sequencial= 530000156990
--exec Grava_CTe 530000156990
--delete from LONTANO_GSe.dbo.cte where Sequencial= 530000156963
--exec Grava_CTe 530000156963
exec VerificaCTe 530000156964
exec VerificaCTe 530000156961
exec VerificaCTe 530000156990
exec VerificaCTe 530000156963
--delete from LONTANO_GSe.dbo.cte_log where Sequencial= 530000156963 and ID > 21885383
---------------------------------------------------------------------------------------------------------------------------------

exec VerificaCTe 530000157026
select Status,* from LONTANO_GSe.dbo.cte where Sequencial = 530000157026
--UPDATE LONTANO_GSe.dbo.cte set status = 1 where Sequencial = 530000157026
exec VerificaCTe 130000005668
select Status,* from LONTANO_GSe.dbo.cte where Sequencial = 130000005668
--UPDATE LONTANO_GSe.dbo.cte set status = 1 where Sequencial = 130000005668
--delete from LONTANO_GSe.dbo.cte_log where Sequencial= 130000005668 and ID > 22071651
---------------------------------------------------------------------------------------------------------------------------------

Select * from ConhecimentosTransporte where NumConhecto = 388635 and CodUF = 'MG'

exec VerificaCTe 130000005669
exec Grava_CTe 130000005669
--delete from LONTANO_GSe.dbo.cte_log where Sequencial= 130000005669 and ID > 22063824
---------------------------------------------------------------------------------------------------------------------------------

select CodVeiculo, * from ConhecimentosTransporte where NumConhecto = 685142 and CodUF = 'MT'
--antigo
select * from Veiculos where CodVeiculo = 575557
select * from ConjuntosVeiculo where CodVeiculo = 575557

--Novo
select * from Veiculos where PlacaVeiculo = 'PTM-6864'
select * from ConjuntosVeiculo where CodVeiculo = 575557
---------------------------------------------------------------------------------------------------------------------------------

select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe =1521802

---------------------------------------------------------------------------------------------------------------------------------

exec VerificaNFe 100000757
exec GravaNFe 100000757
select status,* from LONTANO_nfe.dbo.NFe where CodVenda = 100000757
--delete from LONTANO_nfe.dbo.NFe where CodVenda = 100000757 
--delete from LONTANO_nfe.dbo.NFe_log where CodVenda = 100000757 
--UPDATE LONTANO_nfe.dbo.NFe set Status = 0 where CodVenda = 100000757

SELECT TOP(100) * FROM LONTANO_GSe.dbo.tblLog_operacao ORDER BY DT_Hs DESC
select * from LONTANO_GSe.dbo.tblEmitentes
select * from LONTANO_NFe.dbo.tblEmitentes

---------------------------------------------------------------------------------------------------------------------------------

Select * from ConhecimentosTransporte where NumConhecto = 120406 and CodUF = 'SP'

exec VerificaCTe 50000014124
exec Grava_CTe 130000005669
--delete from LONTANO_GSe.dbo.cte_log where Sequencial= 50000014124 and ID > 22078727
---------------------------------------------------------------------------------------------------------------------------------

Select * from ConhecimentosTransporte where NumConhecto = 686697 and CodUF = 'MT'

exec VerificaCTe 890000029438
exec Grava_CTe 890000029438
--delete from LONTANO_GSe.dbo.cte_log where Sequencial= 890000029438 and ID > 22079656


Select * from ConhecimentosTransporte where NumConhecto = 388712  and CodUF = 'MG'
exec VerificaCTe 530000157103
exec Grava_CTe 890000029438
--delete from LONTANO_GSe.dbo.cte_log where Sequencial= 530000157103 and ID > 22078740
--UPDATE LONTANO_GSe.dbo.cte set Status = 1 where Sequencial= 530000157103 
