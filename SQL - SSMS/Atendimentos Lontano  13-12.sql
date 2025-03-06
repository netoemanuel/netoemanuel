EXEC MonitoraMDFe 24086716
--UPDATE LONTANO_GSe.dbo.mdfe SET Status = 0 WHERE Sequencial = 1768398

EXEC VerificaCTe 730000136947
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial = 730000136947


SELECT CodClientePagto,* FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 99000110
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114360
--DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114360
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 114360
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 114360


SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse in (114360,114358,114273)

SELECT * from Usuarios where CodUsuario = 11792
select * from Clientes where CodCliente = 89000028
SELECT CodClientePagto,* FROM ConhecimentosTransporte WHERE SerieConhecto = '0' AND CodUF = 'MT' AND NumConhecto = 741545 
EXEC VerificaCTe 220000082394