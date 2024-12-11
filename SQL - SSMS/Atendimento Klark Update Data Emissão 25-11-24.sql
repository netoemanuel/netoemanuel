SELECT DISTINCT ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
FROM ConhecimentosTransporte
INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota 
INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade 
LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento
LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete
LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente
INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga 
WHERE ConhecimentosTransporte.SerieConhecto = 'RF' 
AND ConhecimentosTransporte.DataEmissao BETWEEN '11/22/2024 00:00:00' AND '11/22/2024 23:59:29'
AND ConhecimentosTransporte.SituacaoConhecto = 'Emitido' 
AND ConhecimentosTransporte.CodPedidoFrete = 1001990 
ORDER BY ConhecimentosTransporte.Sequencial




--UPDATE ConhecimentosTransporte SET DataEmissao = '2024-09-20 00:00:00' where Sequencial IN (
--SELECT DISTINCT ConhecimentosTransporte.Sequencial
----ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
--FROM ConhecimentosTransporte
--INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota 
--INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
--INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade 
--LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
--LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento
--LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
--LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete
--LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
--LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
--INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
--INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente
--INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga 
--WHERE ConhecimentosTransporte.SerieConhecto = 'RF' 
--AND ConhecimentosTransporte.DataEmissao BETWEEN '09/22/2024 00:00:00' AND '09/22/2024 23:59:29'
--AND ConhecimentosTransporte.SituacaoConhecto = 'Emitido' 
--AND ConhecimentosTransporte.CodPedidoFrete = 1001990 )
--ORDER BY ConhecimentosTransporte.Sequencial

