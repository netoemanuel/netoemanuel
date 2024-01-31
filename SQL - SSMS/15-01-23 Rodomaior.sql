use RODOMAIOR 

-- SQL nova conferencia de frete. - desconto gravado como null - valor esta na diferença.
SELECT 
	ConhecimentosRelacaoFretes.*, ConhecimentosTransporte.CodUF, ConhecimentosTransporte.NumConhecto,
	ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao,
	ComboBox_Financeiro.Descricao, ISNULL(ValorConferido, 0) AS ValorCalculado, ISNULL(ValorPago - ValorConferido, ValorPago) AS Diferenca, ConhecimentosTransporte.DiferencaFreteAgregado
FROM 
	ConhecimentosRelacaoFretes
	INNER JOIN ConhecimentosTransporte ON ConhecimentosRelacaoFretes.NumSeqConhecto = ConhecimentosTransporte.Sequencial 
	INNER JOIN ComboBox_Financeiro ON ConhecimentosRelacaoFretes.CodTipoPagamento = ComboBox_Financeiro.Codigo 
	AND ComboBox_Financeiro.NomeComboBox = 'cboTipoPagamento'
WHERE
	(ConhecimentosRelacaoFretes.CodRelacaoFrete = 1098003)
	AND (NumSeqConhecto = 950000004328) 
	AND (CodTipoPagamento = 2) 
	
ORDER BY 
	ConhecimentosRelacaoFretes.Sequencial

SELECT ValorTotal,* FROM GerenciamentoRisco WHERE SeqConhecto = 950000004328

	-- SQL Calculo Saldo Frete.

SELECT COUNT(*) AS Registros FROM ConhecimentosTransporte WHERE Sequencial = 950000004328 And TipoConhecimento = 'Complemento' -- = 0
 SELECT TipoConhecimento,* FROM ConhecimentosTransporte WHERE Sequencial = 950000004328  -- = 0

 --calculo do valor VB6
 --txtValorSeguro.Text = Format(IIf(Not IsNull(rsCTRC!Outros), rsCTRC!Outros, 0) + IIf(Not IsNull(rsCTRC!Desconto), rsCTRC!Desconto, 0) + IIf(IsNull(rsCTRC!ValorGR_Ordem),
 --ValorGerenRisco, rsCTRC!ValorGR_Ordem), "#,##0.00")



 SELECT CodGerenciadoraRisco, DataConsulta, NumeroConsulta, ValorTotal FROM OrdemEmbarque WHERE (NumOrdemEmbarque = 95004333)
 

 select top (50)* from OrdemEmbarque where CodGerenciadoraRisco is not null and DataOrdemEmbarque BETWEEN '2023-12-20 00:00:00' and '2023-12-22 00:00:00'