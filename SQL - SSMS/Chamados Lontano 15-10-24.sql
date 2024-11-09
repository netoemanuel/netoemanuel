select * from ConhecimentosTransporte where NumConhecto in (734784,734783,734782) and CodUF = 'MT'

EXEC VerificaCTe 220000080272
EXEC VerificaCTe 630000017442
EXEC VerificaCTe 220000080273  

select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 220000080272 and ID  = 23040583
select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 630000017442 and ID  = 23040577
select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 220000080273 and ID  = 23040571

--Delete from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 220000080272 and ID  = 23040583
--Delete from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 630000017442 and ID  = 23040577
--Delete from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 220000080273 and ID  = 23040571
--UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 530000170901


SELECT * from ContasPagar where CodContasPagar = 1972725
SELECT * from ContasPagas where CodContasPagar = 1972725
select * from MovimentosCaixa where CodMovCaixa = 101768431
select * from MovimentosCaixa where ValorMovimento = 2002.96 and CodFilial = 'BJG'  ORDER BY DataMovimento desc
select * from MovimentosCaixa_log where CodFilial = 'BJG' and AcaoLog = 'E' and CodCaixa = 8  ORDER BY DataMovimento desc
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-09-13 00:00:00','2024-09-13 00:00:00',6,2002.96,1,'Premiação GO','2024-09-13 00:00:00','C','09/2024','08/24 Premiação GO','C',NULL,'Normal','S','N',NULL,101768431,'N',NULL,NULL,NULL,NULL,'2024-09-13 00:00:00.000',NULL,'2024-09-01 00:00:00',NULL,10560,'CG','2024-09-16 09:53:52.000',NULL,NULL,NULL,NULL,'2024-09-01 00:00:00',NULL,3,NULL,NULL,NULL)
 SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)


SELECT * from ContasPagas where CodMovCaixa = 101768441


EXEC MonitoraMDFe 36020225
--UPDATE LONTANO_GSe.dbo.MDFe set Status = 0 WHERE Sequencial = 1741845

SELECT SituacaoConhecto,TipoConhecimento,  * from ConhecimentosTransporte where NumConhecto IN (57602,57604,57606,57607,57615,57627) AND CodUF = 'MG' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set TipoConhecimento = 'Complementado' where NumConhecto IN (57602,57604,57606,57607,57615,57627) AND CodUF = 'MG' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Complemento' where NumConhecto IN (57606,57607,57615,57627) AND CodUF = 'MG' and SerieConhecto = '2'

select  SituacaoConhecto,TipoConhecimento,* from ConhecimentosTransporte where NumConhecto IN (57870,57872,57873,57874,57875,57890) AND CodUF = 'MG' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set TipoConhecimento = 'Complemento'  where NumConhecto IN (57870,57872,57873,57874,57875,57890) AND CodUF = 'MG' and SerieConhecto = '2'