--Dia 23/08/2022 Lontano%%%%

--Ticket #3375 - Ajustar valor da mercadoria e seguro 

--SELECT ValorNF, Outros, * from ConhecimentosTransporte where NumConhecto	= 536405 AND CodUF = 'GO'
--UPDATE ConhecimentosTransporte SET ValorNF = 102761.60, Outros = 30.83 where Sequencial = 230000036446


--Ticket #3378 - Exclusão de vale na Guia 03 relação 2007335

--SELECT OutrasDespesas,TotalRelacao,* from RelacaoFretes where CodRelacaoFrete = 2007335
--SELECT * from Colaboradores where NomeColaborador LIKE '%Luciana%Oliveira%'
--OutrasDespesas	TotalRelacao	CodRelacaoFrete	CodFornecedor	DataEntradaRelacao	DataPrevistaPagamento	DataChegadaDocumentos	CodSituacao	CodIndicadorDiferenca	TotalRelacao	OutrasDespesas	Desconto	ValorDiferenca	Observacoes	CodContasPagar	CodRelacaoFreteDiferenca	CodUsuario	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndicadorGeracao	DataFechamento	IndEnvioSPED	TipoPagtoRelacao	CodFilial	CodContaBancaria	DataPostagem
---300.00        	75985.61	2007335	1000428	2022-05-09 00:00:00	2022-05-09 00:00:00	2022-05-09 00:00:00	2	NULL	75985.61	-300.00	NULL	NULL	adto e saldo	2152870	NULL	NULL	14170	RO	2022-05-09 08:10:25.000	13932	CG	2022-08-17 16:29:42.000	NULL	NULL	00124663        99  	1	NULL	NULL	2022-05-09 00:00:00

--UPDATE RelacaoFretes SET OutrasDespesas = NULL, TotalRelacao = 75685.61 WHERE CodRelacaoFrete = 2007335

--SELECT ValorDocumento,* from ContasPagar where CodContasPagar = 2152870
--ValorDocumento	CodContasPagar	CodFornecedor	DataVencimento	CodTipoDocumento	NumDocumento	NumeroParcela	IndDocumento	CodBanco	NumeroBoleto	CodBarrasBoleto	DataEmissao	ValorDocumento	ValorPagar	Saldo	CodMoeda	ValorDesconto	DataLimiteDesconto	Multa	TipoMulta	JurosDiario	TipoJuros	Situacao	CodTipoDespesa	Historico	Observacao	CodFilialOrigem	CodFilialPagto	DiferencaPagto	CodTipoCobranca	CodTipoContasPagar	CodContrato	CodFilialBancaria	CodContaBancaria	CodFilialCaixa	CodCaixa	IndRetencao	CodNotaEntrada	PercentualImposto	Baixado	CodUsuarioLiberacao	HoraConsultaSaldo	CodOrdemServico	DataChegadaDocumento	CodRequisicao	IndicadorRequisicao	IndicadorOS	IndicadorDespPneus	MesAnoCompetencia	IndicadorMovimento	CodFilialRemessa	CodContaRemessa	MesAnoCompetencia2	ChecagemIndicador	PosicaoFinanceira	CodRespAprovacaoFrota	Dispensa2aVia	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodContasPagarNF	IndDescontoNF	AprovacaoNotasCAP	CodEmpresaParam	IndEnvioSPED	CodNotaDevolucao	ValorDevolucao	CodAgenciaOP	MotivoLiquidacao	CodMovCaixa	RespJurosMulta	CodRespJurosMulta	HistoricoContabil	TipoContaDeposito	ChavePIX
--75985.61	2152870	1000428	2022-05-09 00:00:00	1	2007335	NULL	C	NULL	NULL	NULL	2022-05-09 00:00:00	75985.61	75985.61	0.00	1	NULL	NULL	NULL	NULL	NULL	NULL	Liquidada	NULL	Pagto ref. Relação 2007335 de 09/05/2022	NULL	RO	RO	N	4	1	NULL	NULL	NULL	NULL	NULL	N	NULL	NULL	NULL	NULL	NULL	NULL	2022-05-09 00:00:00.000	NULL	N	N	N	05/2022	NULL	NULL	NULL	2022-05-01 00:00:00	N	S	NULL	NULL	14170	RO	2022-05-09 08:10:25.000	13932	CG	2022-08-17 16:29:42.000	NULL	NULL	NULL	3	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL

--UPDATE ContasPagar SET ValorDocumento = 75685.61 WHERE CodContasPagar = 2152870


--select CodControleCaramuru, * FROM PedidosFrete where CodPedidoFrete = 28007717
--CodControleCaramuru	CodPedidoFrete	CodClienteEmitente	CodClienteDestinatario	CodClientePagamento	CodConsignatRedesp	CodRota	CodContrato	NumeroPedidoCliente	NumeroPedidoTransf	DataPedido	DataLimiteEmbarque	CodNaturezaCarga	QuantPedido	QuantRestante	CodUnidadeMedida	ValorFreteEmpresa	ValorFreteMotorista	ValorPedagio	UnidadeFrete	DespesaAdubo	CodFornecedor	Situacao	ICMSDestacado	CodObsICMS	ToleranciaEstadia	Classificacao	CodFilialComissao	Observacoes	IndExportacao	CodCondicaoFrete	TipoPedagio	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	PrazoPrevDesembarque	TipoPagtoICMS	FaturarPedagio	PrazoRecebimento	TipoPrazo	TipoCobrancaFrete	CodResponsavel	CodFilialEmitente	ToleranciaQuebra	TipoToleranciaQuebra	TipoToleranciaFarelo	CodContratante	FreteMotoristaFixo	TrocaNF	CodPedidoAnterior	CodFormaPagto	PrimeiraViaCTRC	TipoSeguro	PercSeguroProprio	CodGerenciadoraRisco	IndDescCadMotorista	ValorCadMotorista	IndDescConsultaTerceiro	ValorConsultaTerceiro	CodSeguradora	CodUFTributacao	TipoOperacaoTributacao	SequencialTributacao	CodUFDestinoTributacao	CodTipoTributacao	TipoContribuinteTributacao	AliquotaICMSTributacao	RedBaseCalculoTributacao	CodigoCFOPTributacao	ClassificacaoTributacao	TributacaoPedagio	DescontaPedagioICMS	ObservacoesCTRC	AliquotaISS	CodClienteColeta	CodClienteEntrega	Lotacao	ComprovanteDescarga	SeqContatoContratante	IndPagaPedagio	IndNFPosterior	ResponsavelSeguro	CodCorretora	NumApoliceSeguro	NumAverbacaoSeguro	ValorMercSeguro	ResponsavelValePedagio	TipoDispositivoValePedagio	ModeloDocumento	TipoServico	IndProdutoPerigoso	CodUsuarioAprovacao	NumeroOnu	NomeApropriadoEmbarque	ClasseRisco	GrupoEmbalagem	PontoFulgor	CST	IndDispensaNF	IndEmissaoCartaFreteCTe	IndMesmaAtividade	CodTipoCalculoTarifa	CodUsuarioAprovCredito	ImgFechamentoCliente	CodOperacaoRepom	CIOT	CodUsuarioAprovCredRegiao	IndLiberacao	CodUsuarioLiberacao	ValorHoraEstadia	CodUsuarioAprovLucrat	IndDuplicidade	CodObservacaoCND	CodControleCaramuru	RoteirizacaoAutomatica	TaxaLimpeza	ValorPedagioPamcard	KmRotaPamcard	IndNaoSimulaPedagioTAG	IndLiberaTaxaAdm
--AUT-0000129289	28007717	1014595	1000559	1000559	NULL	50949	NULL	JAT601	NULL	2021-11-04 00:00:00	NULL	1	2000.000	1557.480	TO	54.1900	54.00	14.70	1	NULL	NULL	2	I	596	12	N	RVD	NULL	N	1	4	10346	JAT	2021-11-04 16:39:53.000	10005	CG	2022-08-23 16:13:24.000	NULL	NULL	S	10	Após Entrega Fatura	NULL	10346	JAT	0.20	Diferença	NULL	1000559	N	N	NULL	1	NULL	Próprio	0.03	NULL	N	NULL	N	NULL	1090132	GO	Estadual	76	NULL	7	De Contribuinte para Contribuinte	0.00	NULL	5.352	NULL	S	N	PAGAR SALDO DE FRETE COM TICKTE DE BALANÇA DA DESCARGA, CTE, CIOT ASSINADO, CANHOTO ASSINADO NAO VALE COM COMPROVANTE DE DESCARGA. - Caramuru Estadia: Apos 24 hs valor R$-0,45 ton/hora-após 36 hs valor R$-0,50 ton/hora-após 48 hs valor de R$-0,60 ton/hora ( todas com retrocesso de 12 hs.  	NULL	1014595	1000559	N	Acompanhar Fatura	2	S	NULL	4	NULL	87372016010654000297	NULL	NULL	0	0	CT-e	0	NULL	10346	NULL	NULL	NULL	NULL	NULL	40	NULL	S	N	1	NULL	NULL	NULL	PAMCARY	NULL	N	10001	0.50	NULL	NULL	NULL	AUT-0000129289	S	NULL	14.70	189.00	NULL	N

--UPDATE PedidosFrete SET CodControleCaramuru = 'AUT- 0000152894' WHERE CodPedidoFrete = 28007717 

--24/08/2022 - LONTANO%%%%%

--select CodControleCaramuru, * FROM PedidosFrete where CodPedidoFrete = 28007726

--CodControleCaramuru	CodPedidoFrete	CodClienteEmitente	CodClienteDestinatario	CodClientePagamento	CodConsignatRedesp	CodRota	CodContrato	NumeroPedidoCliente	NumeroPedidoTransf	DataPedido	DataLimiteEmbarque	CodNaturezaCarga	QuantPedido	QuantRestante	CodUnidadeMedida	ValorFreteEmpresa	ValorFreteMotorista	ValorPedagio	UnidadeFrete	DespesaAdubo	CodFornecedor	Situacao	ICMSDestacado	CodObsICMS	ToleranciaEstadia	Classificacao	CodFilialComissao	Observacoes	IndExportacao	CodCondicaoFrete	TipoPedagio	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	PrazoPrevDesembarque	TipoPagtoICMS	FaturarPedagio	PrazoRecebimento	TipoPrazo	TipoCobrancaFrete	CodResponsavel	CodFilialEmitente	ToleranciaQuebra	TipoToleranciaQuebra	TipoToleranciaFarelo	CodContratante	FreteMotoristaFixo	TrocaNF	CodPedidoAnterior	CodFormaPagto	PrimeiraViaCTRC	TipoSeguro	PercSeguroProprio	CodGerenciadoraRisco	IndDescCadMotorista	ValorCadMotorista	IndDescConsultaTerceiro	ValorConsultaTerceiro	CodSeguradora	CodUFTributacao	TipoOperacaoTributacao	SequencialTributacao	CodUFDestinoTributacao	CodTipoTributacao	TipoContribuinteTributacao	AliquotaICMSTributacao	RedBaseCalculoTributacao	CodigoCFOPTributacao	ClassificacaoTributacao	TributacaoPedagio	DescontaPedagioICMS	ObservacoesCTRC	AliquotaISS	CodClienteColeta	CodClienteEntrega	Lotacao	ComprovanteDescarga	SeqContatoContratante	IndPagaPedagio	IndNFPosterior	ResponsavelSeguro	CodCorretora	NumApoliceSeguro	NumAverbacaoSeguro	ValorMercSeguro	ResponsavelValePedagio	TipoDispositivoValePedagio	ModeloDocumento	TipoServico	IndProdutoPerigoso	CodUsuarioAprovacao	NumeroOnu	NomeApropriadoEmbarque	ClasseRisco	GrupoEmbalagem	PontoFulgor	CST	IndDispensaNF	IndEmissaoCartaFreteCTe	IndMesmaAtividade	CodTipoCalculoTarifa	CodUsuarioAprovCredito	ImgFechamentoCliente	CodOperacaoRepom	CIOT	CodUsuarioAprovCredRegiao	IndLiberacao	CodUsuarioLiberacao	ValorHoraEstadia	CodUsuarioAprovLucrat	IndDuplicidade	CodObservacaoCND	CodControleCaramuru	RoteirizacaoAutomatica	TaxaLimpeza	ValorPedagioPamcard	KmRotaPamcard	IndNaoSimulaPedagioTAG	IndLiberaTaxaAdm
--NULL	28007726	44000460	44000460	44000460	NULL	51558	NULL	JAT602	NULL	2021-11-09 00:00:00	NULL	1	500.000	397.500	TO	95.0000	90.00	NULL	1	NULL	NULL	2	I	596	12	N	RVD	NULL	S	1	NULL	10509	JAT	2021-11-09 08:24:57.000	10005	CG	2022-08-24 10:37:00.000	NULL	NULL	NULL	10	Após Entrega Fatura	NULL	10346	JAT	0.25	Total	NULL	44000460	N	N	NULL	1	NULL	Próprio	0.04	NULL	N	NULL	N	NULL	1090132	GO	Estadual	76	NULL	7	De Contribuinte para Contribuinte	0.00	NULL	5.353	NULL	S	N	PAGAR SALDO DE FRETE COM TICKTE DE BALANÇA DA DESCARGA, CTE, CIOT ASSINADO, CANHOTO ASSINADO NAO VALE COM COMPROVANTE DE DESCARGA. - ESTADIA APÓS 24 HORAS DO HORARIO DE CHEGADA NO VALOR DE R$ 0,60 A TONELADA HORAS RETROATIVO 12º HORA.  	NULL	3000775	89000055	N	Acompanhar Fatura	2	NULL	NULL	4	NULL	87372016010654000297	NULL	NULL	NULL	NULL	CT-e	0	NULL	10346	NULL	NULL	NULL	NULL	NULL	40	NULL	S	N	NULL	NULL	NULL	NULL	PAMCARY	NULL	NULL	NULL	0.60	NULL	NULL	NULL	NULL	S	NULL	14.70	398.00	NULL	N

--UPDATE PedidosFrete SET CodControleCaramuru = '' WHERE CodPedidoFrete = 28007726 

--Ticket #3421 com Assunto: "GERAÇÃO DE CAP FÉRIAS".  25/08/2022 -- Atendimento geraCAPFerias -- Metadados

--EXEC GeraCAPsFolhaPagamentoMetadados @filial = 'CG', @usuario = 10005, @dataini = '05/01/2022 00:00:00', @datafim = '05/31/2022 23:59:59', @tipoFolha = 'Férias', @tipoCAP = 'Folha de Pagamento', @situacaoCAP = 'Selecionada PAG-FOR', @tipoDocto = 'Folha de Pagamento', @dataEmissao = '06/03/2022 00:00:00', @dataVencto = '06/03/2022 00:00:00', @indicador = 'C', @competencia = '05/2022', @tipoDespesa = 627, @filPagto = 'CG', @historico = '05/22- Salário', @histcontabil = '054- Pg/salários Ref. Mes 05/22', @tipoCobranca = 'Bancária'
--select cx.*, func.CodColaborador, func.NomeColaborador, forn.RazaoSocial, cap.CodContasPagar, cap.DataEmissao, cap.ValorPagar, meta.* 
--from rhlontano.dbo.vw_gs meta
--join Colaboradores func on func.CPF = dbo.CNPJ_CPF_Masc(meta.CPF)
--join Caixas cx on cx.CodColaborador = func.CodColaborador and cx.SituacaoCaixa = 'A' and cx.CodTipoCaixa in (6,7,12)
--join Fornecedores forn on forn.CodColaborador = func.CodColaborador
--left join ContasPagar cap on cap.CodFornecedor = forn.CodFornecedor and cap.DataEmissao >= meta.DATAFOLHA and cap.ValorPagar = meta.VALOR
--where descunidade like 'lontano%'
--	and vdb = '99998'
--	and datafolha between '2022-08-20' and '2022-08-25'
--AND VDB.VDB IN ('99991',	--> Mensal - Folha 
--				'99994',	--> Adiantamento Quinzenal
--				'61020',	--> Mensal - Adto Diarias Viagem
--				'61030',	--> Mensal - Adto Manutencao Caminhao
--				'99995',	--> 13º (Antecipação e Complementação)
--				'99996',	--> Dissídio (líquido)
--				'99998',	--> Férias (líquido)
--				'99999',	--> Rescisão
--				'02503')	--> Premiação Campanha Cargobank

-- 26/08/2022 Lontano - Plantão


--SELECT * FROM ConhecimentosTransporte where NumConhecto = 537546 AND CodUF  = 'GO'
--EXEC VerificaCTe 280000163614
--EXEC Grava_CTe  280000163614
--update lontano_gse.dbo.cte set status = 0 where sequencial = 280000163614


--SELECT ValorNF,* FROM ConhecimentosTransporte where NumConhecto = 438829 AND CodUF  = 'MS'
--ValorNF	Sequencial	CodPais	CodUF	NumConhecto	SerieConhecto	CodFilialEmitente	DataEmissao	HoraEmissao	NumFormulario	CodVeiculo	CodFornecedor	CodMotorista	NumRelatorioEmbarque	CodPedidoFrete	CodOrdemEmbarque	CodCondicaoFrete	CodigoCFOP	CodClienteEmitente	CodClienteDestinatario	CodClientePagto	CodRota	CodUsuarioAprovCortesia	IndConsigRedesp	CodConsigRedesp	NumConhectoConsigRedesp	ValorNF	QuantVolumes	CodEspecieMercadoria	Marca	CodNaturezaCarga	CodUnidadeMedida	Numero	FretePesoVolume	FreteValor	TarifaFreteEmpresa	TarifaFreteMotorista	DiferencaFreteAgregado	IndPagtoDiferenca	QuantidadeSaida	QuantidadeChegada	QuantChegFaturamento	UnidadeFrete	TotalFreteMotorista	ValorAdiantamento	SEC_CAT	Pedagio	IndFaturaPedagio	ValorReajusteFrete	Despacho	Outros	ValorIRRFMotorista	TarifaSEFAZ	BaseCalculoICMS	AliquotaICMSFrete	ValorICMSFrete	IndFaturaICMSFrete	ValorICMSMercadoria	DespesaAdubo	IndPagtoDespesaAdubo	Desconto	CodUsuarioAprovDesconto	NumeroClassificacao	ValorClassificacao	IndFaturaClassificacao	ValorTotalFrete	ValorLiquidoFrete	CodMoeda	SituacaoConhecto	ObsConhecto	Gerado	CodObservacaoICMS	ComplementoObsICMS	IndicadorICMS_NF	IndicadorComplemento	IndFaturaComplemento	IndComissaoComplemento	ValorRetidoINSS	ValorRetidoSestSenat	Saldo	Agregado	Adto	ValorICMSRetido	ResponsavelFreteAgregado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	DataDigitacaoFreteAgregado	BaseCalcICMSRetido	AliquotaICMSRetido	IndEnvioXML	IndEnvioSPED	ResponsavelSeguro	CodCorretora	NumApoliceSeguro	NumAverbacaoSeguro	ValorMercSeguro	ResponsavelValePedagio	TipoDispositivoValePedagio	EmpresaValePedagio	DataContratoValePedagio	NumCartaoValePedagio	CodClienteColeta	CodClienteEntrega	Lotacao	ModeloDocumento	TipoServico	IndProdutoPerigoso	CST	LiberaReemissaoCF	IndReemissaoCF	CodReemitenteCF	CodSeguradora	TipoConhecimento	IndMigracaoFrota	CIOT	ValorCombustivel	NumReqCombustivel	CodFornecCombustivel	SeguroAverbado	IndCompEstadia	DespesasRateadas	ValorReceber	IndTipoSubstituicao	TarifaSaque	TarifaTransferencia	CodUsuarioAutPagto	DataAutPagto	TaxaAdm	DescontoTaxaAdm	CodControleCaramuru	DataCTeAnulacao	TaxaLimpeza	CodOrdemMDFE	CodUsuarioAutAdtoAcima	CodFilialComissao	CodRegiao
--544810.00	830000057358	1	MS	438829	0	PPO	2022-07-13 13:25:00	2022-07-13 13:24:58.000	1708696	252522	1035347	1102038	83005380	83002564	83065644	1	6.353	1016144	1001964	1016144	66888	NULL	NULL	NULL	NULL	544810.00	NULL	1	NULL	2	KG	NULL	NULL	NULL	165.0000	152.00	NULL	NULL	36120	0	36180	1	5490.24	4115.00	NULL	NULL	NULL	NULL	NULL	468.54	NULL	NULL	NULL	0.00	NULL	NULL	NULL	NULL	NULL	NULL	13567	NULL	NULL	NULL	5959.80	469.56	1	Faturado	**PARA PAGAMENTO DO SALDO DE FRETE, NECESSARIO TICKET DE PESAGEM DE DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA**	S	54	NULL	NULL	NULL	NULL	NULL	NULL	NULL	N	S	N	NULL	NULL	10504	PPO	2022-07-13 13:24:58.000	13567	CG	2022-07-28 14:24:19.000	NULL	NULL	NULL	NULL	00125155        	4	NULL	87372016010654000297	NULL	NULL	NULL	NULL	NULL	NULL	NULL	1016313	1001964	N	CT-e	0	NULL	40	NULL	NULL	NULL	1090132	Normal	NULL	NULL	NULL	NULL	NULL	272.41	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	0.00	4.90	NULL	NULL	NULL	NULL	NULL	DRS	14
--UPDATE ConhecimentosTransporte SET ValorNF = 54481 WHERE Sequencial = 830000057358

-- 02/09/2022 - #3575 - GS - Alterar valor mercadoria cte MS-446650

--SELECT ValorNF, * FROM ConhecimentosTransporte where NumConhecto = 446650 and CodUF = 'MS' --830000058727
--ValorNF	Sequencial	CodPais	CodUF	NumConhecto	SerieConhecto	CodFilialEmitente	DataEmissao	HoraEmissao	NumFormulario	CodVeiculo	CodFornecedor	CodMotorista	NumRelatorioEmbarque	CodPedidoFrete	CodOrdemEmbarque	CodCondicaoFrete	CodigoCFOP	CodClienteEmitente	CodClienteDestinatario	CodClientePagto	CodRota	CodUsuarioAprovCortesia	IndConsigRedesp	CodConsigRedesp	NumConhectoConsigRedesp	ValorNF	QuantVolumes	CodEspecieMercadoria	Marca	CodNaturezaCarga	CodUnidadeMedida	Numero	FretePesoVolume	FreteValor	TarifaFreteEmpresa	TarifaFreteMotorista	DiferencaFreteAgregado	IndPagtoDiferenca	QuantidadeSaida	QuantidadeChegada	QuantChegFaturamento	UnidadeFrete	TotalFreteMotorista	ValorAdiantamento	SEC_CAT	Pedagio	IndFaturaPedagio	ValorReajusteFrete	Despacho	Outros	ValorIRRFMotorista	TarifaSEFAZ	BaseCalculoICMS	AliquotaICMSFrete	ValorICMSFrete	IndFaturaICMSFrete	ValorICMSMercadoria	DespesaAdubo	IndPagtoDespesaAdubo	Desconto	CodUsuarioAprovDesconto	NumeroClassificacao	ValorClassificacao	IndFaturaClassificacao	ValorTotalFrete	ValorLiquidoFrete	CodMoeda	SituacaoConhecto	ObsConhecto	Gerado	CodObservacaoICMS	ComplementoObsICMS	IndicadorICMS_NF	IndicadorComplemento	IndFaturaComplemento	IndComissaoComplemento	ValorRetidoINSS	ValorRetidoSestSenat	Saldo	Agregado	Adto	ValorICMSRetido	ResponsavelFreteAgregado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	DataDigitacaoFreteAgregado	BaseCalcICMSRetido	AliquotaICMSRetido	IndEnvioXML	IndEnvioSPED	ResponsavelSeguro	CodCorretora	NumApoliceSeguro	NumAverbacaoSeguro	ValorMercSeguro	ResponsavelValePedagio	TipoDispositivoValePedagio	EmpresaValePedagio	DataContratoValePedagio	NumCartaoValePedagio	CodClienteColeta	CodClienteEntrega	Lotacao	ModeloDocumento	TipoServico	IndProdutoPerigoso	CST	LiberaReemissaoCF	IndReemissaoCF	CodReemitenteCF	CodSeguradora	TipoConhecimento	IndMigracaoFrota	CIOT	ValorCombustivel	NumReqCombustivel	CodFornecCombustivel	SeguroAverbado	IndCompEstadia	DespesasRateadas	ValorReceber	IndTipoSubstituicao	TarifaSaque	TarifaTransferencia	CodUsuarioAutPagto	DataAutPagto	TaxaAdm	DescontoTaxaAdm	CodControleCaramuru	DataCTeAnulacao	TaxaLimpeza	CodOrdemMDFE	CodUsuarioAutAdtoAcima	CodFilialComissao	CodRegiao
--811257.58	830000058727	1	MS	446650	0	PPO	2022-08-27 14:28:00	2022-08-27 14:27:58.000	0	184630	83000822	1101791	83005467	83002277	83067000	1	5.352	1017221	83000043	1017221	830208	NULL	NULL	NULL	NULL	811257.58	NULL	1	NULL	7	KG	NULL	NULL	NULL	55.0000	50.00	NULL	NULL	31940	NULL	NULL	1	1597.00	1250.00	NULL	NULL	NULL	NULL	NULL	243.38	NULL	NULL	NULL	0.00	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	1756.70	159.70	1	Faturado	**PARA PAGAMENTO DO SALDO DE FRETE, NECESSARIO TICKET DE PESAGEM DE DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA**	S	32	NULL	NULL	NULL	NULL	NULL	35.13	7.98	S	S	N	NULL	NULL	12286	PPO	2022-08-27 14:27:58.000	10457	DRS	2022-08-29 08:22:53.000	NULL	NULL	NULL	NULL	00127034        	4	NULL	87372016010654000297	NULL	NULL	NULL	NULL	NULL	NULL	NULL	1017221	83000043	N	CT-e	0	NULL	40	NULL	NULL	NULL	1090132	Normal	NULL	3790000983695880	NULL	NULL	NULL	405.63	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	0.00	4.90	NULL	NULL	NULL	NULL	NULL	DRS	14
--UPDATE ConhecimentosTransporte SET ValorNF = 81127.58 WHERE Sequencial = 830000058727

-- #3582 com Assunto: "MDFe Rejeitado - CTe 539010".
--EXEC MonitoraMDFe 28164094
--SELECT InscEstadual_RG, * from Fornecedores where CodFornecedor = 1026811
--UPDATE Fornecedores SET InscEstadual_RG = NULL WHERE CodFornecedor = 1026811

--  #3584 - CT-e sem Chave - GO-472714
--SELECT * FROM ConhecimentosTransporte where NumConhecto = 472714 AND CodUF = 'GO'
--update lontano_gse.dbo.cte set status = 0 where sequencial = 10000017320
--update LONTANO_GSe.dbo.cte set status = 0, tpcte = 0 where sequencial = 10000017320
--DELETE from LONTANO_GSe.dbo.CTe WHERE Sequencial = 10000017320
--EXEC VerificaCTe 10000017320
--EXEC Grava_CTe 10000017320

-- #3585 - Re: GS - Alterar valor mercadoria cte MS-446650 / Gentileza alterar o valor do GRIS para R$ 24,34.
--outros	Sequencial	CodPais	CodUF	NumConhecto	SerieConhecto	CodFilialEmitente	DataEmissao	HoraEmissao	NumFormulario	CodVeiculo	CodFornecedor	CodMotorista	NumRelatorioEmbarque	CodPedidoFrete	CodOrdemEmbarque	CodCondicaoFrete	CodigoCFOP	CodClienteEmitente	CodClienteDestinatario	CodClientePagto	CodRota	CodUsuarioAprovCortesia	IndConsigRedesp	CodConsigRedesp	NumConhectoConsigRedesp	ValorNF	QuantVolumes	CodEspecieMercadoria	Marca	CodNaturezaCarga	CodUnidadeMedida	Numero	FretePesoVolume	FreteValor	TarifaFreteEmpresa	TarifaFreteMotorista	DiferencaFreteAgregado	IndPagtoDiferenca	QuantidadeSaida	QuantidadeChegada	QuantChegFaturamento	UnidadeFrete	TotalFreteMotorista	ValorAdiantamento	SEC_CAT	Pedagio	IndFaturaPedagio	ValorReajusteFrete	Despacho	Outros	ValorIRRFMotorista	TarifaSEFAZ	BaseCalculoICMS	AliquotaICMSFrete	ValorICMSFrete	IndFaturaICMSFrete	ValorICMSMercadoria	DespesaAdubo	IndPagtoDespesaAdubo	Desconto	CodUsuarioAprovDesconto	NumeroClassificacao	ValorClassificacao	IndFaturaClassificacao	ValorTotalFrete	ValorLiquidoFrete	CodMoeda	SituacaoConhecto	ObsConhecto	Gerado	CodObservacaoICMS	ComplementoObsICMS	IndicadorICMS_NF	IndicadorComplemento	IndFaturaComplemento	IndComissaoComplemento	ValorRetidoINSS	ValorRetidoSestSenat	Saldo	Agregado	Adto	ValorICMSRetido	ResponsavelFreteAgregado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	DataDigitacaoFreteAgregado	BaseCalcICMSRetido	AliquotaICMSRetido	IndEnvioXML	IndEnvioSPED	ResponsavelSeguro	CodCorretora	NumApoliceSeguro	NumAverbacaoSeguro	ValorMercSeguro	ResponsavelValePedagio	TipoDispositivoValePedagio	EmpresaValePedagio	DataContratoValePedagio	NumCartaoValePedagio	CodClienteColeta	CodClienteEntrega	Lotacao	ModeloDocumento	TipoServico	IndProdutoPerigoso	CST	LiberaReemissaoCF	IndReemissaoCF	CodReemitenteCF	CodSeguradora	TipoConhecimento	IndMigracaoFrota	CIOT	ValorCombustivel	NumReqCombustivel	CodFornecCombustivel	SeguroAverbado	IndCompEstadia	DespesasRateadas	ValorReceber	IndTipoSubstituicao	TarifaSaque	TarifaTransferencia	CodUsuarioAutPagto	DataAutPagto	TaxaAdm	DescontoTaxaAdm	CodControleCaramuru	DataCTeAnulacao	TaxaLimpeza	CodOrdemMDFE	CodUsuarioAutAdtoAcima	CodFilialComissao	CodRegiao
--243.38	830000058727	1	MS	446650	0	PPO	2022-08-27 14:28:00	2022-08-27 14:27:58.000	0	184630	83000822	1101791	83005467	83002277	83067000	1	5.352	1017221	83000043	1017221	830208	NULL	NULL	NULL	NULL	81127.58	NULL	1	NULL	7	KG	NULL	NULL	NULL	55.0000	50.00	NULL	NULL	31940	NULL	NULL	1	1597.00	1250.00	NULL	NULL	NULL	NULL	NULL	243.38	NULL	NULL	NULL	0.00	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	1756.70	159.70	1	Faturado	**PARA PAGAMENTO DO SALDO DE FRETE, NECESSARIO TICKET DE PESAGEM DE DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA**	S	32	NULL	NULL	NULL	NULL	NULL	35.13	7.98	S	S	N	NULL	NULL	12286	PPO	2022-08-27 14:27:58.000	10457	DRS	2022-08-29 08:22:53.000	NULL	NULL	NULL	NULL	00127034        	4	NULL	87372016010654000297	NULL	NULL	NULL	NULL	NULL	NULL	NULL	1017221	83000043	N	CT-e	0	NULL	40	NULL	NULL	NULL	1090132	Normal	NULL	3790000983695880	NULL	NULL	NULL	405.63	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	0.00	4.90	NULL	NULL	NULL	NULL	NULL	DRS	14
--SELECT outros, * from ConhecimentosTransporte where NumConhecto = 446650 AND Coduf = 'MS'
--UPDATE ConhecimentosTransporte SET Outros = 24.34 WHERE Sequencial = 830000058727

--
--SELECT * from ConhecimentosTransporte where NumConhecto = 99000234 AND Coduf = 'MT'

--EXEC  90000031528
--select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 90000031528
--delete from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 90000031528
--exec Grava_NFSe 90000031528

-----------------------------

--23/09/2022 - LONTANO

-- EXEC verificacte 760000012163 -- RDM Joilson
-- EXEC verificacte 530000144189 - Virginia Lontano Reenviar como normal

-- ZDA Part

--SELECT * from Usuarios where NomeUsuario like '%marilene%'
--select * from PermissoesAcesso where CodUsuario = 10122  and CodPrograma like '%ConsultarTodosRegistrosCR'
--select * from PermissoesAcesso where CodUsuario = 10123  and CodPrograma like '%ConsultarTodosRegistrosCR'
--select * from PermissoesAcesso where CodUsuario = 10124  and CodPrograma like '%ConsultarTodosRegistrosCR'
