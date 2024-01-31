use RODOMAIOR

select * from RODOMAIOR_GSe.dbo.nfe where id = '51231214796754000295550090000014691000548652'
SELECT  Descricao,Erro, * FROM Nfe_Importacao WHERE ChaveNfe = '51231294813102006704550010000005361214712328' ORDER BY Id DESC
SELECT TOP(100) Descricao,Erro, * FROM Nfe_Importacao order by DataCriacao desc

select * from ConhecimentosTransporte where CodOrdemEmbarque = 51012141
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 510000009605
--update RODOMAIOR_GSe.dbo.cte set Status = Status where Sequencial = 510000009605
EXEC VerificaCTe 510000009605

select tpCTe, * from RODOMAIOR_GSe.dbo.cte where Sequencial = 510000009605
--UPDATE RODOMAIOR_GSe.dbo.cte set tpCTe = 3 where Sequencial = 510000009605

--EXEC Grava_MDFe 51012141
--EXEC  RODOMAIOR_GSe.dbo.GeraMDFeViagem 51012141, 12451, 'CG'
exec MonitoraMDFe 51012141
--delete from RODOMAIOR_GSe.dbo.mdfe where Sequencial = 552746


select * from ConhecimentosTransporte where  NumConhecto =  46290 and CodUF = 'MT'
exec VerificaCTe 810000004352
--delete  from RODOMAIOR_GSe.dbo.cte where Sequencial = 810000004352
--exec Grava_CTe 810000004352

exec MonitoraMDFe 70002013
--delete from RODOMAIOR_GSe.dbo.mdfe where Sequencial = 552788
exec MonitoraMDFe 22026097
--delete from RODOMAIOR_GSe.dbo.mdfe where Sequencial = 552759

select * from RODOMAIOR_GSe.dbo.cte where Status = 2 and DataCriacao > '2023-12-14 06:38:24.607' and UF = 'MT'
--delete from RODOMAIOR_GSe.dbo.cte where Status = 2 and DataCriacao > '2023-12-14 06:38:24.607' and UF = 'MT'
select * from ConhecimentosTransporte where  NumConhecto =  46298 and CodUF = 'MT'


exec VerificaCTe 960000002298

exec Grava_CTe 510000009610
exec Grava_CTe 40000036771
exec Grava_CTe 180000014651
exec Grava_CTe 180000014652
exec Grava_CTe 510000009608
exec Grava_CTe 580000004380
exec Grava_CTe 810000004351
exec Grava_CTe 810000004352
exec Grava_CTe 960000002296
exec Grava_CTe 960000002297