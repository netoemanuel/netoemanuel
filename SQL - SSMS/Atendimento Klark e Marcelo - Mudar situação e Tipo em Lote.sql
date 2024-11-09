-- Busca com Parametros definidos no chamado #22586 - ALTERAR ALÍQUOTA ISS NOTAS FISCAIS -- todas 5.00

--SELECT DISTINCT ConhecimentosTransporte.Sequencial, AliquotaICMSFrete
----, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
--FROM ConhecimentosTransporte 
--INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota 
--INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade 
--LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo
--LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento
--LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento
--LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
--LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol
--LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
--INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
--INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente
--INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga
--WHERE ConhecimentosTransporte.SerieConhecto = '2' AND ConhecimentosTransporte.DataEmissao BETWEEN '10/01/2024 00:00:00' AND '10/15/2024 23:59:29' AND ConhecimentosTransporte.SituacaoConhecto = 'Emitido' AND Clientes_Complemento.CodClienteMatriz = 22000357 ORDER BY ConhecimentosTransporte.Sequencial


--DECLARE @aliquotaISS float set @aliquotaISS = 2	

--update ConhecimentosTransporte set 
--basecalculoicms = ValorTotalFrete,  
--AliquotaICMSFrete = @aliquotaISS, -- <== Alterar aliquota aqui e na linha de baixo tambem caso necessario 
--valoricmsfrete = (ValorTotalFrete*@aliquotaISS/100)  -- <== Alterar aliquota aqui onde multiplica pelo ValorTotalFrete e divide por 100, caso necessario 
--WHERE Sequencial IN (SELECT DISTINCT ConhecimentosTransporte.Sequencial
----, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
--FROM ConhecimentosTransporte 
--INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota 
--INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade 
--LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo
--LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento
--LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento
--LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
--LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol
--LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
--INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
--INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente
--INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga
--WHERE ConhecimentosTransporte.SerieConhecto = '2' AND ConhecimentosTransporte.DataEmissao BETWEEN '10/01/2024 00:00:00' AND '10/15/2024 23:59:29' AND ConhecimentosTransporte.SituacaoConhecto = 'Emitido' AND Clientes_Complemento.CodClienteMatriz = 22000357 )--ORDER BY ConhecimentosTransporte.Sequencial)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





--#22601 - Alterar alíquota ISS
-- todas 5% 
SELECT DISTINCT ConhecimentosTransporte.Sequencial, AliquotaICMSFrete
--,ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF
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
WHERE ConhecimentosTransporte.CodUF = 'MS' AND ConhecimentosTransporte.SerieConhecto = '2' AND ConhecimentosTransporte.DataEmissao BETWEEN '07/01/2024 00:00:00' AND '07/31/2024 23:59:29' 
AND (ConhecimentosTransporte.SituacaoConhecto <> 'Cancelado'AND ConhecimentosTransporte.SituacaoConhecto <> 'Substituído')
AND Clientes_Complemento.CodClienteMatriz = 1000537 ORDER BY ConhecimentosTransporte.Sequencial



--DECLARE @aliquotaISS float set @aliquotaISS = 2	
--update ConhecimentosTransporte set 
--basecalculoicms = ValorTotalFrete,  
--AliquotaICMSFrete = @aliquotaISS, -- <== Alterar aliquota aqui e na linha de baixo tambem caso necessario 
--valoricmsfrete = (ValorTotalFrete*@aliquotaISS/100)  -- <== Alterar aliquota aqui onde multiplica pelo ValorTotalFrete e divide por 100, caso necessario 
--WHERE Sequencial IN ( SELECT DISTINCT ConhecimentosTransporte.Sequencial 
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
--WHERE ConhecimentosTransporte.CodUF = 'MS' AND ConhecimentosTransporte.SerieConhecto = '2' AND ConhecimentosTransporte.DataEmissao BETWEEN '07/01/2024 00:00:00' AND '07/31/2024 23:59:29' 
--AND (ConhecimentosTransporte.SituacaoConhecto <> 'Cancelado'AND ConhecimentosTransporte.SituacaoConhecto <> 'Substituído')
--AND Clientes_Complemento.CodClienteMatriz = 1000537)

