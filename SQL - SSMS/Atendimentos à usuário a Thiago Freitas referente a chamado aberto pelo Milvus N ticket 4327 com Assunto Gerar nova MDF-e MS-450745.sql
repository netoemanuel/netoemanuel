-- Gerar nova MDF-e MS-450745 - Novo Motorista, Novo Veiculo!

-- 1 º Mudar o Codigo da Rota em ConhecimentosTransporte e PedidosFrete
SELECT CodRota,CodPedidoFrete,CodVeiculo, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 566405  and CodUF = 'GO' -- antigo cod rota 57906
--UPDATE ConhecimentosTransporte SET CodRota = 82878  WHERE Sequencial = 620000018402
SELECT CodRota, * from PedidosFrete where CodPedidoFrete = 78000642
--UPDATE PedidosFrete SET CodRota = 82878  WHERE CodPedidoFrete = 62001581
--SELECT * from Veiculos where PlacaVeiculo = '45024463'
--Apos isso, usar o SQL para substituir o mototista e o veiculo e depois seguir o passo a passo abaixo

select CodFornecedor, * from OrdemEmbarque where NumOrdemEmbarque  in (62018685, 62018687)
--update OrdemEmbarque set CodFornecedor = 62000991 where NumOrdemEmbarque  in (62018685, 62018687)
--select * from Fornecedores where RazaoSocial = 'MEJADO TRANSPORTES LTDA'


EXEC MonitoraMDFe 62018685

-- Caso dê a Rejeição "612"	Necessario Trocar o	Codigo do Municipio de Descarga e o nome do municipio
select * from LONTANO_GSe.dbo.Descarga_MDFe where Sequencial = 1401316 --and SeqDescarga = 1 -- para saber qual está (DESCARGA)
select CodUFIBGE,* from LONTANO_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%Neropolis%'  -- colocar o destino de descarga
select * FROM LONTANO_GSe.dbo.Cidades_e where CodMunicipioIBGE =  5214507
--update LONTANO_GSe.dbo.Descarga_MDFe set cMunDescarga = 5214507, xMunDescarga = 'Nerópolis' where Sequencial = 1401316	and SeqDescarga = 1 

--DELETE FROM LONTANO_GSe.dbo.MDFe where Sequencial = 1356407

--Reenviar para autorizar	
EXEC MonitoraMdfe 72048437	
SELECT STATUS, * FROM LONTANO_GSe.dbo.MDFe WHERE CodManifestoCarga = 1292405
--update LONTANO_GSe.dbo.MDFe set status = 0 where CodManifestoCarga = 1292405

--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3

--update LONTANO_GSe.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 1251340

--746 CAMPO vComp TEM QUE SER IGUAL AO vContrato
DECLARE @VCOMP AS NUMERIC SET @VCOMP  = (select  vComp from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1392881)
DECLARE @VCONTRATO AS NUMERIC SET @VCONTRATO = (select vContrato from Lontano_gse.dbo.PagamentoFrete_MDFe where Sequencial = 1392881)

--select vComp, * from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1387296
--03/03/2022
--133.70	1392881	01	133.70	NULL	CG	14102	2023-03-03 17:32:41.950	NULL	NULL	NULL
--175.74	1392873	01	175.74	NULL	CG	14102	2023-03-03 17:25:39.987	NULL	NULL	NULL
--25/02
--vComp	Sequencial	tpComp	vComp	xComp	CodFilialCriacao	CodUsuarioCriacao	DataCriacao	CodFilialAlteracao	CodUsuarioAlteracao	DataAlteracao
--30.60	1388537	01	30.60	NULL	CG	14102	2023-02-25 12:51:57.810	NULL	NULL	NULL
--delete from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1392881 and tpComp =01

--delete from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1387296 and tpComp =01
--vComp	Sequencial	tpComp	vComp	xComp	CodFilialCriacao	CodUsuarioCriacao	DataCriacao	CodFilialAlteracao	CodUsuarioAlteracao	DataAlteracao
--800.00	1387296	01	800.00	NULL	CG	14102	2023-02-23 16:22:44.120	NULL	NULL	NULL


--738 CAMPO vComp E vContrato TEM QUE SER IGUAL AO SOMATORIO DO vAdiant + vParcela
select vAdiant, vParcela from Lontano_gse.dbo.ParcelasPagamentoFrete_MDFe PP
INNER JOIN Lontano_gse.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1392881
DECLARE @SOMATORIO AS NUMERIC SET @SOMATORIO = (select vAdiant + vParcela AS SOMATORIO from Lontano_gse.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Lontano_gse.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1392881)
SELECT @SOMATORIO AS SOMATORIO, @VCOMP AS VCOMP, @VCONTRATO AS VCONTRATO

--update Lontano_gse.dbo.CompPagamentoFrete_MDFe set vComp = 8027.69 where Sequencial = 1392881
--update Lontano_gse.dbo.PagamentoFrete_MDFe set vContrato = 8027.69 where Sequencial = 1392881



--vAdiant	vParcela
--12800.00	2586.02
--SOMATORIO	VCOMP	VCONTRATO
--15386	8586	18772



--30/12/20222
--Sequencial	SeqDescarga	cMunDescarga	xMunDescarga	CodFilialCriacao	CodUsuarioCriacao	DataCriacao	CodFilialAlteracao	CodUsuarioAlteracao	DataAlteracao
--1356226			1		   5002704		CAMPO GRANDE			CUB					12565		2022-12-23 14:25:42.350			NULL	NULL	NULL
--1356226			2		   5107602		RONDONOPOLIS			CUB					12565		2022-12-23 14:25:42.350			NULL	NULL	NULL




--26/12/2022
--650987 - MS
--CodRota	CodPedidoFrete	CodVeiculo	CodOrdemEmbarque	Sequencial	CodPais	CodUF	NumConhecto	SerieConhecto	CodFilialEmitente	DataEmissao	HoraEmissao	NumFormulario	CodVeiculo	CodFornecedor	CodMotorista	NumRelatorioEmbarque	CodPedidoFrete	CodOrdemEmbarque	CodCondicaoFrete	CodigoCFOP	CodClienteEmitente	CodClienteDestinatario	CodClientePagto	CodRota	CodUsuarioAprovCortesia	IndConsigRedesp	CodConsigRedesp	NumConhectoConsigRedesp	ValorNF	QuantVolumes	CodEspecieMercadoria	Marca	CodNaturezaCarga	CodUnidadeMedida	Numero	FretePesoVolume	FreteValor	TarifaFreteEmpresa	TarifaFreteMotorista	DiferencaFreteAgregado	IndPagtoDiferenca	QuantidadeSaida	QuantidadeChegada	QuantChegFaturamento	UnidadeFrete	TotalFreteMotorista	ValorAdiantamento	SEC_CAT	Pedagio	IndFaturaPedagio	ValorReajusteFrete	Despacho	Outros	ValorIRRFMotorista	TarifaSEFAZ	BaseCalculoICMS	AliquotaICMSFrete	ValorICMSFrete	IndFaturaICMSFrete	ValorICMSMercadoria	DespesaAdubo	IndPagtoDespesaAdubo	Desconto	CodUsuarioAprovDesconto	NumeroClassificacao	ValorClassificacao	IndFaturaClassificacao	ValorTotalFrete	ValorLiquidoFrete	CodMoeda	SituacaoConhecto	ObsConhecto	Gerado	CodObservacaoICMS	ComplementoObsICMS	IndicadorICMS_NF	IndicadorComplemento	IndFaturaComplemento	IndComissaoComplemento	ValorRetidoINSS	ValorRetidoSestSenat	Saldo	Agregado	Adto	ValorICMSRetido	ResponsavelFreteAgregado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	DataDigitacaoFreteAgregado	BaseCalcICMSRetido	AliquotaICMSRetido	IndEnvioXML	IndEnvioSPED	ResponsavelSeguro	CodCorretora	NumApoliceSeguro	NumAverbacaoSeguro	ValorMercSeguro	ResponsavelValePedagio	TipoDispositivoValePedagio	EmpresaValePedagio	DataContratoValePedagio	NumCartaoValePedagio	CodClienteColeta	CodClienteEntrega	Lotacao	ModeloDocumento	TipoServico	IndProdutoPerigoso	CST	LiberaReemissaoCF	IndReemissaoCF	CodReemitenteCF	CodSeguradora	TipoConhecimento	IndMigracaoFrota	CIOT	ValorCombustivel	NumReqCombustivel	CodFornecCombustivel	SeguroAverbado	IndCompEstadia	DespesasRateadas	ValorReceber	IndTipoSubstituicao	TarifaSaque	TarifaTransferencia	CodUsuarioAutPagto	DataAutPagto	TaxaAdm	DescontoTaxaAdm	CodControleCaramuru	DataCTeAnulacao	TaxaLimpeza	CodOrdemMDFE	CodUsuarioAutAdtoAcima	CodFilialComissao	CodRegiao
--161848	50000410	576727	50010267	500000005117	1	MT	650987	0	BRG	2022-12-19 13:48:00	2022-12-19 13:47:33.000	0	576727	48000023	1074256	50003774	50000410	50010267	1	6.353	26000114	26000114	26000114	161848	NULL	NULL	NULL	NULL	82364.40	NULL	1	NULL	2	KG	NULL	NULL	NULL	390.0000	366.88	NULL	NULL	49320	NULL	NULL	1	18094.52	12600.00	NULL	153.80	NULL	NULL	NULL	107.07	NULL	NULL	NULL	0.00	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	19234.80	1140.28	1	Emitido	PARA PAGAMENTO DE SALDO DE FRETE, NECESSARIO TICKET DE PESAGEM DA DESCARGA E CARTA FRETE OU VIA DO CIOT ASSINADA PELO MOTORISTA.     C N D:  0041453933  CÓD. AUT: TBT2ABM2AMU7A2AK   	S	53	NULL	NULL	NULL	NULL	NULL	NULL	NULL	S	S	N	NULL	NULL	14125	BRG	2022-12-19 13:47:33.000	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	4	NULL	02540031100	NULL	NULL	0	0	Banco Bradesco S/A	2025-01-01 00:00:00	4417818899938660	1004723	90000140	N	CT-e	0	NULL	40	NULL	NULL	NULL	1099606	Complementado	NULL	3770002990575455	NULL	NULL	NULL	41.18	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	0.00	4.90	NULL	NULL	NULL	NULL	NULL	AGB	1

--650986 MS
--CodRota	CodPedidoFrete	CodVeiculo	CodOrdemEmbarque	Sequencial	CodPais	CodUF	NumConhecto	SerieConhecto	CodFilialEmitente	DataEmissao	HoraEmissao	NumFormulario	CodVeiculo	CodFornecedor	CodMotorista	NumRelatorioEmbarque	CodPedidoFrete	CodOrdemEmbarque	CodCondicaoFrete	CodigoCFOP	CodClienteEmitente	CodClienteDestinatario	CodClientePagto	CodRota	CodUsuarioAprovCortesia	IndConsigRedesp	CodConsigRedesp	NumConhectoConsigRedesp	ValorNF	QuantVolumes	CodEspecieMercadoria	Marca	CodNaturezaCarga	CodUnidadeMedida	Numero	FretePesoVolume	FreteValor	TarifaFreteEmpresa	TarifaFreteMotorista	DiferencaFreteAgregado	IndPagtoDiferenca	QuantidadeSaida	QuantidadeChegada	QuantChegFaturamento	UnidadeFrete	TotalFreteMotorista	ValorAdiantamento	SEC_CAT	Pedagio	IndFaturaPedagio	ValorReajusteFrete	Despacho	Outros	ValorIRRFMotorista	TarifaSEFAZ	BaseCalculoICMS	AliquotaICMSFrete	ValorICMSFrete	IndFaturaICMSFrete	ValorICMSMercadoria	DespesaAdubo	IndPagtoDespesaAdubo	Desconto	CodUsuarioAprovDesconto	NumeroClassificacao	ValorClassificacao	IndFaturaClassificacao	ValorTotalFrete	ValorLiquidoFrete	CodMoeda	SituacaoConhecto	ObsConhecto	Gerado	CodObservacaoICMS	ComplementoObsICMS	IndicadorICMS_NF	IndicadorComplemento	IndFaturaComplemento	IndComissaoComplemento	ValorRetidoINSS	ValorRetidoSestSenat	Saldo	Agregado	Adto	ValorICMSRetido	ResponsavelFreteAgregado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	DataDigitacaoFreteAgregado	BaseCalcICMSRetido	AliquotaICMSRetido	IndEnvioXML	IndEnvioSPED	ResponsavelSeguro	CodCorretora	NumApoliceSeguro	NumAverbacaoSeguro	ValorMercSeguro	ResponsavelValePedagio	TipoDispositivoValePedagio	EmpresaValePedagio	DataContratoValePedagio	NumCartaoValePedagio	CodClienteColeta	CodClienteEntrega	Lotacao	ModeloDocumento	TipoServico	IndProdutoPerigoso	CST	LiberaReemissaoCF	IndReemissaoCF	CodReemitenteCF	CodSeguradora	TipoConhecimento	IndMigracaoFrota	CIOT	ValorCombustivel	NumReqCombustivel	CodFornecCombustivel	SeguroAverbado	IndCompEstadia	DespesasRateadas	ValorReceber	IndTipoSubstituicao	TarifaSaque	TarifaTransferencia	CodUsuarioAutPagto	DataAutPagto	TaxaAdm	DescontoTaxaAdm	CodControleCaramuru	DataCTeAnulacao	TaxaLimpeza	CodOrdemMDFE	CodUsuarioAutAdtoAcima	CodFilialComissao	CodRegiao
--161848	50000410	566341	50010268	500000005116	1	MT	650986	0	BRG	2022-12-19 13:33:00	2022-12-19 13:33:29.000	0	566341	47000863	1074258	50003774	50000410	50010268	1	6.353	26000114	26000114	26000114	161848	NULL	NULL	NULL	NULL	61021.80	NULL	1	NULL	2	KG	NULL	NULL	NULL	390.0000	366.73	NULL	NULL	36540	NULL	NULL	1	13400.31	9300.00	NULL	119.60	NULL	NULL	NULL	79.33	NULL	NULL	NULL	0.00	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	14250.60	850.29	1	Emitido	PARA PAGAMENTO DE SALDO DE FRETE, NECESSARIO TICKET DE PESAGEM DA DESCARGA E CARTA FRETE OU VIA DO CIOT ASSINADA PELO MOTORISTA.     C N D:  0041453933  CÓD. AUT: TBT2ABM2AMU7A2AK   	S	53	NULL	NULL	NULL	NULL	NULL	NULL	NULL	S	S	N	NULL	NULL	14125	BRG	2022-12-19 13:33:29.000	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	4	NULL	02540031100	NULL	NULL	0	0	Banco Bradesco S/A	2025-01-01 00:00:00	4417812004383979	1004723	90000140	N	CT-e	0	NULL	40	NULL	NULL	NULL	1099606	Complementado	NULL	3740002990545897	NULL	NULL	NULL	30.51	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	0.00	4.90	NULL	NULL	NULL	NULL	NULL	AGB	1