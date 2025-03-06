-- SQL PLanilha
SELECT DISTINCT
    ctrc.Sequencial, 
     ctrc.DataEmissao AS 'Data Emissão',
    ctrc.CodUF + ' - ' + CONVERT(VARCHAR(MAX), ctrc.NumConhecto) AS 'Nº Documento', 
	ctrc.SerieConhecto AS 'Série',
	--dbo.CNPJ_CPF_Masc(cte.CNPJ) AS 'CNPJ Emissor',
	ctrc.CodFilialComissao AS 'Filial Comissão',
	Ctrc.CodFilialEmitente AS 'Filial Emitente',	
    ctrc.CodClientePagto AS 'Código do Pagador do Frete', 
	dbo.CNPJ_CPF_Masc(cpag.CNPJ_CPF) AS 'CNPJ Cliente Pagador',
    cpag.RazaoSocial AS 'Nome do Pagador do Frete', 
    Veiculos.Propriedade AS 'Propriedade Veículo', 
    cof.Descricao AS 'Tipo de Serviço', 
    dbo.CNPJ_CPF_Masc(F.CNPJ_CPF) AS 'CNPJ do Subcontratado',  
    F.RazaoSocial AS 'Nome do Subcontratado', 
    ctrc.SituacaoConhecto AS 'Situação do Conhecimento',
    EC.dhEvento AS 'Data Cancelamento',
	CTRC.ValorTotalFrete AS 'Valor Base Recebido do Pagador ',
	isnull(format(ctrc.ValorRetidoINSS,'N2','pt-br'), 0.00) AS 'Valor INSS Retido',
	isnull (format(ctrc.ValorRetidoSestSenat,'N2','pt-br'), 0.00) AS 'Valor Retido Sest/Senat',
	isnull (format(ctrc.ValorIRRFMotorista,'N2','pt-br'), 0.00) AS 'Valor IRRF Retido',
	FORMAT(ctrc.ValorTotalFrete / 100 * 1,'N2','pt-br') AS 'Valor INSS Empresa',
	CASE 
		WHEN CFTP.Descricao = 'Diferença Frete' THEN
		CRF.VALORPAGO
	END AS 'Diferença de frete PAGO',
	CASE 
		WHEN CFTP.Descricao = 'Diferença Frete' THEN
		CRF.ValorConferido
	END AS 'Diferença de frete CONFERIDO',	
	CTRC.TotalFreteMotorista AS 'Valor Base Pago ao Motorista/Terceiro', 
    (SELECT STRING_AGG(CONVERT(VARCHAR, NF.NumeroNF), ', ') 
     FROM NotasFiscaisConhecimento NF 
     WHERE NF.SequencialConhecimento = ctrc.Sequencial) AS 'Notas Fiscais',
    ctrc.CodigoCFOP AS 'CFOP',
    --CONVERT(VARCHAR(44), cte.ID) AS 'Chave CT-e',
    NF_Chave.ChaveAcessoNFe AS 'Chave NFe Transportada',
    FORMAT(CTRC_PIS_COFINS.PIS, 'N2', 'pt-br') AS 'PIS',
    FORMAT(CTRC_PIS_COFINS.COFINS, 'N2', 'pt-br') AS 'CONFIS',
    IndExportacao AS 'Ind Exportação',
    FORMAT(ctrc.ValorTotalFrete, 'N2', 'pt-br') AS 'Valor Total',
    ISNULL(FORMAT(ctrc.Pedagio, 'N2', 'pt-br'), '0.00') AS 'Valor Pedagio',		 
	ISNULL(FORMAT(ctrc.ValorICMSFrete, 'N2', 'pt-br'), '0.00') AS 'Valor ICMS',
	ISNULL(FORMAT(ctrc.ValorICMSRetido, 'N2', 'pt-br'), '0.00') AS 'VALOR DO ICMS ST',
	ISNULL(FORMAT(ctrc.BaseCalculoICMS, 'N2', 'pt-br'), '0.00') AS 'Valor ISS'
FROM ConhecimentosTransporte ctrc
INNER JOIN CTRC_PIS_COFINS ON CTRC_PIS_COFINS.Sequencial = ctrc.Sequencial
INNER JOIN Rotas ON ctrc.CodRota = Rotas.CodRota 
INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade 
--JOIN LONTANO_GSe.dbo.CTe cte ON cte.Sequencial = ctrc.Sequencial
LEFT OUTER JOIN Veiculos ON ctrc.CodVeiculo = Veiculos.CodVeiculo 
LEFT OUTER JOIN ConhecimentosCliente ON ctrc.Sequencial = ConhecimentosCliente.SequencialConhecimento 
LEFT OUTER JOIN PedidosFrete ON ctrc.CodPedidoFrete = PedidosFrete.CodPedidoFrete
LEFT OUTER JOIN ParamDespRecFilial ON ctrc.CodRegiao = ParamDespRecFilial.NumCol 
LEFT OUTER JOIN OrdemEmbarque ON ctrc.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
INNER JOIN Clientes cpag ON cpag.CodCliente = ctrc.CodClientePagto 
INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente
INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ctrc.CodNaturezaCarga
LEFT JOIN ConhecimentosSubcontratados Sub ON Sub.SeqCTRC = ctrc.Sequencial
JOIN ComboBox_Financeiro COF ON COF.Codigo = PedidosFrete.TipoServico AND NomeComboBox = 'cboTipoServico'
JOIN clientes CliSub ON CliSub.CodCliente = PedidosFrete.CodClienteEmitente
JOIN Fornecedores F ON F.CodFornecedor = ctrc.CodFornecedor
OUTER APPLY (
    SELECT TOP 1 CRF.NumSeqConhecto, CRF.CodTipoPagamento, CRF.ValorConferido, CRF.ValorPago
    FROM ConhecimentosRelacaoFretes CRF
    WHERE CRF.NumSeqConhecto = CTRC.Sequencial
    ORDER BY CRF.DataCriacao DESC
) CRF
LEFT JOIN ComboBox_Financeiro CFTP ON CFTP.Codigo = CRF.CodTipoPagamento AND CFTP.NomeComboBox = 'cboTipoPagamento'
OUTER APPLY (
    SELECT TOP 1 dhEvento
    FROM lontano_gse.dbo.eventos_cte
    WHERE Sequencial_CTe = ctrc.Sequencial
    AND (ctrc.SituacaoConhecto = 'Cancelado' OR ctrc.SituacaoConhecto IS NULL)
    ORDER BY dhEvento DESC
) EC
OUTER APPLY (
    SELECT TOP 1 ChaveAcessoNFe
    FROM NotasFiscaisConhecimento
    WHERE SequencialConhecimento = ctrc.Sequencial
    ORDER BY ChaveAcessoNFe DESC
) NF_Chave
WHERE 
    ctrc.SerieConhecto = '2' 
	--and ctrc.NumConhecto = 699950
    AND ctrc.DataEmissao BETWEEN '01/01/2023 00:00:00' AND '12/31/2023 23:59:29'
ORDER BY ctrc.Sequencial;
