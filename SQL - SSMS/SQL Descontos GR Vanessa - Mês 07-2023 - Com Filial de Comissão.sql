--20230906 SQL DESCONTOS GR

use RODOMAIOR

SELECT 
	ctrc.coduf 'UF'
	,ctrc.CodFilialComissao 'Filial Comissão'
	,ctrc.CodfilialEmitente as 'Filial Emitente'
	,ctrc.numconhecto 'Num CTRC'
	,ctrc.dataemissao 'Data Emissão'
	,ctrc.SituacaoConhecto 'Situação Conhecimento'
	,ctrc.TipoConhecimento 'Tipo Conhecimento'
	,ctrc.ModeloDocumento 'Modelo'
	,Fornc.ClassifFiscal 'Classif. Fiscal'
	,Fornc.IndAutonomo 'TAC'
	,PF.IndEmissaoCartaFreteCTe 'Carta Frete'
	,ctrc.desconto 'Desc. Cartão'
	,risco.valortotal 'Desc. GR'
	,oe.valortotal 'Desc.GR Ordem'
	,(ISNULL(CTRC.Desconto,0)+ISNULL(Risco.ValorTotal,ISNULL(OE.ValorTotal,0))+ISNULL(CTRC.DescontoTaxaAdm,0)) AS DESCONTO
FROM 
	ConhecimentosTransporte ctrc
	INNER JOIN RODOMAIOR.dbo.OrdemEmbarque OE ON OE.NumOrdemEmbarque = CTRC.CodOrdemEmbarque
	LEFT OUTER JOIN RODOMAIOR.dbo.GerenciamentoRisco Risco ON Risco.SeqConhecto = ctrc.Sequencial
	INNER JOIN Fornecedores Fornc on ctrc.CodFornecedor = Fornc.CodFornecedor
	INNER JOIN PedidosFrete PF on ctrc.CodPedidoFrete = PF.CodPedidoFrete
WHERE 
	--ctrc.CodFilialComissao = 'OSV' and
	ctrc.DataEmissao between '2023-09-01' and '2023-09-30 23:59:29'
	and ctrc.SituacaoConhecto <> 'Cancelado'
	and ctrc.TipoConhecimento = 'Normal'
	and (ISNULL(CTRC.Desconto,0)+ISNULL(Risco.ValorTotal,ISNULL(OE.ValorTotal,0))+ISNULL(CTRC.DescontoTaxaAdm,0)) > 0
order by  
	[Filial Comissão] asc