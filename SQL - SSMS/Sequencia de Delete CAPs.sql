--DELETE FROM RetencaoContasPagar WHERE CodContasPagar in(
--DELETE FROM NotasFiscaisContasPagar WHERE CodContasPagar in (
--DELETE FROM RateioContasPagar WHERE CodContasPagar in (
--DELETE  FROM DespesasRateioContasPagar WHERE CodContasPagar in (
--DELETE  FROM ContasPagar WHERE CodContasPagar in (

SELECT DISTINCT ContasPagar.CodContasPagar
FROM ContasPagar 
INNER JOIN FiliaisAgencias ON ContasPagar.CodFilialOrigem = FiliaisAgencias.CodFilial 
INNER JOIN FiliaisAgencias FiliaisAgencias1 ON ContasPagar.CodFilialPagto = FiliaisAgencias1.CodFilial 
INNER JOIN Fornecedores ON ContasPagar.CodFornecedor = Fornecedores.CodFornecedor 
INNER JOIN Moedas ON ContasPagar.CodMoeda = Moedas.CodMoeda 
INNER JOIN ComboBox_Financeiro ON ContasPagar.CodTipoContasPagar = ComboBox_Financeiro.Codigo 
AND ComboBox_Financeiro.NomeComboBox = 'cboTipoContasPagar' 
INNER JOIN ComboBox_Financeiro ComboBox_Financeiro1 ON ContasPagar.CodTipoCobranca = ComboBox_Financeiro1.Codigo AND ComboBox_Financeiro1.NomeComboBox = 'cboTipoCobranca' 
INNER JOIN ComboBox_Financeiro ComboBox_Financeiro2 ON ContasPagar.CodTipoDocumento = ComboBox_Financeiro2.Codigo AND ComboBox_Financeiro2.NomeComboBox = 'cboTipoDocumento' 
LEFT OUTER JOIN PlanoContasDespesa ON ContasPagar.CodTipoDespesa = PlanoContasDespesa.CodTipoDespesa 
LEFT OUTER JOIN DespesasContasPagar ON DespesasContasPagar.CodContasPagar = ContasPagar.CodContasPagar
LEFT OUTER JOIN NotasFiscaisContasPagar ON ContasPagar.CodContasPagar = NotasFiscaisContasPagar.CodContasPagar 
WHERE 
(ContasPagar.DataVencimento BETWEEN '11/05/2024 00:00:00' AND '11/05/2024 23:59:29') AND (ContasPagar.CodEmpresaParam = 3) AND (ContasPagar.CodTipoContasPagar = 6) AND (ContasPagar.Situacao = 'Selecionada PAG-FOR') 
AND (ContasPagar.NumDocumento = '11/2024 Mensal'))
--ORDER BY ContasPagar.DataVencimento DESC

