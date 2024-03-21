use LONTANO


--Conhecimento
select * from ConhecimentosTransporte where NumConhecto = 61849 and CodUF = 'GO' 
--SQL estadia
SELECT ComplementoConhecimento.IndFaturaEstadia,ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.QuantChegFaturamento, ComplementoConhecimento.DataEntradaDesembarque, 
ComplementoConhecimento.DataSaidaDesembarque, ComplementoConhecimento.ToleranciaEstadia, ComplementoConhecimento.TempoEstadiaACobrar, 
ComplementoConhecimento.ValorEstadia, ComplementoConhecimento.IndFaturaEstadia, ComplementoConhecimento.IndQtdeEstadia, ComplementoConhecimento.IndPagtoEstadia,
ConhecimentosTransporte.CodUF, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodClientePagto, ConhecimentosTransporte.CodPedidoFrete,
ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.CodRota, ConhecimentosTransporte.CodNaturezaCarga
FROM	ConhecimentosTransporte
LEFT OUTER JOIN ComplementoConhecimento ON ConhecimentosTransporte.Sequencial = ComplementoConhecimento.NumSeqConhecto WHERE Sequencial IN( 280000157108,730000132794)

select * from ConhecimentosComplementados where 730000132794 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

select * from ConhecimentosTransporte where Sequencial = 280000157108


wtf 1148  -- SELECT COUNT(*) AS Registros FROM RequisicaoProdutos WHERE (CodRequisicao = 2589099)
wtf 598  --SELECT COUNT(*) AS Registros FROM OcorrenciasAuditoria WHERE (CodPontoAuditoria = 36) AND (CodChave1 = '2589099') AND (SituacaoOcorrencia = 'Pendente')
Kill  598
blk