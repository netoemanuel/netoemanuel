SELECT DISTINCT
ConhecimentosTransporte.TipoCalculoLucro,ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, 
ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF
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
WHERE
	ConhecimentosTransporte.DataEmissao BETWEEN '12/01/2024 00:00:00' AND '12/31/2024 23:59:29'
	AND Clientes_Complemento.CodClienteMatriz = 2004332 
	AND PedidosFrete.CodFilialComissao = 'RO'
ORDER BY 
	ConhecimentosTransporte.Sequencial


--txtLucroBrutoTab7(0).Text = Format(CCur(txtTotalFreteEmpresaTab7(0).Text) - (CCur(txtTotalFreteMotoristaTab7(0).Text) + CCur(txtPISTab7(0).Text) + CCur(txtCofinsTab7(0).Text) + CCur(txtSeguroAverbadoTab7(0).Text) 
--+ CCur(txtICMSTab7(0).Text) + CCur(txtICMSRetTab7(0).Text) + CCur(txtOutrasDespesasTab7(0).Text) + CCur(txtPedagioTab7(0).Text) + CCur(txtINSSEmpresaTab7(0).Text) + CCur(txtTarifaTACTab7(0).Text) 
--+ CCur(txtIRPJ_CSLLTab7(0).Text)), "#,##0.00")


select * from LONTANO_GSe.dbo.MDFe where Id = '31250111455829000529580050002106401016453972'

SELECT * from MDFeViagem_OrdemEmbarque where SeqViagem = 1645397

exec MonitoraMDFe 27085981