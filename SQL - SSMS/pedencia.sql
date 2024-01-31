use RODOMAIOR

SELECT ISNULL(PercFaturaAdto, 0) AS PercFaturaAdto FROM ConhecimentosContasReceber 
INNER JOIN ContasReceber ON ContasReceber.CodContasReceber = ConhecimentosContasReceber.CodContasReceber 
WHERE (NumSeqConhecto = 510000005917) AND (CodTipoFatura = 12 OR CodTipoFatura = 20)

SELECT NumeroNF FROM NotasFiscaisConhecimento
WHERE SequencialConhecimento = 510000005917 ORDER BY Sequencial

SELECT ValorFaturado FROM ConhecimentosContasReceber 
INNER JOIN ContasReceber ON ConhecimentosContasReceber.CodContasReceber = ContasReceber.CodContasReceber 
WHERE (NumSeqConhecto = 510000005917) AND (CodTipoFatura = 12)

SELECT NumeroParcela, ContasReceber.CodContasReceber, ContasReceber.DataEmissao AS DataEmissaoCR, ContasReceber.NumDocumento, ContasReceber.DataVencimento, ContasReceber.CodMoeda, ContasReceber.PercFaturaAdto, Clientes.CodCliente, Clientes.RazaoSocial, Clientes.Endereco, Clientes.Bairro, Cidades.NomeCidade, Cidades.CodUF AS UFCliente, Clientes.CEP, Clientes.CNPJ_CPF, Clientes.InscEstadual, Cidades1.NomeCidade AS CidadeOrigem, Cidades3.NomeCidade AS CidadeSuborOrigem, Cidades1.CodUF AS UFOrigem, Cidades2.NomeCidade AS CidadeDestino, Cidades4.NomeCidade AS CidadeSuborDestino, Cidades2.CodUF AS UFDestino, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.CodUF, ConhecimentosTransporte.ValorNF, ConhecimentosTransporte.NumConhecto, 
ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.QuantidadeSaida, CASE WHEN CodTipoFatura = 1 THEN NULL ELSE ConhecimentosTransporte.QuantChegFaturamento END AS QuantChegFaturamento, ConhecimentosContasReceber.ValorFaturado, ConhecimentosTransporte.ValorIcmsFrete, 
CASE WHEN CliComp.CodClienteMatriz = 1000458 OR ContasReceber.CodTipoFatura = 22 OR ContasReceber.CodTipoFatura = 23 THEN ConhecimentosTransporte.ValorICMSRetido ELSE CASE WHEN (PedidosFrete.ICMSDestacado = 'U' 
AND PedidosFrete.CodUFTributacao = 'MS' AND ISNULL(CliComp.CreditoICMS, 'N') = 'N') THEN ROUND((ISNULL(ConhecimentosTransporte.ValorICMSRetido, 0) * 0.8), 2) 
ELSE ConhecimentosTransporte.ValorICMSRetido 
END END as ValorICMSRetido, ContasReceber.CodFilialOrigem AS Filial, ConhecimentosContasReceber.ValorQuebra, ConhecimentosTransporte.TarifaSEFAZ, ContasReceber.IndicadorEmissaoFatura, ContasReceber.DescontoDifPesoFatura, ContasReceber.CodTipoFatura, ContasReceber.Observacao, ComboBox_Comercial.Descricao, ComplementoConhecimento.DataEntradaDesembarque, ComplementoConhecimento.DataSaidaDesembarque, ComplementoConhecimento.TempoEstadiaACobrar, ComplementoConhecimento.ValorEstadia, ComplementoConhecimento.IndFaturaEstadia, ComplementoConhecimento.IndQtdeEstadia, Veiculos.PlacaVeiculo, ComplementoConhecimento.ToleranciaEstadia, ValorTotalFrete, ConhecimentosTransporte.QuantidadeChegada, Pedagio, ContasReceber.ICMSEstadia, PedidosFrete.CodPedidoFrete, CliComp.CodClienteMatriz FROM ConhecimentosTransporte INNER JOIN ConhecimentosContasReceber_Saldo ConhecimentosContasReceber ON ConhecimentosTransporte.Sequencial = ConhecimentosContasReceber.NumSeqConhecto INNER JOIN ContasReceber ON ConhecimentosContasReceber.CodContasReceber = ContasReceber.CodContasReceber INNER JOIN Clientes ON ContasReceber.CodCliente = Clientes.CodCliente INNER JOIN Cidades ON Clientes.CodCidade = Cidades.CodCidade 
INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota
INNER JOIN NaturezaCarga ON ConhecimentosTransporte.CodNaturezaCarga = NaturezaCarga.CodNaturezaCarga 
INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeOrigem = Cidades1.CodCidade
INNER JOIN Cidades Cidades2 ON Rotas.CodCidadeDestino = Cidades2.CodCidade 
INNER JOIN ComboBox_Comercial ON ConhecimentosTransporte.UnidadeFrete = ComboBox_Comercial.Codigo AND ComboBox_Comercial.NomeComboBox = 'cboUnidadeFrete' 
INNER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
INNER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete
LEFT OUTER JOIN Cidades Cidades3 ON Cidades1.CodCidade_Subor = Cidades3.CodCidade 
LEFT OUTER JOIN Cidades Cidades4 ON Cidades2.CodCidade_Subor = Cidades4.CodCidade
LEFT OUTER JOIN ComplementoConhecimento ON ConhecimentosTransporte.Sequencial = ComplementoConhecimento.NumSeqConhecto 
INNER JOIN Clientes_Complemento CliComp ON CliComp.CodCliente = ConhecimentosTransporte.CodClientePagto 
WHERE (ContasReceber.CodTipoFatura = 1) AND (ContasReceber.NumDocumento BETWEEN 'CG-135881' AND 'CG-135883') ORDER BY NumeroParcela, NumDocumento, NumConhecto

select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto in( 23136,32452,32389,32438,23151,23152,23150 )and CodUF = 'MT'