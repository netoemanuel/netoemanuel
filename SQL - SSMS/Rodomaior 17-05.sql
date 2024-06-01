USE RODOMAIOR

--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 598463
--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 598897
--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 598898
--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 598899
--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 598901
--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 598900
--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 598900
--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 598914

EXEC MonitoraMDFe 24003928
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe SET Status = 0 where Sequencial_MDFe = 598306
--UPDATE RODOMAIOR_GSe.dbo.CTe SET Status  = 0 where Sequencial IN (40000039589,530000005659)

--EXEC VerificaCTe 40000039589 
--EXEC VerificaCTe 530000005659 

--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 599112
--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 599113
EXEC MonitoraMDFe 5025453
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe SET Status = 0 where Sequencial_MDFe = 598567
EXEC MonitoraMDFe 5025455
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe SET Status = 0 where Sequencial_MDFe = 598583
EXEC MonitoraMDFe 5025457
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe SET Status = 0 where Sequencial_MDFe = 598643
EXEC MonitoraMDFe 5025459
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe SET Status = 0 where Sequencial_MDFe = 598682
EXEC MonitoraMDFe 5025461
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe SET Status = 0 where Sequencial_MDFe = 598781


select SituacaoConhecto,* from ConhecimentosTransporte where CodOrdemEmbarque = 51015041
SELECT * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 510000012126
EXEC MonitoraMDFe 51015041

select SituacaoConhecto,* from ConhecimentosTransporte where CodOrdemEmbarque = 51015046
SELECT * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 510000012131
--UPDATE RODOMAIOR_GSe.dbo.CTe SET Status = Status where Sequencial = 510000012135
EXEC MonitoraMDFe 51015046

SELECT * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 510000012131
SELECT * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 510000012126


SELECT TOP (100)* from RODOMAIOR_GSe.dbo.AverbacaoFrete order BY DataCriacao desc
SELECT TOP (50)* from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 410000030082
--DELETE from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 510000012135

--UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = 599276