use RODOMAIOR

SELECT 
		RelacaoFretes.CodRelacaoFrete, ConhecimentosTransporte.NumConhecto as CTRC, ConhecimentosTransporte.CodUF as UF,  ConhecimentosTransporte.CodFilialEmitente as 'Filial Emitente',
		 ConhecimentosTransporte.CodFilialComissao as 'Filial Comissão',RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, RelacaoFretes.DataEntradaRelacao, RelacaoFretes.DataPrevistaPagamento,
		RelacaoFretes.DataChegadaDocumentos, ComboBox_Financeiro.Descricao AS Situacao, ComboBox_Financeiro1.Descricao AS IndDiferenca, 
		ISNULL(RelacaoFretes.TotalRelacao, 0) + ISNULL(RelacaoFretes.OutrasDespesas, 0) - ISNULL(RelacaoFretes.Desconto, 0) AS TotalPago, 
		CASE WHEN RelacaoFretes.CodRelacaoFrete IN (0) THEN 'X' ELSE NULL END AS Marcador 
FROM 
		RelacaoFretes 
		INNER JOIN ContasPagar ON RelacaoFretes.CodContasPagar = ContasPagar.CodContasPagar 
		INNER JOIN Fornecedores ON Fornecedores.CodFornecedor = RelacaoFretes.CodFornecedor 
		LEFT OUTER JOIN ConhecimentosRelacaoFretes ON RelacaoFretes.CodRelacaoFrete = ConhecimentosRelacaoFretes.CodRelacaoFrete
		LEFT OUTER JOIN ConhecimentosTransporte ON ConhecimentosTransporte.Sequencial = ConhecimentosRelacaoFretes.NumSeqConhecto
		LEFT OUTER JOIN ComboBox_Financeiro ON RelacaoFretes.CodSituacao = ComboBox_Financeiro.Codigo 
					AND ComboBox_Financeiro.NomeComboBox = 'cboSituacaoRelacaoFrete' 
		LEFT OUTER JOIN ComboBox_Financeiro ComboBox_Financeiro1 ON RelacaoFretes.CodIndicadorDiferenca = ComboBox_Financeiro1.Codigo
					AND ComboBox_Financeiro1.NomeComboBox = 'cboIndicadorDiferenca' 
		LEFT OUTER JOIN ValoresRelacaoFretes ON ValoresRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete
		LEFT OUTER JOIN ConhecimentosTransporte CTRC2 ON ValoresRelacaoFretes.CodComplemento = CTRC2.Sequencial 
		LEFT OUTER JOIN TiposValores ON TiposValores.CodTipoValor = ValoresRelacaoFretes.CodTipoValor
WHERE 
		ConhecimentosRelacaoFretes.CodTipoPagamento = 4 
		AND RelacaoFretes.DataEntradaRelacao
		BETWEEN '01/01/2023 00:00:00' AND '07/31/2023 23:59:29'
GROUP BY
		RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, RelacaoFretes.DataEntradaRelacao, RelacaoFretes.DataPrevistaPagamento,
		RelacaoFretes.DataChegadaDocumentos, ComboBox_Financeiro.Descricao, ComboBox_Financeiro1.Descricao, RelacaoFretes.TotalRelacao,
		RelacaoFretes.OutrasDespesas, RelacaoFretes.Desconto, RelacaoFretes.DataPrevistaPagamento, RelacaoFretes.DataChegadaDocumentos, ComboBox_Financeiro.Descricao, 
		ComboBox_Financeiro1.Descricao,ConhecimentosTransporte.NumConhecto,ConhecimentosTransporte.CodUF,ConhecimentosTransporte.CodFilialEmitente ,
		ConhecimentosTransporte.CodFilialComissao
ORDER BY 
		RelacaoFretes.CodRelacaoFrete

