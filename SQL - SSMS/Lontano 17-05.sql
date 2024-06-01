USE LONTANO

select * from ConhecimentosTransporte where NumConhecto = 521953 and CodUF = 'MS'
SELECT * from LONTANO_GSe.dbo.cte where sequencial = 580000017105
--DELETE from LONTANO_GSe.dbo.cte where sequencial = 580000017105
EXEC VerificaCTe 580000017105
--EXEC Grava_CTe 580000017105
--update LONTANO_GSe.dbo.cte set status = 0, indIEToma = 9 where sequencial = 580000017105


select TarifaFreteMotorista,TotalFreteMotorista,ValorLiquidoFrete,SerieConhecto from ConhecimentosTransporte where NumConhecto 
IN (712792,712794,712795,712795,712796,712798,712801,712802,712804,712805,712808,712809,712812,712813) and CodUF = 'MT'

--TarifaFreteMotorista	TotalFreteMotorista	ValorLiquidoFrete
--7333.05	7333.05 	 1095.75
--2446.84	2446.84 	 559.88
--2449.15	2449.15 	 560.13
--2504.29	2504.29   	 572.26
--6465.60	6465.60   	 180.80
--4413.31	4413.31		 183.17
--5773.10	5773.10      378.26
--6860.16	6860.16     -426.24
--4561.92	4561.92 	-672.00
--7333.05	7333.05 	-895.93
--6151.68	6151.68 	-424.96
--4433.47	4433.47 	-544.19
--6497.85	6497.85 	1083.59

--Laércio, estou com um chamado do Lindomar da REPOM. nao consegui achar o porque da diferença. 

select * from Fatura_Repom where ID = 141 -- valor menor
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141
select (  2626987.07  - 2625694.07) -- -1293.00
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and ValorTransacao = 161841.89
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and Sequencial_CTRC in (890000031132,890000031133,530000164577,260000024517,530000164589,530000164590,240000058742,60000030413,310000098515,310000098523)
select SituacaoConhecto,* from ConhecimentosTransporte where Sequencial in (240000058742,530000164589,530000164590)
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and Sequencial_CTRC in (240000058742,530000164589,530000164590)
select * from Fatura_Repom_Itens where IDFatura_REPOM = 141 and Sequencial_CTRC in (890000031132,890000031133)
SELECT ((2013.00 + 2007.00)- (903.00 + 910.00 + 3500.00))

select ValorDocumento,ValorPagar,Saldo,Situacao, * FROM ContasPagar where CodContasPagar = 1941071
select ValorDocumento,ValorPagar,Saldo,Situacao, * FROM ContasPagar_log where CodContasPagar = 1941071
--UPDATE ContasPagar set ValorDocumento = (ValorDocumento + 1293.00), ValorPagar = (ValorPagar + 1293.00), Saldo = (Saldo + 1293.00) where CodContasPagar = 1941071


