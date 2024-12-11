exec VerificaCTe 50000020613
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 50000020613

EXEC VerificaCTe 50000020612
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 50000020612

SELECT * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 50000020612 and ID = 23120970
--DELETE from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 50000020612 and ID = 23120970

EXEC VerificaCTe 310000101635

	SELECT * from CaramuruControle where ID = '6001911789'