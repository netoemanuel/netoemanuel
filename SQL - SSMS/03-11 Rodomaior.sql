use RODOMAIOR


exec VerificaCTe	780000003710

--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial = 780000003710


SELECT ISNULL(Situacao,'TOTAL') as Situação, count(*) AS QTD FROM CTRC_Cargill WHERE Situacao IN ('Erro','Pendente') GROUP BY Situacao WITH ROLLUP


select * from ConhecimentosTransporte where CodMotorista = 37000717

select * from ConhecimentosTransporte where CodMotorista = 2005918