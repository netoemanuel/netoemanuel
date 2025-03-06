EXEC MonitoraMDFe 53114757
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1763338 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1763338
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '931240037369649', nProt = '931240037369649' where Sequencial = 1763338 and ID = 25525966 
--coloca cstat = 204 e status do mdfe = 2 cstat = 204
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET Status = 2, cstat = 204 where Sequencial = 1763338 and ID = 25525966 

---------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114159
--DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114159
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 114159
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 114159

---------------------------------------------------------------------------------------------------------------------------------------------------------------
--EXEC ConfereAjuste3Reais '2024-11-01', '2024-12-31 23:59', 'CONFERE'
--EXEC ConfereAjuste3Reais '2024-11-01', '2024-12-31 23:59', 'AJUSTA'
---------------------------------------------------------------------------------------------------------------------------------------------------------------
	

SELECT ValorPago FROM ConhecimentosRelacaoFretes WHERE NumSeqConhecto = 490000024503 and CodTipoPagamento = 6

select ValorRetidoINSS, * from ConhecimentosTransporte where NumConhecto IN(2400201,2400251,2400301,2400187) and CodUF = 'SP' and SerieConhecto = 'RC'

 --txtOutrasDespesasTab7(0).Text

 --txtINSSEmpresaTab7


SELECT COUNT(*) AS Registros FROM LONTANO_GSe.dbo.NFSe WHERE (Sequencial = 450000027310)

SELECT COUNT(*) AS Registros FROM LONTANO_GSe.dbo.NFSe WHERE (Sequencial = 450000027310)


