SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PA' AND CTRC.Numconhecto = 23411                                        
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT ISNULL(SUM(ValorPago),0) as ValorPago FROM ConhecimentosRelacaoFretes WHERE NumSeqConhecto = 260000026199 and CodTipoPagamento = 3

SELECT * from ConhecimentosTransporte where NumConhecto = 1968482 and CodUF = 'MT' and SerieConhecto = '1'
SELECT * from ConhecimentosTransporte where NumConhecto = 1968482 and CodUF = 'PA' and SerieConhecto = '1'
--UPDATE ConhecimentosTransporte SET CodUF = 'PA' where  Sequencial = 150000023068

SELECT TipoImpressao,* FROM TaloesConhecimento WHERE (CodUF = 'MG') AND (SerieConhecto = '2') AND (99000126 BETWEEN ConhecimentoInicial AND ConhecimentoFinal)x
SELECT * FROM ConhecimentosTransporte WHERE Sequencial = 530000174577
SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 99000126
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 115627
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114726   -- autorizada.
--DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 115627
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 114795
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 115627


SELECT * from MovimentacaoBancaria where CodMovBancaria = 1628212
--UPDATE  MovimentacaoBancaria SET Gerado = 'N' where CodMovBancaria = 1628212

select * from Fornecedores where Nome LIKE 'DAYANA%CORDOVA%'
select * from Fornecedores_log where CodFornecedor = 1108165 ORDER BY DataLog desC

--UPDATE Fornecedores SET Endereco = 'Rua Porto do Sol 208' where CodFornecedor = 1108165

SELECT * from ContasPagar_Log where CodContasPagar = 1855419 ORDER BY DataLog desc

SELECT Situacao,* from ContasPagar where CodContasPagar = 1855419   --Selecionada PAG-FOR
--UPDATE ContasPagar SET Situacao = 'Selecionada PAG-FOR' where CodContasPagar = 1855419  

SELECT Situacao,* from ContasPagar where CodContasPagar = 10015005 

SELECT Situacao,* from ContasPagar where CodContasPagar = 10015005   --Selecionada PAG-FOR
SELECT Situacao,* from ContasPagar_log where CodContasPagar = 10015005   --Selecionada PAG-FOR

SELECT * from ContasPagas where CodContasPagar = 10015005
--UPDATE ContasPagar SET Situacao = 'Liberada' where CodContasPagar = 10015005 


--Update RecDespMovCaixa set ValorRecDesp = ValorRecDesp + 366,67 WHERE CodMovCaixa = 101847958 and codrecdesp = 468

select * from RecDespMovCaixa WHERE CodMovCaixa = 101847958


SELECT mc.CodMovCaixa, mc.CodFilial, mc.CodCaixa, mc.CodTipoMovCaixa, mc.NumDocumento, mc.ValorMovimento, mc.TipoDocumento, mc.CodRecDesp 
FROM ValoresRelacaoFretes vr 
INNER JOIN MovimentosCaixa mc ON mc.CodMovCaixa = vr.CodMovCaixa 
INNER JOIN RelacaoFretes rf ON rf.CodRelacaoFrete = vr.CodRelacaoFrete  WHERE rf.TipoPagtoRelacao in (8,9,10) and vr.CodTipoValor in (32,33,34) AND rf.CodContasPagar = 10015005

SELECT Sequencial,* from ConhecimentosTransporte where NumConhecto in (1968985,1968987,1968986,1898469) and CodUF = 'PA' and SerieConhecto = '1'
--UPDATE ConhecimentosTransporte  SET CodUF = 'PA' where Sequencial in (SELECT Sequencial from ConhecimentosTransporte where NumConhecto in (1968985,1968987,1968986,1898469) and CodUF = 'mt' and SerieConhecto = '1')

SELECT Sequencial,* from ConhecimentosTransporte where NumConhecto in (1968469) and CodUF = 'MT' and SerieConhecto = '2'
--UPDATE  ConhecimentosTransporte  SET CodUF = 'PA' where Sequencial in (150000022924)

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 424290                                        
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC