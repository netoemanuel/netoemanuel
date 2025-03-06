SELECT ValorNF,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 648142 and CodUF = 'GO' and SerieConhecto = '0'  --8077140.00 / 4038.57
--UPDATE ConhecimentosTransporte set ValorNF = 80771.40, SeguroAverbado = 40.38 where NumConhecto = 648142 and CodUF = 'GO' and SerieConhecto = '0'

SELECT CIOT,* from ConhecimentosTransporte where NumConhecto = 742707 and CodUF = 'MT' and SerieConhecto = '0' --000000000000/0000
 --update ConhecimentosTransporte SET CIOT = null where NumConhecto = 742707 and CodUF = 'MT' and SerieConhecto = '0'

SELECT dbo.CalculoSeguroAverbado( 81000701,85698.54 ,'Emitido','Normal')
SELECT GRIS_NaoDescontado,SeguroAverbado, QuantidadeSaida,ValorNF,* from ConhecimentosTransporte where NumConhecto in (22787,22789,22763,22786) and CodUF = 'PA' 
--SELECT GRIS_NaoDescontado,SeguroAverbado,* from ConhecimentosTransporte_log where NumConhecto in (22787,22789,22763,22786) and CodUF = 'PA'
--UPDATE ConhecimentosTransporte SET GRIS_NaoDescontado = 0.00  where NumConhecto in (22787,22789,22763,22786) and CodUF = 'PA' AND SerieConhecto = '0'
--22763 124.97
--22786 121.69
--22789 121.55

SELECT ValorNF,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 22705 and CodUF = 'PA' and SerieConhecto = '0'  --1042722.17 / 521.36
--UPDATE ConhecimentosTransporte set ValorNF = 104272.17, SeguroAverbado = 52.14 where NumConhecto = 22705 and CodUF = 'PA' and SerieConhecto = '0'


--para corrigir a rejeição:
--EXEC LONTANO_GSe.dbo.ListarNFSeMG_EnvioPendente
--alterar na procedure os campos CodigoMunicipio e MunicipioIncidencia para 3170206.
SELECT * FROM ConhecimentosTransporte WHERE Sequencial = 530000173604
SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 99000114
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114816
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114726   -- autorizada.
DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114795
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 114795
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 114795