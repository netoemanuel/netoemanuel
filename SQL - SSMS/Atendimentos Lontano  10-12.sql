SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 99000109
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse IN( 114265,114227)
--DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114265
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 114265
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 114265



SELECT * FROM ConhecimentosTransporte WHERE Sequencial = 290000011508


SELECT SituacaoConhecto,DataEmbarque, * FROM ConhecimentosTerceiros WHERE	CodFreteTerceiro = 2017205
SELECT SituacaoConhecto, * FROM ConhecimentosTerceiros WHERE NumConhecto = '365557'

SELECT  CodContasReceber,*FROM ConhecimentosTerceiros_ContasReceber WHERE (CodFreteTerceiro = 2017205) AND (CodVeiculo = 9474) AND (DataEmbarque = '08/27/2023') AND (SerieConhecto = 'UN') AND (NumConhecto = '365557')

select * from ConhecimentosTerceiros_ContasReceber where SeqConhecto = 76657   --2007-08-27 00:00:00
--UPDATE ConhecimentosTerceiros_ContasReceber SET DataEmbarque = '2023-08-27 00:00:00' where SeqConhecto = 76657


