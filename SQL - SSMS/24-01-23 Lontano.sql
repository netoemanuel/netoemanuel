use LONTANO



SELECT
RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, Prot.NumProtocolo, RelacaoFretes.DataEntradaRelacao,
RelacaoFretes.DataPrevistaPagamento, RelacaoFretes.DataChegadaDocumentos, ComboBox_Financeiro.Descricao AS Situacao, ComboBox_Financeiro1.Descricao AS IndDiferenca, 
ISNULL(RelacaoFretes.TotalRelacao, 0) + ISNULL(RelacaoFretes.OutrasDespesas, 0) - ISNULL(RelacaoFretes.Desconto, 0) AS TotalPago,
CASE WHEN RelacaoFretes.CodRelacaoFrete IN (0) THEN 'X' ELSE NULL END AS Marcador,  Ultpas.Localizacao, UltPas.DataHoraPassagem FROM RelacaoFretes 
INNER JOIN ContasPagar ON RelacaoFretes.CodContasPagar = ContasPagar.CodContasPagar
INNER JOIN Fornecedores ON Fornecedores.CodFornecedor = RelacaoFretes.CodFornecedor 
LEFT OUTER JOIN ConhecimentosRelacaoFretes ON RelacaoFretes.CodRelacaoFrete = ConhecimentosRelacaoFretes.CodRelacaoFrete 
LEFT OUTER JOIN ConhecimentosTransporte ON ConhecimentosTransporte.Sequencial = ConhecimentosRelacaoFretes.NumSeqConhecto 
LEFT OUTER JOIN ComboBox_Financeiro ON RelacaoFretes.CodSituacao = ComboBox_Financeiro.Codigo AND ComboBox_Financeiro.NomeComboBox = 'cboSituacaoRelacaoFrete' 
LEFT OUTER JOIN ComboBox_Financeiro ComboBox_Financeiro1 ON RelacaoFretes.CodIndicadorDiferenca = ComboBox_Financeiro1.Codigo AND ComboBox_Financeiro1.NomeComboBox = 'cboIndicadorDiferenca' 
LEFT OUTER JOIN ValoresRelacaoFretes ON ValoresRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete
LEFT OUTER JOIN ComboBox_Financeiro ComboBox_Financeiro2 ON RelacaoFretes.TipoPagtoRelacao = ComboBox_Financeiro2.Codigo AND ComboBox_Financeiro2.NomeComboBox = 'cboTipoPagtoRelacao' 
LEFT OUTER JOIN ConhecimentosTransporte CTRC2 ON ValoresRelacaoFretes.CodComplemento = CTRC2.Sequencial 
LEFT OUTER JOIN TiposValores ON TiposValores.CodTipoValor = ValoresRelacaoFretes.CodTipoValor 
LEFT OUTER JOIN UltimoRegPassagem UltPas ON UltPas.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
LEFT OUTER JOIN Protocolo_RelacaoFretes Prot on Prot.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
AND Prot.NumProtocolo = (SELECT MAX(UltProt.NumProtocolo) FROM Protocolo_RelacaoFretes UltProt WHERE UltProt.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete) 
WHERE RelacaoFretes.DataEntradaRelacao BETWEEN '01/01/2024 00:00:00' AND '01/24/2024 23:59:29' 
AND ComboBox_Financeiro2.Descricao = 'Vale Transporte' 
GROUP BY RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, Prot.NumProtocolo, RelacaoFretes.DataEntradaRelacao, RelacaoFretes.DataPrevistaPagamento, RelacaoFretes.DataChegadaDocumentos, ComboBox_Financeiro.Descricao, ComboBox_Financeiro1.Descricao, RelacaoFretes.TotalRelacao, RelacaoFretes.OutrasDespesas, RelacaoFretes.Desconto, UltPas.DataHoraPassagem, UltPas.Localizacao 
ORDER BY RelacaoFretes.CodRelacaoFrete

--select * from RelacaoFretes 
-- inner join ComboBox_Financeiro CF on CF.Codigo = TipoPagtoRelacao and CF.NomeComboBox = 'cboTipoPagtoRelacao'
-- where cf.Descricao = 'Vale Transporte' and DataEntradaRelacao BETWEEN '01/01/2024 00:00:00' AND '01/24/2024 23:59:29' 

{RelacaoFretes.DataEntradaRelacao} >= Cdate('01/01/2024') And {RelacaoFretes.DataEntradaRelacao} <= Cdate('24/01/2024')
AND {ComboBox_Financeiro2.Descricao} = 'Vale Transporte'

--{RelacaoFretes.DataEntradaRelacao} >= Cdate('01/01/2024') And {RelacaoFretes.DataEntradaRelacao} <= Cdate('24/01/2024') AND {ComboBox_Financeiro2.Descricao} = 'Vale Transporte'

SELECT DISTINCT RelacaoFretes.Desconto,ComboBox_Financeiro2.Descricao, RelacaoFretes.OutrasDespesas, RelacaoFretes.TotalRelacao, RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, 
Fornecedores.RazaoSocial, RelacaoFretes.DataEntradaRelacao, RelacaoFretes.DataPrevistaPagamento, ComboBox_Financeiro.Descricao, ComboBox_Financeiro1.Descricao, 
Fornecedores.DDD, Fornecedores.Fone1, Fornecedores.Fone2, UltimoRegPassagem.Localizacao, UltimoRegPassagem.DataHoraPassagem, ComboBox_Financeiro.NomeComboBox, 
ComboBox_Financeiro1.NomeComboBox
FROM  (((LONTANO.dbo.RelacaoFretes RelacaoFretes 
INNER JOIN LONTANO.dbo.Fornecedores Fornecedores ON RelacaoFretes.CodFornecedor=Fornecedores.CodFornecedor) 
LEFT OUTER JOIN LONTANO.dbo.ComboBox_Financeiro ComboBox_Financeiro ON RelacaoFretes.CodSituacao=ComboBox_Financeiro.Codigo)
LEFT OUTER JOIN LONTANO.dbo.ComboBox_Financeiro ComboBox_Financeiro1 ON RelacaoFretes.CodIndicadorDiferenca=ComboBox_Financeiro1.Codigo)
LEFT OUTER JOIN LONTANO.dbo.UltimoRegPassagem UltimoRegPassagem ON RelacaoFretes.CodRelacaoFrete=UltimoRegPassagem.CodRelacaoFrete
LEFT OUTER JOIN ComboBox_Financeiro ComboBox_Financeiro2 ON RelacaoFretes.TipoPagtoRelacao = ComboBox_Financeiro2.Codigo AND ComboBox_Financeiro2.NomeComboBox = 'cboTipoPagtoRelacao'

WHERE  ComboBox_Financeiro.NomeComboBox='cboSituacaoRelacaoFrete' 
AND RelacaoFretes.DataEntradaRelacao >= ('2024-01-01') And RelacaoFretes.DataEntradaRelacao =('2024-01-02')
AND ComboBox_Financeiro2.Descricao = 'Vale Transporte' 
AND (ComboBox_Financeiro1.NomeComboBox IS  NULL  OR ComboBox_Financeiro1.NomeComboBox='cboIndicadorDiferenca')


select CIOT,* from OrdemEmbarque where NumOrdemEmbarque = 5019387
--UPDATE OrdemEmbarque set CIOT = 'REPOM' where NumOrdemEmbarque = 5019387
select CIOT,* from OrdemEmbarque_log where NumOrdemEmbarque = 5019387



select * from Veiculos where PlacaVeiculo = 'HRO-7627'
select * from ConjuntosVeiculo where CodVeiculo = 111487

		




select EmpresaValePedagio,NumCartaoValePedagio,TipoDispositivoValePedagio,* from OrdemEmbarque_log where NumOrdemEmbarque = 41058945