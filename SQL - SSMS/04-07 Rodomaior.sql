use RODOMAIOR

exec VerificaCTe 970000002888

select Status, * from RODOMAIOR_GSe.dbo.Eventos_CTe where Status = 0 where Sequencial_CTe = 970000002888

-----------------------------------------------------------------------------------------------------------

exec Monitoramdfe 9020103

select * from RODOMAIOR_GSe.dbo.mdfe where Sequencial in (488610,488603,488600,488595)
--delete  from RODOMAIOR_GSe.dbo.mdfe where Sequencial in (488610,488603,488600,488595)

exec MonitoraMDFe 9020104
--delete  from RODOMAIOR_GSe.dbo.mdfe where Sequencial in (488629)

SELECT Status, UF, cUF, tpEmis, tpCTe, * FROM RODOMAIOR_GSe.dbo.CTe 
WHERE DataCriacao > '2023-07-04 00:00:01' AND Status NOT IN (1, 5, 9)

select * from ConhecimentosTransporte where NumConhecto = 69610
exec VerificaCTe 860000001916

select * from RODOMAIOR_GSe.dbo.CTe_LOG where ID in (5894376,5894375,5894374,5894350,5894349) and Sequencial = 860000001916
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where ID in (5894376,5894375,5894374,5894350,5894349) and Sequencial = 860000001916

exec VerificaCTe 890000002296
select Status,* from RODOMAIOR_GSe.dbo.cte where Sequencial = 890000002296
--update RODOMAIOR_GSe.dbo.cte set status = 1 where Sequencial = 890000002296
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where ID in (5894351,5894352) and Sequencial = 890000002296

exec VerificaCTe 860000001916
select Status,* from RODOMAIOR_GSe.dbo.cte where Sequencial = 860000001916
--update RODOMAIOR_GSe.dbo.cte set status = 1 where Sequencial = 860000001916
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where ID in (5894351,5894352) and Sequencial = 890000002296

exec VerificaCTe 830000003929
select Status,* from RODOMAIOR_GSe.dbo.cte where Sequencial = 830000003929
--update RODOMAIOR_GSe.dbo.cte set status = 1 where Sequencial = 830000003929
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where ID in (5894347,5894348) and Sequencial = 830000003929

SELECT Status, UF, cUF, tpEmis, tpCTe, * FROM RODOMAIOR_GSe.dbo.CTe 
WHERE DataCriacao > '2023-07-04 00:00:01' AND Status NOT IN (1, 5, 9)

exec VerificaCTe 880000002260
select Status,* from RODOMAIOR_GSe.dbo.cte where Sequencial = 580000003414
--update RODOMAIOR_GSe.dbo.cte set status = 0 where Sequencial = 580000003414
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where ID in (5894370,5894369,5894368,5894336) and Sequencial = 580000003414

select * from ConhecimentosTransporte where NumConhecto = 69601 and CodUF = 'MG'
exec VerificaCTe 580000003414
--update RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial = 580000003414

-----------------------------------------------------------------------------------------------------------

exec Monitoramdfe 2043444