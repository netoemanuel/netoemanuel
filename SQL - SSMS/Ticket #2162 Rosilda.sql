SELECT * from Usuarios where NomeUsuario = 'Leonardo Martins Ferreira'
SELECT * from Usuarios where NomeUsuario = 'Ana Livia Fernandes Rodrigues'
SELECT * from Usuarios where NomeUsuario like 'Rosilda%'
USE LONTANO


select * from PermissoesAcesso where CodPrograma = 'DespesaRestritaMovCaixa' and CodUsuario in (11543, 13934, 14311)
--rosilda
SELECT * FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa WHERE (MovimentosCaixa.CodFilial = 'PTC') AND (MovimentosCaixa.CodCaixa = 10) AND (MovimentosCaixa.DebitoCredito = 'D') AND (MovimentosCaixa.DataCaixa BETWEEN '06/01/2022 00:00:00' AND '06/20/2022 23:59:29')

-- outra

SELECT * FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa LEFT OUTER JOIN TiposMovimentoCaixa ON TiposMovimentoCaixa.CodTipoMovCaixa = MovimentosCaixa.CodTipoMovCaixa LEFT OUTER JOIN PlanoContasDespesa ON MovimentosCaixa.CodRecDesp = PlanoContasDespesa.CodTipoDespesa LEFT OUTER JOIN MovimentosCaixa ContraPartida ON ContraPartida.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa LEFT OUTER JOIN TiposMovimentoCaixa TipoCP ON TipoCP.CodTipoMovCaixa = ContraPartida.CodTipoMovCaixa LEFT OUTER JOIN (select cap.valorpagar, f.codcolaborador, cap.codtipodespesa, pagto.CodMovCaixa  from ContasPagar cap join Fornecedores f on f.CodFornecedor = cap.CodFornecedor join ContasPagas pagto on pagto.CodContasPagar = cap.CodContasPagar) pag ON pag.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa AND pag.ValorPagar = MovimentosCaixa.ValorMovimento AND pag.CodColaborador = Caixas.CodColaborador LEFT
 OUTER JOIN PlanoContasDespesa PlanoCP ON PlanoCP.CodTipoDespesa = ISNULL(ContraPartida.CodRecDesp,pag.CodTipoDespesa) WHERE (MovimentosCaixa.CodFilial = 'PTC') AND (MovimentosCaixa.CodCaixa = 10) AND (MovimentosCaixa.DebitoCredito = 'D') AND (MovimentosCaixa.DataCaixa BETWEEN '06/01/2022 00:00:00' AND '06/20/2022 23:59:29') AND (TiposMovimentoCaixa.TipoReceitaDespesa <> 'Despesa' OR (TiposMovimentoCaixa.TipoReceitaDespesa = 'Despesa' AND ((ISNULL(PlanoContasDespesa.VisualizacaoRestrita, '') <> 'S' )))) AND (MovimentosCaixa.Gerado = 'N' OR MovimentosCaixa.CodMovimentoCaixa IS NULL OR (MovimentosCaixa.Gerado = 'S' AND MovimentosCaixa.CodMovimentoCaixa IS NOT NULL AND (TipoCP.TipoReceitaDespesa = 'Despesa' AND ((ISNULL(PlanoCP.VisualizacaoRestrita, '') <> 'S' ))))) 

 -- 4229.85
SELECT SUM(MovimentosCaixa.ValorMovimento) AS Debitos FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa WHERE (MovimentosCaixa.CodFilial = 'PTC') AND (MovimentosCaixa.CodCaixa = 10) AND (MovimentosCaixa.DebitoCredito = 'D') AND (MovimentosCaixa.DataCaixa BETWEEN '06/01/2022 00:00:00' AND '06/20/2022 23:59:29')

SELECT 4229.85 - 2776.30
-- 2776.30
SELECT SUM(MovimentosCaixa.ValorMovimento) AS Debitos FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa LEFT OUTER JOIN TiposMovimentoCaixa ON TiposMovimentoCaixa.CodTipoMovCaixa = MovimentosCaixa.CodTipoMovCaixa LEFT OUTER JOIN PlanoContasDespesa ON MovimentosCaixa.CodRecDesp = PlanoContasDespesa.CodTipoDespesa LEFT OUTER JOIN MovimentosCaixa ContraPartida ON ContraPartida.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa LEFT OUTER JOIN TiposMovimentoCaixa TipoCP ON TipoCP.CodTipoMovCaixa = ContraPartida.CodTipoMovCaixa LEFT OUTER JOIN (select cap.valorpagar, f.codcolaborador, cap.codtipodespesa, pagto.CodMovCaixa  from ContasPagar cap join Fornecedores f on f.CodFornecedor = cap.CodFornecedor join ContasPagas pagto on pagto.CodContasPagar = cap.CodContasPagar) pag ON pag.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa AND pag.ValorPagar = MovimentosCaixa.ValorMovimento AND pag.CodColaborador = Caixas.CodColaborador LEFT
 OUTER JOIN PlanoContasDespesa PlanoCP ON PlanoCP.CodTipoDespesa = ISNULL(ContraPartida.CodRecDesp,pag.CodTipoDespesa) WHERE (MovimentosCaixa.CodFilial = 'PTC') AND (MovimentosCaixa.CodCaixa = 10) AND (MovimentosCaixa.DebitoCredito = 'D') AND (MovimentosCaixa.DataCaixa BETWEEN '06/01/2022 00:00:00' AND '06/20/2022 23:59:29') AND (TiposMovimentoCaixa.TipoReceitaDespesa <> 'Despesa' OR (TiposMovimentoCaixa.TipoReceitaDespesa = 'Despesa' AND ((ISNULL(PlanoContasDespesa.VisualizacaoRestrita, '') <> 'S' )))) AND (MovimentosCaixa.Gerado = 'N' OR MovimentosCaixa.CodMovimentoCaixa IS NULL OR (MovimentosCaixa.Gerado = 'S' AND MovimentosCaixa.CodMovimentoCaixa IS NOT NULL AND (TipoCP.TipoReceitaDespesa = 'Despesa' AND ((ISNULL(PlanoCP.VisualizacaoRestrita, '') <> 'S' )))))


 --

 SELECT MovimentosCaixa.CodMovCaixa, ContraPartida.* 
 FROM MovimentosCaixa 
 LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa 
 LEFT OUTER JOIN TiposMovimentoCaixa ON TiposMovimentoCaixa.CodTipoMovCaixa = MovimentosCaixa.CodTipoMovCaixa
 LEFT OUTER JOIN PlanoContasDespesa ON MovimentosCaixa.CodRecDesp = PlanoContasDespesa.CodTipoDespesa
 LEFT OUTER JOIN MovimentosCaixa ContraPartida ON ContraPartida.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa 
 LEFT OUTER JOIN TiposMovimentoCaixa TipoCP ON TipoCP.CodTipoMovCaixa = ContraPartida.CodTipoMovCaixa
 LEFT OUTER JOIN (select cap.valorpagar, f.codcolaborador, cap.codtipodespesa, pagto.CodMovCaixa 
					from ContasPagar cap join Fornecedores f on f.CodFornecedor = cap.CodFornecedor 
					join ContasPagas pagto on pagto.CodContasPagar = cap.CodContasPagar) pag ON pag.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa AND pag.ValorPagar = MovimentosCaixa.ValorMovimento AND pag.CodColaborador = Caixas.CodColaborador 
LEFT OUTER JOIN PlanoContasDespesa PlanoCP ON PlanoCP.CodTipoDespesa = ISNULL(ContraPartida.CodRecDesp,pag.CodTipoDespesa)
 WHERE (MovimentosCaixa.CodFilial = 'PTC')
 AND (MovimentosCaixa.CodCaixa = 10) 
 AND (MovimentosCaixa.DebitoCredito = 'C') 
 AND (MovimentosCaixa.DataCaixa BETWEEN '06/01/2022 00:00:00' AND '06/20/2022 23:59:29') 
 AND (TiposMovimentoCaixa.TipoReceitaDespesa <> 'Despesa' OR (TiposMovimentoCaixa.TipoReceitaDespesa = 'Despesa'
 AND ((ISNULL(PlanoContasDespesa.VisualizacaoRestrita, '') <> 'S' )))) 
 AND (MovimentosCaixa.Gerado = 'N' OR MovimentosCaixa.CodMovimentoCaixa IS NULL OR (MovimentosCaixa.Gerado = 'S' 
 AND MovimentosCaixa.CodMovimentoCaixa IS NOT NULL AND (TipoCP.TipoReceitaDespesa = 'Despesa' AND ((ISNULL(PlanoCP.VisualizacaoRestrita, '') <> 'S' )))))
 AND movimentoscaixa.CodMovCaixa IN (101383458, 101388927, 101387820)

SELECT * FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa WHERE (MovimentosCaixa.CodFilial = 'PTC') AND (MovimentosCaixa.CodCaixa = 10) AND (MovimentosCaixa.DebitoCredito = 'C') AND (MovimentosCaixa.DataCaixa BETWEEN '06/01/2022 00:00:00' AND '06/20/2022 23:59:29')


-- ver com laércio PlanoCP.VisualizacaoRestrita não mostra o adiantamanento 
-- 101383458, 101388927, 101387820


SELECT * from MovimentosCaixa where CodMovCaixa IN (101383458, 101388927, 101387820)



SELECT * FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa LEFT OUTER JOIN TiposMovimentoCaixa ON TiposMovimentoCaixa.CodTipoMovCaixa = MovimentosCaixa.CodTipoMovCaixa LEFT OUTER JOIN PlanoContasDespesa ON MovimentosCaixa.CodRecDesp = PlanoContasDespesa.CodTipoDespesa LEFT OUTER JOIN MovimentosCaixa ContraPartida ON ContraPartida.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa LEFT OUTER JOIN TiposMovimentoCaixa TipoCP ON TipoCP.CodTipoMovCaixa = ContraPartida.CodTipoMovCaixa LEFT OUTER JOIN (select cap.valorpagar, f.codcolaborador, cap.codtipodespesa, pagto.CodMovCaixa  from ContasPagar cap join Fornecedores f on f.CodFornecedor = cap.CodFornecedor join ContasPagas pagto on pagto.CodContasPagar = cap.CodContasPagar) pag ON pag.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa AND pag.ValorPagar = MovimentosCaixa.ValorMovimento AND pag.CodColaborador = Caixas.CodColaborador LEFT
 OUTER JOIN PlanoContasDespesa PlanoCP ON PlanoCP.CodTipoDespesa = CASE WHEN ISNULL(pag.CodMovCaixa,0) = 0 THEN ISNULL(ContraPartida.CodRecDesp,0) ELSE ISNULL(pag.CodTipoDespesa,0) END WHERE (MovimentosCaixa.CodFilial = 'JAT') AND (MovimentosCaixa.CodCaixa = 23) AND (MovimentosCaixa.DebitoCredito = 'D') AND (MovimentosCaixa.DataMovimento BETWEEN '06/22/2022 00:00:00' AND '06/23/2022 23:59:29') AND (TiposMovimentoCaixa.TipoReceitaDespesa <> 'Despesa' OR (TiposMovimentoCaixa.TipoReceitaDespesa = 'Despesa' AND ((ISNULL(PlanoContasDespesa.VisualizacaoRestrita, '') <> 'S' )))) AND (MovimentosCaixa.Gerado = 'N' OR MovimentosCaixa.CodMovimentoCaixa IS NULL OR (MovimentosCaixa.Gerado = 'S' AND MovimentosCaixa.CodMovimentoCaixa IS NOT NULL AND (TipoCP.TipoReceitaDespesa = 'Despesa' AND ((ISNULL(PlanoCP.VisualizacaoRestrita, '') <> 'S' )))))


select * from Caixas where CodFilial = 'CNP' and CodCaixa = 20
select * from Fornecedores where CodColaborador = 10297
select * from ContasPagar where CodContasPagar = 1740355  --1098916

--update ContasPagar set CodFornecedor = 1082589 where CodContasPagar = 1740355
--update ContasPagar set CodFornecedor = 1098916 where CodContasPagar = 1740355


SELECT * FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa

SELECT SUM(MovimentosCaixa.ValorMovimento) AS Creditos FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa

SELECT * FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa LEFT OUTER JOIN TiposMovimentoCaixa ON TiposMovimentoCaixa.CodTipoMovCaixa = MovimentosCaixa.CodTipoMovCaixa LEFT OUTER JOIN PlanoContasDespesa ON MovimentosCaixa.CodRecDesp = PlanoContasDespesa.CodTipoDespesa LEFT OUTER JOIN MovimentosCaixa ContraPartida ON ContraPartida.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa LEFT OUTER JOIN TiposMovimentoCaixa TipoCP ON TipoCP.CodTipoMovCaixa = ContraPartida.CodTipoMovCaixa LEFT OUTER JOIN (select cap.valorpagar, f.codcolaborador, cap.codtipodespesa, pagto.CodMovCaixa  from ContasPagar cap join Fornecedores f on f.CodFornecedor = cap.CodFornecedor join ContasPagas pagto on pagto.CodContasPagar = cap.CodContasPagar) pag ON pag.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa AND pag.ValorPagar = MovimentosCaixa.ValorMovimento AND pag.CodColaborador = Caixas.CodColaborador LEFT
 OUTER JOIN PlanoContasDespesa PlanoCP ON PlanoCP.CodTipoDespesa = CASE WHEN ISNULL(pag.CodMovCaixa,0) = 0 THEN ISNULL(ContraPartida.CodRecDesp,0) ELSE ISNULL(pag.CodTipoDespesa,0) END WHERE (MovimentosCaixa.CodFilial = 'PTC') AND (MovimentosCaixa.CodCaixa = 10) AND (MovimentosCaixa.DebitoCredito = 'D') AND (MovimentosCaixa.DataMovimento BETWEEN '06/01/2022 00:00:00' AND '06/23/2022 23:59:29')

 SELECT MovimentosCaixa.CodMovCaixa, MovimentosCaixa.DataMovimento, MovimentosCaixa.CodTipoMovCaixa, TiposMovimentoCaixa.DescTipoMovCaixa, MovimentosCaixa.Historico, MovimentosCaixa.NumDocumento, MovimentosCaixa.ValorMovimento, MovimentosCaixa.CodRecDesp, MovimentosCaixa.DebitoCredito, MovimentosCaixa.DataCaixa, Caixas.SaldoCaixa FROM MovimentosCaixa
 LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa 
 LEFT OUTER JOIN TiposMovimentoCaixa ON TiposMovimentoCaixa.CodTipoMovCaixa = MovimentosCaixa.CodTipoMovCaixa 
 LEFT OUTER JOIN TiposMovimentoCaixa ON TiposMovimentoCaixa.CodTipoMovCaixa = MovimentosCaixa.CodTipoMovCaixa 
 LEFT OUTER JOIN PlanoContasDespesa ON MovimentosCaixa.CodRecDesp = PlanoContasDespesa.CodTipoDespesa 
 LEFT OUTER JOIN MovimentosCaixa ContraPartida ON ContraPartida.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa
 LEFT OUTER JOIN TiposMovimentoCaixa TipoCP ON TipoCP.CodTipoMovCaixa = ContraPartida.CodTipoMovCaixa LEFT OUTER JOIN (select cap.valorpagar, f.codcolaborador, cap.codtipodespesa, pagto.CodMovCaixa  from ContasPagar cap join Fornecedores f on f.CodFornecedor = cap.CodFornecedor join ContasPagas pagto on pagto.CodContasPagar = cap.CodContasPagar) pag ON pag.CodMovCaixa = MovimentosCaixa.CodMovimentoCaixa AND pag.ValorPagar = MovimentosCaixa.ValorMovimento AND pag.CodColaborador = Caixas.CodColaborador LEFT OUTER JOIN PlanoContasDespesa PlanoCP ON PlanoCP.CodTipoDespesa = CASE WHEN ISNULL(pag.CodMovCaixa,0) = 0 THEN ISNULL(ContraPartida.CodRecDesp,0) ELSE ISNULL(pag.CodTipoDespesa,0) END WHERE (MovimentosCaixa.CodFilial = 'PTC') AND (MovimentosCaixa.CodCaixa = 10) AND (MovimentosCaixa.DataCaixa >= '06/01/2022 00:00:00' AND MovimentosCaixa.DataCaixa <= '06/23/2022 23:59:29') AND (TiposMovimentoCaixa.TipoReceitaDespesa <> 'Despesa' OR (TiposMovimentoCaixa.TipoReceitaDespesa = 'Despesa' AND ((ISNULL(PlanoContasDespesa.VisualizacaoRestrita, '') <> 'S' )))) AND (MovimentosCaixa.Gerado = 'N' OR MovimentosCaixa.CodMovimentoCaixa IS NULL OR (MovimentosCaixa.Gerado = 'S' AND MovimentosCaixa.CodMovimentoCaixa IS NOT NULL AND (TipoCP.TipoReceitaDespesa = 'Despesa'
 AND ((ISNULL(PlanoCP.VisualizacaoRestrita, '') <> 'S' ))))) 
 ORDER BY MovimentosCaixa.DataCaixa, MovimentosCaixa.NumDocumento, MovimentosCaixa.ValorMovimento, MovimentosCaixa.CodMovCaixa DESC

