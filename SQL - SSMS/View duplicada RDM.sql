USE [RODOMAIOR]
GO

/****** Object:  View [dbo].[MovimentosReceitas]    Script Date: 20/04/2023 11:38:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO




CREATE VIEW [dbo].[MovimentosReceitas]

AS

select movimentoscaixa.codmovcaixa, null as CodContasReceber, movimentoscaixa.codmovimentobancario, null as CodCliente, movimentoscaixa.datamovimento, movimentoscaixa.datacaixa,
       movimentoscaixa.MesAnoCompetencia, movimentoscaixa.NumDocumento, movimentoscaixa.codfilial as CodFilialCaixa, movimentoscaixa.codcaixa, movimentoscaixa.historico, 
       case movimentoscaixa.debitocredito When 'D' then (movimentoscaixa.valormovimento*(-1)) else movimentoscaixa.valormovimento end as ValorMovimento, 
       rateiodespesas.codfilial as CodFilialCCusto, rateiodespesas.codcentrocusto as codcentrocusto, centrocusto.desccentrocusto as desccentrocusto, 
       centrocusto.codgrupoccusto as codgrupoccusto, combobox_financeiro.descricao as GrupoCentroCusto, centrocusto.tipocentrocusto as tipocentrocusto, 
       case movimentoscaixa.debitocredito When 'C' then round((movimentoscaixa.valormovimento * rateiodespesas.percentual / 100),2) else (round((movimentoscaixa.valormovimento * rateiodespesas.percentual / 100),2)*(-1)) end as ValorCentroCusto, 
       recdespmovcaixa.codrecdesp as codrecdesp, PlanoContasReceita.DescTipoReceita, PlanoContasReceita.ClassifReceita, NivelContaReceita, PlanoContasReceita.TipoContaReceita, 
       case movimentoscaixa.debitocredito When 'C' then round((recdespmovcaixa.valorrecdesp * rateiodespesas.percentual / 100),2) else (round((recdespmovcaixa.valorrecdesp * rateiodespesas.percentual / 100),2)*(-1)) end as ValorReceita,
      convert(smalldatetime, right(movimentoscaixa.mesanocompetencia,4) + '-' + left(movimentoscaixa.mesanocompetencia,02) + '-01') as Competencia
from recdespmovcaixa
inner join movimentoscaixa on movimentoscaixa.codmovcaixa = recdespmovcaixa.codmovcaixa
inner join rateiodespesas on rateiodespesas.codmovcaixa = movimentoscaixa.codmovcaixa
inner join centrocusto on centrocusto.codfilial = rateiodespesas.codfilial and centrocusto.codcentrocusto = rateiodespesas.codcentrocusto
inner join combobox_financeiro on combobox_financeiro.codigo = centrocusto.codgrupoccusto and combobox_financeiro.nomecombobox = 'cboGrupoCCusto'
inner join PlanoContasReceita on PlanoContasReceita.CodTipoReceita = recdespmovcaixa.codrecdesp
where --movimentoscaixa.codmovcaixa not in (select CRB.codmovcaixa from ContasRecebidas CRB INNER JOIN NFSe_ContasReceber NFSe ON NFSe.CodContasReceber = CRB.CodContasReceber) and
((codtipomovcaixa <> 8 and debitocredito = 'C') or (codtipomovcaixa = 7 and debitocredito = 'D'))

-- union

-- select MovimentosCaixa.CodMovCaixa, RateioContasReceber.CodContasReceber, MovimentosCaixa.CodMovimentoBancario, CodCliente, MovimentosCaixa.DataMovimento, MovimentosCaixa.DataCaixa, 
--        MovimentosCaixa.MesAnoCompetencia, ContasReceber.NumDocumento, MovimentosCaixa.CodFilial, MovimentosCaixa.CodCaixa, ContasReceber.Historico, ContasRecebidas.TotalRecebido, 
--        ContasReceber.CodFilialOrigem COLLATE Latin1_General_CI_AI as CodFilial, 1 as CodCentroCusto, centrocusto.desccentrocusto, centrocusto.codgrupoccusto, combobox_financeiro.descricao  as GrupoCentroCusto, centrocusto.tipocentrocusto,
--        ContasRecebidas.TotalRecebido as ValorCentroCusto, RateioContasReceber.CodTipoReceita, PlanoContasReceita.DescTipoReceita, PlanoContasReceita.ClassifReceita, NivelContaReceita, PlanoContasReceita.TipoContaReceita, 
-- 	   round(((RateioContasReceber.Valor/ContasReceber.ValorReceber)*ContasRecebidas.TotalRecebido),2) as ValorReceita,
--        ContasReceber.MesAnoCompetencia
-- from RateioContasReceber
-- inner join ContasReceber on ContasReceber.CodContasReceber = RateioContasReceber.CodContasReceber
-- inner join ContasRecebidas on ContasRecebidas.CodContasReceber = RateioContasReceber.CodContasReceber
-- inner join MovimentosCaixa on MovimentosCaixa.CodMovCaixa = ContasRecebidas.CodMovCaixa
-- inner join CentroCusto on CentroCusto.CodFilial = ContasReceber.CodFilialOrigem COLLATE Latin1_General_CI_AI and CentroCusto.CodCentroCusto = 1
-- inner join PlanoContasReceita on PlanoContasReceita.CodTipoReceita = RateioContasReceber.CodTipoReceita
-- inner join combobox_financeiro on codigo = codgrupoccusto and nomecombobox = 'cboGrupoCCusto'


GO


