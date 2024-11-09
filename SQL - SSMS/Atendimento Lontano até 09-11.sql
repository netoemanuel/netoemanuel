SELECT CodRota,CodPedidoFrete, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 15030    and CodUF = 'RO'
SELECT CodRota,CodPedidoFrete, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto in (737374, 737362)    and CodUF = 'MT'
EXEC MonitoraMDFe 55041614
-- Rejeição: Existe MDF-e não encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe Não Encerrada:51241111455829000286580020003991461016251526][NroProtocolo:951240018092673]
EXEC MonitoraMDFe 2172169

EXEC VerificaCTe 20000157952

select * from ConhecimentosTransporte where NumConhecto =  66051 and CodUF = 'GO' AND SerieConhecto = '2'
select * from ConhecimentosTransporte_log where NumConhecto =  66051 and CodUF = 'GO' AND SerieConhecto = '2'
SELECT * from RelatorioEmbarque where NumRelatorioEmbarque = 31021296
SELECT * from RelatorioEmbarque where CodUsuarioCriacao = 11529 ORDER by DataCriacao desc
SELECT * from RelatorioEmbarque_log where CodUsuarioLog = 11529 ORDER by DataLog desc
select * from PedidosEmbarque where CodPedidoFrete = 31010133 ORDER BY DataCriacao desc
--INSERT into PedidosEmbarque VALUES (31021296,31010133,1,1,NULL,NULL,NULL,NULL,NULL,'KG',11529,'ANP','2024-11-08 08:22:49.000',NULL,NULL,NULL)
select * from PedidosEmbarque where NumRelatorioEmbarque = 31021296

select * from MovimentacaoBancaria where CodMovBancaria = 1623784
--UPDATE MovimentacaoBancaria SET CodContaBancaria = 1 where CodMovBancaria = 1623784  --24
select * from MovimentacaoBancaria where CodMovBancaria = 1623785
--UPDATE MovimentacaoBancaria SET CodContaBancaria = 1 where CodMovBancaria = 1623785  --24

SELECT CodCaixa,* from ContasPagar where CodContasPagar  IN (1719996)

SELECT DISTINCT ContasPagar.CodContasPagar, ContasPagar.CodFornecedor, Fornecedores.RazaoSocial, ContasPagar.DataVencimento, ContasPagar.ValorPagar, ContasPagar.Situacao, 
ComboBox_Financeiro.Descricao AS DescTipoContasPagar, ContasPagar.NumDocumento, ContasPagar.CodTipoDespesa, ContasPagas.ValorTotalPago 
FROM ContasPagar
LEFT OUTER JOIN RateioContasPagar ON ContasPagar.CodContasPagar = RateioContasPagar.CodContasPagar
LEFT OUTER JOIN DespesasContasPagar ON ContasPagar.CodContasPagar = DespesasContasPagar.CodContasPagar 
LEFT OUTER JOIN Fornecedores ON ContasPagar.CodFornecedor = Fornecedores.CodFornecedor
LEFT OUTER JOIN ComboBox_Financeiro ON ContasPagar.CodTipoContasPagar = ComboBox_Financeiro.Codigo AND ComboBox_Financeiro.NomeComboBox = 'cboTipoContasPagar'
LEFT OUTER JOIN ContasPagas ON ContasPagar.CodContasPagar = ContasPagas.CodContasPagar
WHERE
(ContasPagas.CodMovCaixa = 101798663) ORDER BY ContasPagar.CodContasPagar