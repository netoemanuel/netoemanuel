use RODOMAIOR


exec VerificaCTe 680000018256

--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial = 680000018256


SELECT Status, * FROM RODOMAIOR_GSe.dbo.CTe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)
SELECT Status, * FROM RODOMAIOR_GSe.dbo.Eventos_CTe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)
SELECT Status, * FROM RODOMAIOR_GSe.dbo.MDFe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)
SELECT Status, * FROM RODOMAIOR_GSe.dbo.Eventos_MDFe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)


--update RODOMAIOR_GSe.dbo.Eventos_CTe set status = 0 WHERE sequencial = 700000001999