SELECT 
    ComboBox_Financeiro.Descricao, 
    RelacaoFretes.CodRelacaoFrete, 
    RelacaoFretes.CodFornecedor, 
    Fornecedores.RazaoSocial, 
    RelacaoFretes.DataEntradaRelacao, 
    ConhecimentosRelacaoFretes.ValorPago, 
    ConhecimentosRelacaoFretes.ValorConferido, 
    (ConhecimentosRelacaoFretes.ValorPago - ConhecimentosRelacaoFretes.ValorConferido) AS Diferenca, 
    ConhecimentosRelacaoFretes.NumSeqConhecto, 
    ConhecimentosRelacaoFretes.CodTipoPagamento,
    CASE 
        WHEN OrdemEmbarque.CIOT in ('IRIOM', 'EFRETE PIX') 
        THEN 
            CASE 
                WHEN BeneficiarioPagamento = 'M' THEN 'Motorista' 
                ELSE 'Proprietário' 
            END 
        ELSE NULL 
    END AS Beneficiario



FROM 
    ConhecimentosRelacaoFretes 
INNER JOIN 
    RelacaoFretes ON ConhecimentosRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
INNER JOIN 
    ComboBox_Financeiro ON ComboBox_Financeiro.Codigo = ConhecimentosRelacaoFretes.CodTipoPagamento 
    AND ComboBox_Financeiro.NomeComboBox = 'cboTipoPagamento'
INNER JOIN 
    Fornecedores ON RelacaoFretes.CodFornecedor = Fornecedores.CodFornecedor
INNER JOIN 
    ConhecimentosTransporte ON ConhecimentosTransporte.Sequencial = ConhecimentosRelacaoFretes.NumSeqConhecto
LEFT JOIN 
    OrdemEmbarque ON OrdemEmbarque.NumOrdemEmbarque = ConhecimentosTransporte.CodOrdemEmbarque
WHERE 
    ConhecimentosRelacaoFretes.NumSeqConhecto = 530000171192

UNION 

SELECT 
    TiposValores.DescTipoValor, 
    RelacaoFretes.CodRelacaoFrete, 
    RelacaoFretes.CodFornecedor, 
    Fornecedores.RazaoSocial, 
    RelacaoFretes.DataEntradaRelacao, 
    ValoresRelacaoFretes.ValorPago, 
    ISNULL(ValoresRelacaoFretes.ValorConferido, 0), 
    (ValoresRelacaoFretes.ValorPago - ISNULL(ValoresRelacaoFretes.ValorConferido, 0)) AS Diferenca, 
    -1, 
    -1, 
    NULL 
FROM 
    ValoresRelacaoFretes 
INNER JOIN 
    RelacaoFretes ON ValoresRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
INNER JOIN 
    TiposValores ON ValoresRelacaoFretes.CodTipoValor = TiposValores.CodTipoValor 
INNER JOIN 
    Fornecedores ON RelacaoFretes.CodFornecedor = Fornecedores.CodFornecedor 
WHERE 
    ValoresRelacaoFretes.CodComplemento = 530000171192 
ORDER BY 
    RelacaoFretes.DataEntradaRelacao



SELECT BeneficiarioPagamento,* from CartaFrete where Sequencial =530000171192
select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 530000171192



--Function Pagamento_Parcela_EFrete_PIX(SeqConhecto As Double, TipoPagamento As Integer) As String



--'25/11/2024 - Emanuel Neto / Jhonny - Conforme Chamdo Milvus #23229 - Ajustar sistema visualizar beneficiário Pix efrete
--SQL = "Select O.NumOrdemEmbarque, FA.CodControleFilial, CF.CodViagemPamcard, CFP.NumeroClienteParcela, CF.CIOT, CF.Id, CF.BeneficiarioPagamento from Conhecimentostransporte CTRC" & _
--            " INNER JOIN OrdemEmbarque O On O.NumOrdemEmbarque = CTRC.CodOrdemEmbarque" & _
--            " INNER JOIN cartafrete CF On CF.Sequencial = CTRC.Sequencial" & _
--            " INNER JOIN CartaFrete_Parcela CFP On CFP.IdCartaFrete = CF.Id" & _
--            " INNER JOIN FiliaisAgencias FA On FA.CodFilial = CTRC.CodFilialEmitente" & _
--            " Where CTRC.SituacaoConhecto <> 'Cancelado' And CTRC.Sequencial = " & SeqConhecto & " And O.CIOT = 'EFrete PIX' And CFP.Pago = 'N' And CFP.NumeroClienteParcela = " & TipoPagamento


--    '25/11/2024 - Emanuel Neto / Jhonny - Conforme Chamdo Milvus #23229 - Ajustar sistema visualizar beneficiário Pix efrete
--    If Pagamento_Parcela_EFrete_PIX = "" Then
--        If rsCTRC!rsCTRCBeneficiarioPagamento = "M" Then
--            frmPagamentoCTRC_Cheque.BeneficiarioPagtoIriom = "Motorista"
--        Else
--            frmPagamentoCTRC_Cheque.BeneficiarioPagtoIriom = "Proprietário"
--        End If
--    End If



SELECT 
    ComboBox_Financeiro.Descricao, 
    RelacaoFretes.CodRelacaoFrete, 
    RelacaoFretes.CodFornecedor, 
    Fornecedores.RazaoSocial, 
    RelacaoFretes.DataEntradaRelacao, 
    ConhecimentosRelacaoFretes.ValorPago, 
    ConhecimentosRelacaoFretes.ValorConferido, 
    (ConhecimentosRelacaoFretes.ValorPago - ConhecimentosRelacaoFretes.ValorConferido) AS Diferenca, 
    ConhecimentosRelacaoFretes.NumSeqConhecto, 
    ConhecimentosRelacaoFretes.CodTipoPagamento,
    CASE 
        WHEN OrdemEmbarque.CIOT = 'IRIOM' THEN 
            CASE 
                WHEN BeneficiarioPagamento = 'M' THEN 'Motorista' 
                WHEN BeneficiarioPagamento = 'P' THEN 'Proprietário'
                ELSE NULL 
            END 
        ELSE NULL 
    END AS Beneficiario
FROM 
    ConhecimentosRelacaoFretes 
INNER JOIN 
    RelacaoFretes ON ConhecimentosRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
INNER JOIN 
    ComboBox_Financeiro ON ComboBox_Financeiro.Codigo = ConhecimentosRelacaoFretes.CodTipoPagamento 
    AND ComboBox_Financeiro.NomeComboBox = 'cboTipoPagamento'
INNER JOIN 
    Fornecedores ON RelacaoFretes.CodFornecedor = Fornecedores.CodFornecedor
INNER JOIN 
    ConhecimentosTransporte ON ConhecimentosTransporte.Sequencial = ConhecimentosRelacaoFretes.NumSeqConhecto
LEFT JOIN 
    OrdemEmbarque ON OrdemEmbarque.NumOrdemEmbarque = ConhecimentosTransporte.CodOrdemEmbarque
WHERE 
    ConhecimentosRelacaoFretes.NumSeqConhecto = 530000171192
    AND BeneficiarioPagamento IS NOT NULL

UNION 

SELECT 
    TiposValores.DescTipoValor, 
    RelacaoFretes.CodRelacaoFrete, 
    RelacaoFretes.CodFornecedor, 
    Fornecedores.RazaoSocial, 
    RelacaoFretes.DataEntradaRelacao, 
    ValoresRelacaoFretes.ValorPago, 
    ISNULL(ValoresRelacaoFretes.ValorConferido, 0), 
    (ValoresRelacaoFretes.ValorPago - ISNULL(ValoresRelacaoFretes.ValorConferido, 0)) AS Diferenca, 
    -1, 
    -1, 
    NULL 
FROM 
    ValoresRelacaoFretes 
INNER JOIN 
    RelacaoFretes ON ValoresRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
INNER JOIN 
    TiposValores ON ValoresRelacaoFretes.CodTipoValor = TiposValores.CodTipoValor 
INNER JOIN 
    Fornecedores ON RelacaoFretes.CodFornecedor = Fornecedores.CodFornecedor 
WHERE 
    ValoresRelacaoFretes.CodComplemento = 530000169612 
ORDER BY 
    RelacaoFretes.DataEntradaRelacao
