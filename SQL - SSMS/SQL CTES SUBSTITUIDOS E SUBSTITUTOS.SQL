SELECT sub.DataEmissao, sub.CodUF, sub.NumConhecto
    , subpago.QtdePagtos 'Qtde.Pagto.Substituto'	
    , ori.DataEmissao, ori.CodUF, ori.NumConhecto
    , oripago.QtdePagtos 'Qtde.Pagto.Original',

	CASE		 WHEN crf1.CodTipoPagamento = 1		   THEN 'X'		   ELSE ''	   END AS 'Adiantamento',
	CASE         WHEN crf1.CodTipoPagamento = 2        THEN 'X'        ELSE ''     END AS 'Saldo de Frete',
	CASE         WHEN crf1.CodTipoPagamento = 3        THEN 'X'        ELSE ''     END AS 'Diferença Frete',
	CASE         WHEN crf1.CodTipoPagamento = 4        THEN 'X'        ELSE ''     END AS 'Estadia',
	CASE         WHEN crf1.CodTipoPagamento = 5        THEN 'X'        ELSE ''     END AS 'CTRC não cobrado',
	CASE         WHEN crf1.CodTipoPagamento = 6        THEN 'X'        ELSE ''     END AS 'ICMS',
	CASE         WHEN crf1.CodTipoPagamento = 7        THEN 'X'        ELSE ''     END AS 'Pedágio',
	CASE         WHEN crf1.CodTipoPagamento = 8        THEN 'X'        ELSE ''     END AS 'Diferença ICMS',
	CASE         WHEN crf1.CodTipoPagamento = 9        THEN 'X'        ELSE ''     END AS 'Quebra Restituída',
	CASE         WHEN crf1.CodTipoPagamento = 10       THEN 'X'        ELSE ''     END AS 'ICMS Retido',
	CASE         WHEN crf1.CodTipoPagamento = 11       THEN 'X'        ELSE ''     END AS 'Combustível'

FROM ConhecimentosSubstituidos subst
JOIN ConhecimentosTransporte sub on sub.Sequencial = subst.SeqCTRCSubstituto
JOIN ConhecimentosTransporte ori on ori.Sequencial = subst.SeqCTRCOriginal
JOIN ConhecimentosRelacaoFretes crf1 on crf1.NumSeqConhecto = ori.Sequencial
LEFT JOIN (SELECT crf.NumSeqConhecto, count(*) QtdePagtos
    FROM ConhecimentosRelacaoFretes crf
    JOIN TiposPagamentoFrete tp ON tp.CodTipoPagamento = crf.CodTipoPagamento
    GROUP BY crf.NumSeqConhecto) subpago ON subpago.NumSeqConhecto = sub.Sequencial
LEFT JOIN (SELECT crf.NumSeqConhecto, count(*) QtdePagtos
    FROM ConhecimentosRelacaoFretes crf
    JOIN TiposPagamentoFrete tp ON tp.CodTipoPagamento = crf.CodTipoPagamento
    GROUP BY crf.NumSeqConhecto) oripago ON oripago.NumSeqConhecto = ori.Sequencial
WHERE sub.DataEmissao BETWEEN '2022-01-01' and '2024-10-22 23:59:29'
    AND sub.SituacaoConhecto <> 'Cancelado'
    AND ISNULL(subpago.QtdePagtos,0) > 0
ORDER BY sub.DataEmissao, sub.CodUF, sub.NumConhecto




--SELECT Codigo, Descricao FROM ComboBox_Financeiro WHERE (NomeComboBox = 'cboTipoPagamento') ORDER BY Codigo




--SELECT sub.DataEmissao, sub.CodUF, sub.NumConhecto
--    , subpago.QtdePagtos 'Qtde.Pagto.Substituto'
--	, subpago.CodTipoPagamento
--    , ori.DataEmissao, ori.CodUF, ori.NumConhecto
--    , oripago.QtdePagtos 'Qtde.Pagto.Original'
--	, oripago.CodTipoPagamento
	
	
--FROM ConhecimentosSubstituidos subst
--JOIN ConhecimentosTransporte sub on sub.Sequencial = subst.SeqCTRCSubstituto
--JOIN ConhecimentosTransporte ori on ori.Sequencial = subst.SeqCTRCOriginal
--LEFT JOIN (SELECT crf.NumSeqConhecto,crf.CodTipoPagamento, count(*) QtdePagtos
--    FROM ConhecimentosRelacaoFretes crf
--    JOIN TiposPagamentoFrete tp ON tp.CodTipoPagamento = crf.CodTipoPagamento
--    GROUP BY crf.NumSeqConhecto,crf.CodTipoPagamento) subpago ON subpago.NumSeqConhecto = sub.Sequencial
----LEFT JOIN (SELECT crf.NumSeqConhecto,crf.CodTipoPagamento, count(*) QtdePagtos
----    FROM ConhecimentosRelacaoFretes crf
----    JOIN TiposPagamentoFrete tp ON tp.CodTipoPagamento = crf.CodTipoPagamento
----    GROUP BY crf.NumSeqConhecto,crf.CodTipoPagamento) subtipopago ON subpago.NumSeqConhecto = sub.Sequencial
--LEFT JOIN (SELECT crf.NumSeqConhecto,crf.CodTipoPagamento, count(*) QtdePagtos
--    FROM ConhecimentosRelacaoFretes crf
--    JOIN TiposPagamentoFrete tp ON tp.CodTipoPagamento = crf.CodTipoPagamento
--    GROUP BY crf.NumSeqConhecto,crf.CodTipoPagamento) oripago ON oripago.NumSeqConhecto = ori.Sequencial
----LEFT JOIN (SELECT crf.NumSeqConhecto,crf.CodTipoPagamento, count(*) QtdePagtos
----    FROM ConhecimentosRelacaoFretes crf
----    JOIN TiposPagamentoFrete tp ON tp.CodTipoPagamento = crf.CodTipoPagamento
----    GROUP BY crf.NumSeqConhecto,crf.CodTipoPagamento) oritipopago ON oripago.NumSeqConhecto = ori.Sequencial
--WHERE sub.DataEmissao BETWEEN '2022-01-01' and '2024-05-01 23:59:29'
--    AND sub.SituacaoConhecto <> 'Cancelado'
--    AND ISNULL(subpago.QtdePagtos,0) > 0
--ORDER BY sub.CodUF, sub.NumConhecto