SELECT Mov.DataLancamento, DATEDIFF(DAY, CASE WHEN DATEPART(WEEKDAY, Mov.DataMovimento) = 6 THEN (Mov.DataMovimento + 3) ELSE Mov.DataMovimento END, GETDATE()) AS Prazo, ISNULL(Conta.IndPagtoCheque,'N') AS PagtoCheque
FROM ConhecimentosRelFretes_Cheques CRFC 
INNER JOIN ChequesEmitidos Ch ON Ch.Sequencial = CRFC.SeqCheque 
JOIN MovimentosCaixa M ON M.CodMovimentoBancario = Ch.CodMovBancaria 
INNER JOIN ContasPagas CP ON CP.CodMovCaixa = M.CodMovCaixa 
JOIN MovimentacaoBancaria Mov ON Mov.CodMovBancaria = Ch.CodMovBancaria
JOIN ContasBancarias Conta ON Conta.CodFilial = Mov.CodFilial 
AND Conta.CodContaBancaria = Mov.CodContaBancaria
WHERE (CRFC.CodRelacaoFrete = 33003537) AND (CRFC.SeqConhecto = 250000078664) AND (CP.CodTipoPagamento = 2)

select * from ConhecimentosTransporte where NumConhecto = 510739  and CodUF = 'MS'
select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 970000041453
select * from ConhecimentosRelacaoFretes_log where NumSeqConhecto = 970000041453


SELECT Mov.DataLancamento, DATEDIFF(DAY, CASE WHEN DATEPART(WEEKDAY, Mov.DataMovimento) = 6 THEN (Mov.DataMovimento + 3) ELSE Mov.DataMovimento END, GETDATE()) AS Prazo, ISNULL(Conta.IndPagtoCheque,'N') AS PagtoCheque
FROM ConhecimentosRelFretes_Cheques CRFC 
INNER JOIN ChequesEmitidos Ch ON Ch.Sequencial = CRFC.SeqCheque 
JOIN MovimentosCaixa M ON M.CodMovimentoBancario = Ch.CodMovBancaria 
INNER JOIN ContasPagas CP ON CP.CodMovCaixa = M.CodMovCaixa 
JOIN MovimentacaoBancaria Mov ON Mov.CodMovBancaria = Ch.CodMovBancaria
JOIN ContasBancarias Conta ON Conta.CodFilial = Mov.CodFilial 
AND Conta.CodContaBancaria = Mov.CodContaBancaria
WHERE (CRFC.CodRelacaoFrete = 33003536) AND (CRFC.SeqConhecto = 970000041453) AND (CP.CodTipoPagamento = 1)


SELECT RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, Prot.NumProtocolo, RelacaoFretes.DataEntradaRelacao,
RelacaoFretes.DataPrevistaPagamento, RelacaoFretes.DataChegadaDocumentos, ComboBox_Financeiro.Descricao AS Situacao,
ComboBox_Financeiro1.Descricao AS IndDiferenca, 
ISNULL(RelacaoFretes.TotalRelacao, 0) + ISNULL(RelacaoFretes.OutrasDespesas, 0) - ISNULL(RelacaoFretes.Desconto, 0) AS TotalPago, 
CASE WHEN RelacaoFretes.CodRelacaoFrete IN (0) THEN 'X' ELSE NULL END AS Marcador,  Ultpas.Localizacao, UltPas.DataHoraPassagem 
FROM RelacaoFretes INNER JOIN ContasPagar ON RelacaoFretes.CodContasPagar = ContasPagar.CodContasPagar 
INNER JOIN Fornecedores ON Fornecedores.CodFornecedor = RelacaoFretes.CodFornecedor 
LEFT OUTER JOIN ConhecimentosRelacaoFretes ON RelacaoFretes.CodRelacaoFrete = ConhecimentosRelacaoFretes.CodRelacaoFrete
LEFT OUTER JOIN ConhecimentosTransporte ON ConhecimentosTransporte.Sequencial = ConhecimentosRelacaoFretes.NumSeqConhecto 
LEFT OUTER JOIN ComboBox_Financeiro ON RelacaoFretes.CodSituacao = ComboBox_Financeiro.Codigo 
AND ComboBox_Financeiro.NomeComboBox = 'cboSituacaoRelacaoFrete'
LEFT OUTER JOIN ComboBox_Financeiro ComboBox_Financeiro1 ON RelacaoFretes.CodIndicadorDiferenca = ComboBox_Financeiro1.Codigo AND ComboBox_Financeiro1.NomeComboBox = 'cboIndicadorDiferenca' 
LEFT OUTER JOIN ValoresRelacaoFretes ON ValoresRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete
LEFT OUTER JOIN ComboBox_Financeiro ComboBox_Financeiro2 ON RelacaoFretes.TipoPagtoRelacao = ComboBox_Financeiro2.Codigo AND ComboBox_Financeiro2.NomeComboBox = 'cboTipoPagtoRelacao' 
LEFT OUTER JOIN ConhecimentosTransporte CTRC2 ON ValoresRelacaoFretes.CodComplemento = CTRC2.Sequencial
LEFT OUTER JOIN TiposValores ON TiposValores.CodTipoValor = ValoresRelacaoFretes.CodTipoValor 
LEFT OUTER JOIN UltimoRegPassagem UltPas ON UltPas.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
LEFT OUTER JOIN Protocolo_RelacaoFretes Prot on Prot.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
AND Prot.NumProtocolo = (SELECT MAX(UltProt.NumProtocolo) FROM Protocolo_RelacaoFretes UltProt WHERE UltProt.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete) 
WHERE RelacaoFretes.DataEntradaRelacao BETWEEN '01/01/2024 00:00:00' AND '01/03/2024 23:59:29' AND ComboBox_Financeiro2.Descricao = 'Vale Transporte'
GROUP BY RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, Prot.NumProtocolo, RelacaoFretes.DataEntradaRelacao,
RelacaoFretes.DataPrevistaPagamento, RelacaoFretes.DataChegadaDocumentos, ComboBox_Financeiro.Descricao, ComboBox_Financeiro1.Descricao, RelacaoFretes.TotalRelacao, 
RelacaoFretes.OutrasDespesas, RelacaoFretes.Desconto, UltPas.DataHoraPassagem, UltPas.Localizacao
ORDER BY RelacaoFretes.CodRelacaoFrete



SELECT RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, Prot.NumProtocolo, RelacaoFretes.DataEntradaRelacao, 
RelacaoFretes.DataPrevistaPagamento, RelacaoFretes.DataChegadaDocumentos, ComboBox_Financeiro.Descricao AS Situacao, ComboBox_Financeiro1.Descricao AS IndDiferenca, 
ISNULL(RelacaoFretes.TotalRelacao, 0) + ISNULL(RelacaoFretes.OutrasDespesas, 0) - ISNULL(RelacaoFretes.Desconto, 0) AS TotalPago, CASE WHEN RelacaoFretes.CodRelacaoFrete IN (0) THEN 'X' ELSE NULL END AS Marcador, 
Ultpas.Localizacao, UltPas.DataHoraPassagem FROM RelacaoFretes INNER JOIN ContasPagar ON RelacaoFretes.CodContasPagar = ContasPagar.CodContasPagar 
INNER JOIN Fornecedores ON Fornecedores.CodFornecedor = RelacaoFretes.CodFornecedor 
LEFT OUTER JOIN ConhecimentosRelacaoFretes ON RelacaoFretes.CodRelacaoFrete = ConhecimentosRelacaoFretes.CodRelacaoFrete 
LEFT OUTER JOIN ConhecimentosTransporte ON ConhecimentosTransporte.Sequencial = ConhecimentosRelacaoFretes.NumSeqConhecto
LEFT OUTER JOIN ComboBox_Financeiro ON RelacaoFretes.CodSituacao = ComboBox_Financeiro.Codigo AND ComboBox_Financeiro.NomeComboBox = 'cboSituacaoRelacaoFrete' 
LEFT OUTER JOIN ComboBox_Financeiro ComboBox_Financeiro1 ON RelacaoFretes.CodIndicadorDiferenca = ComboBox_Financeiro1.Codigo AND ComboBox_Financeiro1.NomeComboBox = 'cboIndicadorDiferenca'
LEFT OUTER JOIN ValoresRelacaoFretes ON ValoresRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete
LEFT OUTER JOIN ComboBox_Financeiro ComboBox_Financeiro2 ON RelacaoFretes.TipoPagtoRelacao = ComboBox_Financeiro2.Codigo AND ComboBox_Financeiro2.NomeComboBox = 'cboTipoPagtoRelacao' LEFT OUTER JOIN ConhecimentosTransporte CTRC2 ON ValoresRelacaoFretes.CodComplemento = CTRC2.Sequencial LEFT OUTER JOIN TiposValores ON TiposValores.CodTipoValor = ValoresRelacaoFretes.CodTipoValor LEFT OUTER JOIN UltimoRegPassagem UltPas ON UltPas.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete LEFT OUTER JOIN Protocolo_RelacaoFretes Prot on Prot.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete AND Prot.
NumProtocolo = (SELECT MAX(UltProt.NumProtocolo) FROM Protocolo_RelacaoFretes UltProt WHERE UltProt.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete) WHERE RelacaoFretes.DataEntradaRelacao BETWEEN '01/01/2024 00:00:00' AND '01/22/2024 23:59:29' AND ComboBox_Financeiro2.Descricao = 'Vale Transporte' GROUP BY RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, Prot.NumProtocolo, RelacaoFretes.DataEntradaRelacao, RelacaoFretes.DataPrevistaPagamento, RelacaoFretes.DataChegadaDocumentos, ComboBox_Financeiro.Descricao, ComboBox_Financeiro1.Descricao, RelacaoFretes.TotalRelacao, RelacaoFretes.OutrasDespesas, RelacaoFretes.Desconto, UltPas.DataHoraPassagem, UltPas.Localizacao ORDER BY RelacaoFretes.CodRelacaoFrete





