SELECT 
    sub.DataEmissao, 
    sub.CodUF, 
    sub.NumConhecto,
    ISNULL(subpago.QtdePagtos, 0) AS 'Qtde.Pagto.Substituto',
    
    -- Pagamentos do Substituto
    MAX(CASE WHEN crf2.CodTipoPagamento = 1 THEN 'X' ELSE '' END) AS 'Adiantamento',
    MAX(CASE WHEN crf2.CodTipoPagamento = 2 THEN 'X' ELSE '' END) AS 'Saldo de Frete',
    MAX(CASE WHEN crf2.CodTipoPagamento = 3 THEN 'X' ELSE '' END) AS 'Diferença Frete',
    MAX(CASE WHEN crf2.CodTipoPagamento = 4 THEN 'X' ELSE '' END) AS 'Estadia',
    --MAX(CASE WHEN crf2.CodTipoPagamento = 5 THEN 'X' ELSE '' END) AS 'CTRC não cobrado',
    --MAX(CASE WHEN crf2.CodTipoPagamento = 6 THEN 'X' ELSE '' END) AS 'ICMS',
    MAX(CASE WHEN crf2.CodTipoPagamento = 7 THEN 'X' ELSE '' END) AS 'Pedágio',
    --MAX(CASE WHEN crf2.CodTipoPagamento = 8 THEN 'X' ELSE '' END) AS 'Diferença ICMS',
    --MAX(CASE WHEN crf2.CodTipoPagamento = 9 THEN 'X' ELSE '' END) AS 'Quebra Restituída',
    --MAX(CASE WHEN crf2.CodTipoPagamento = 10 THEN 'X' ELSE '' END) AS 'ICMS Retido',
    --MAX(CASE WHEN crf2.CodTipoPagamento = 11 THEN 'X' ELSE '' END) AS 'Combustível',
    
    ori.DataEmissao AS DataEmissao2, 
    ori.CodUF AS CodUF3, 
    ori.NumConhecto AS NumConhecto4,
    ISNULL(oripago.QtdePagtos, 0) AS 'Qtde.Pagto.Original',
    
    -- Pagamentos do Original
    MAX(CASE WHEN crf1.CodTipoPagamento = 1 THEN 'X' ELSE '' END) AS 'Adiantamento2',
    MAX(CASE WHEN crf1.CodTipoPagamento = 2 THEN 'X' ELSE '' END) AS 'Saldo de Frete2',
    MAX(CASE WHEN crf1.CodTipoPagamento = 3 THEN 'X' ELSE '' END) AS 'Diferença Frete2',
    MAX(CASE WHEN crf1.CodTipoPagamento = 4 THEN 'X' ELSE '' END) AS 'Estadia2',
    --MAX(CASE WHEN crf1.CodTipoPagamento = 5 THEN 'X' ELSE '' END) AS 'CTRC não cobrado2',
    --MAX(CASE WHEN crf1.CodTipoPagamento = 6 THEN 'X' ELSE '' END) AS 'ICMS2',
    MAX(CASE WHEN crf1.CodTipoPagamento = 7 THEN 'X' ELSE '' END) AS 'Pedágio2'
    --MAX(CASE WHEN crf1.CodTipoPagamento = 8 THEN 'X' ELSE '' END) AS 'Diferença ICMS2',
    --MAX(CASE WHEN crf1.CodTipoPagamento = 9 THEN 'X' ELSE '' END) AS 'Quebra Restituída2',
    --MAX(CASE WHEN crf1.CodTipoPagamento = 10 THEN 'X' ELSE '' END) AS 'ICMS Retido2',
    --MAX(CASE WHEN crf1.CodTipoPagamento = 11 THEN 'X' ELSE '' END) AS 'Combustível2'
    
FROM ConhecimentosSubstituidos subst
JOIN ConhecimentosTransporte sub ON sub.Sequencial = subst.SeqCTRCSubstituto
JOIN ConhecimentosTransporte ori ON ori.Sequencial = subst.SeqCTRCOriginal
JOIN ConhecimentosRelacaoFretes crf1 ON crf1.NumSeqConhecto = ori.Sequencial
JOIN ConhecimentosRelacaoFretes crf2 ON crf2.NumSeqConhecto = sub.Sequencial
LEFT JOIN (SELECT crf.NumSeqConhecto, COUNT(*) AS QtdePagtos
           FROM ConhecimentosRelacaoFretes crf
           JOIN TiposPagamentoFrete tp ON tp.CodTipoPagamento = crf.CodTipoPagamento
           GROUP BY crf.NumSeqConhecto) subpago ON subpago.NumSeqConhecto = sub.Sequencial
LEFT JOIN (SELECT crf.NumSeqConhecto, COUNT(*) AS QtdePagtos
           FROM ConhecimentosRelacaoFretes crf
           JOIN TiposPagamentoFrete tp ON tp.CodTipoPagamento = crf.CodTipoPagamento
           GROUP BY crf.NumSeqConhecto) oripago ON oripago.NumSeqConhecto = ori.Sequencial
WHERE sub.DataEmissao BETWEEN '2022-01-01' AND '2024-10-22 23:59:29'
  AND sub.SituacaoConhecto <> 'Cancelado'
GROUP BY 
    sub.DataEmissao, 
    sub.CodUF, 
    sub.NumConhecto, 
    ori.DataEmissao, 
    ori.CodUF, 
    ori.NumConhecto, 
    subpago.QtdePagtos, 
    oripago.QtdePagtos
ORDER BY sub.DataEmissao, sub.CodUF, sub.NumConhecto;


--SELECT Codigo, Descricao FROM ComboBox_Financeiro WHERE (NomeComboBox = 'cboTipoPagamento') ORDER BY Codigo