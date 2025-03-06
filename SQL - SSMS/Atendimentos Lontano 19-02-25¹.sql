SELECT ValorMovimento,* FROM MovimentacaoBancaria WHERE (CodMovBancaria = 37005716) --3406.58
--UPDATE  MovimentacaoBancaria SET ValorMovimento = 1406.00 WHERE (CodMovBancaria = 37005716) 
SELECT * FROM ConhecimentosRelFretes_Cheques WHERE (SeqCheque = 370000005891) AND (CodRelacaoFrete = 37001183)
SELECT ChequesEmitidos.*, ComboBox_Financeiro.Descricao FROM ChequesEmitidos 
LEFT OUTER JOIN ComboBox_Financeiro ON ChequesEmitidos.CodOcorrenciaCheque = ComboBox_Financeiro.Codigo AND ComboBox_Financeiro.NomeComboBox = 'cboOcorrenciaCheque'
WHERE (ChequesEmitidos.CodMovBancaria = 37005716) order by DataCriacao desc
SELECT * FROM ChequesEmitidos where NumeroCheque = 19391041
--UPDATE  ChequesEmitidos SET ValorCheque = 1406.00  where NumeroCheque = 19391041  --3406.58

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
EXEC MonitoraMDFe 98035370

SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 650850  and CodUF = 'GO'

exec VerificaCTe 230000047125  --ValidaMargemLucro_Filial

SELECT dbo.ValidarMargemLucroPedido(27008248) AS Validar

select * from PedidosFrete where CodPedidoFrete = 27008248
select ValorFreteMotorista,* from PedidosFrete_Log where CodPedidoFrete = 27008248 ORDER BY DataLog desc

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT ValorMovimento FROM MovimentacaoBancaria_log WHERE (CodMovBancaria = 37005716)
--UPDATE  MovimentacaoBancaria SET ValorMovimento = 2000.58 WHERE (CodMovBancaria = 37005716) 
SELECT ValorMovimento,* FROM MovimentacaoBancaria_log WHERE (CodMovBancaria = 37005716)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT dbo.ValidarMargemLucroPedido(27008248) AS Validar

--'LNC-11/03/2024 -> Para atender Thiago (#15812): quando paga pedágio e este é de responsabilidade do cliente Tomador, não deve fazer a crítica aqui,
--pois a Tarifa Motorista estará com o pedágio embutido, para poder diminuir no manifesto quando destacar o pedágio. Ou seja, a margem aqui distorceria.
select IndPagaPedagio,* from PedidosFrete where CodPedidoFrete = 27008248
select IndPagaPedagio,* from PedidosFrete_log where CodPedidoFrete = 27008248
--UPDATE PedidosFrete SET IndPagaPedagio = 'N' where CodPedidoFrete = 27008248
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from Clientes where CodCliente IN( 23000104,1000840,1008743)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT SituacaoConhecto,* FROM ConhecimentosTransporte WHERE Sequencial = 530000175004
SELECT SituacaoConhecto, * FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 58293
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 116193
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114726   -- autorizada.
--DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 116193
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 116193
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 116193
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe where Sequencial = 530000173549
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT CodFilialComissao,SituacaoConhecto,CodRota,* FROM ConhecimentosTransporte WHERE  NumConhecto IN (222337,222338) and CodUF = 'PR' and SerieConhecto = '0'  --FRP
--UPDATE ConhecimentosTransporte SET CodFilialComissao = 'CAM' WHERE  NumConhecto IN (222337,222338) and CodUF = 'PR' and SerieConhecto = '0'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT ValorMovimento FROM MovimentacaoBancaria WHERE (CodMovBancaria = 56056617)
SELECT * FROM MovimentacaoBancaria WHERE (CodMovBancaria = 56056617)  --3033.52
--UPDATE  MovimentacaoBancaria SET ValorMovimento = 1691.00  WHERE (CodMovBancaria = 56056617)

SELECT SUM(ValorCheque) AS ValorTotalPago FROM ConhecimentosRelFretes_Cheques WHERE (SeqCheque = 560000057086) AND (CodRelacaoFrete = 56005946)
SELECT * FROM ConhecimentosRelFretes_Cheques WHERE (SeqCheque = 560000057086) AND (CodRelacaoFrete = 56005946)
--UPDATE ConhecimentosRelFretes_Cheques SET ValorCheque =  WHERE (SeqCheque = 560000057086) AND (CodRelacaoFrete = 56005946)

SELECT * FROM ChequesEmitidos where NumeroCheque = 235092 and CodFilial = 'CG' and CodContaBancaria = 106
--UPDATE ChequesEmitidos SET ValorCheque = 1691.00 where NumeroCheque = 235092 and CodFilial = 'CG' and CodContaBancaria = 106 ---3033.52

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
EXEC MonitoraMDFe 12045013 
--UPDATE LONTANO_GSe.dbo.MDFe set Status = 0 WHERE Sequencial = 1795003
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT SituacaoConhecto,* FROM ConhecimentosTransporte WHERE NumConhecto = 66302 and CodUF = 'GO' AND SerieConhecto = '2' --Emitido
--UPDATE ConhecimentosTransporte SET SituacaoConhecto = 'Faturado' WHERE NumConhecto = 66302 and CodUF = 'GO' AND SerieConhecto = '2'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT CodRota,* FROM ConhecimentosTransporte WHERE NumConhecto in (542960,542962) and CodUF = 'MS' and SerieConhecto = '0' --116759
--UPDATE  ConhecimentosTransporte set CodRota =116443 WHERE NumConhecto in (542960,542962) and CodUF = 'MS' and SerieConhecto = '0' 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM RequisicaoProdutos where CodRequisicao = 2655962 --2024-02-08 00:00:00.000
--UPDATE RequisicaoProdutos SET DataRequisicao = '2025-02-08 00:00:00.000' where CodRequisicao = 2655962


SELECT ISNULL(SUBSTRING(NossoNumero, 4, 11), 0) AS NossoNumero FROM ContasReceber WHERE CodPortador = 4 AND CodContasReceber = 53132228 ORDER BY NossoNumero DESC
--237936860496003006077510010500071100050000348725
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT DiferencaFreteAgregado,IndPagtoDiferenca,* FROM ConhecimentosTransporte WHERE NumConhecto in (222140) and CodUF = 'PR' and SerieConhecto = '0'  --Paga
--UPDATE  ConhecimentosTransporte SET IndPagtoDiferenca = null WHERE NumConhecto in (222140) and CodUF = 'PR' and SerieConhecto = '0'

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
EXEC MonitoraMDFe 78037024
--update Lontano_GSe.dbo.MDFe set status = 0 where Sequencial = 1795850
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select DiferencaFreteAgregado,IndPagtoDiferenca,* from ConhecimentosTransporte where NumConhecto = 142053 and CodUF = 'SP'

SELECT * from ConhecimentosRelacaoFretes where NumSeqConhecto = 50000020892

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 142053                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


select DiferencaFreteAgregado,IndPagtoDiferenca,* from ConhecimentosTransporte where NumConhecto = 649034 and CodUF = 'SP'
