SELECT DISTINCT ConhecimentosTransporte.Sequencial,ConhecimentosTransporte.TipoCalculoLucro,  ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
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
WHERE ConhecimentosTransporte.DataEmissao BETWEEN '02/01/2025 00:00:00' AND '02/28/2025 23:59:29'
AND (ConhecimentosTransporte.SituacaoConhecto <> 'Cancelado' AND ConhecimentosTransporte.SituacaoConhecto <> 'Substituído') 
AND Clientes_Complemento.CodClienteMatriz = 3000502 
AND ConhecimentosTransporte.TipoConhecimento = 'Complemento'
ORDER BY ConhecimentosTransporte.Sequencial


--UPDATE  ConhecimentosTransporte set TipoCalculoLucro = 'Exportação' where Sequencial IN (SELECT DISTINCT ConhecimentosTransporte.Sequencial
----, ConhecimentosTransporte.TipoCalculoLucro,ConhecimentosTransporte.TipoCalculoLucro,  ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
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
--WHERE ConhecimentosTransporte.DataEmissao BETWEEN '02/01/2025 00:00:00' AND '02/28/2025 23:59:29'
--AND (ConhecimentosTransporte.SituacaoConhecto <> 'Cancelado' AND ConhecimentosTransporte.SituacaoConhecto <> 'Substituído') 
--AND Clientes_Complemento.CodClienteMatriz = 3000502 
--AND ConhecimentosTransporte.TipoConhecimento = 'Complemento')

--Sequencial	TipoCalculoLucro
--10000026861	Exportação
--10000026862	Puxinha
--10000026863	Puxinha
--10000026866	Puxinha
--10000026868	Puxinha
--10000026869	Puxinha
--10000027009	Exportação
--10000027010	Exportação
--10000027026	Exportação
--10000027082	Puxinha
--10000027109	Puxinha
--10000027110	Puxinha
--10000027111	Puxinha
--10000027112	Puxinha
--10000027113	Puxinha
--10000027114	Puxinha
--10000027143	Puxinha
--10000027162	Puxinha
--10000027163	Puxinha
--10000027164	Puxinha
--10000027167	Puxinha
--10000027168	Puxinha
--10000027169	Puxinha
--10000027170	Puxinha
--10000027171	Puxinha
--10000027198	Puxinha
--10000027199	Puxinha
--10000027200	Puxinha

