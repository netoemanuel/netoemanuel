USE LONTANO

select * from ConhecimentosTransporte where NumConhecto = 547494 AND CodUF = 'GO' 

EXEC Grava_CTe 0000000000000
--
select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 730000129506
--UPDATE LONTANO_GSe.dbo.CTe SET STATUS = 0 WHERE Sequencial = 620000017455  --Reenviar sem mudar nenhuma alteração no CT-e
exec grava_cte 0000000000000

select top(100) Status, DT_Alteracao, * from lontano_gse.dbo.cte order by datacriacao desc -- Verificar ultimos CTes gerados

--delete from lontano_gse.dbo.cte where sequencial = 730000129506     --Deletar CT-e para regravar apenas em casos muitos especificos 
--delete from lontano_gse.dbo.CTe_LOG where sequencial = 730000129506 -- Deletar tabela de LOG
exec Grava_cte 620000017455
EXEC MonitoraMDFe 11018087
	


use RODOMAIOR

select * from ConhecimentosTransporte where NumConhecto = 78783 AND CodUF = 'GO' 
exec VerificaCTe 0000000000000
EXEC Grava_CTe 0000000000000

--delete from RODOMAIOR_gse.dbo.cte where sequencial = 760000012664
--delete from RODOMAIOR_gse.dbo.CTe_LOG where sequencial = 760000012664


select * from RODOMAIOR_GSe.dbo.CTe_LOG where Sequencial = 30000024704
--UPDATE RODOMAIOR_GSe.dbo.CTe SET STATUS = 0 WHERE Sequencial = 30000024704
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where Sequencial = 30000024704
exec grava_cte 30000024704


EXEC MonitoraMDFe 66017842