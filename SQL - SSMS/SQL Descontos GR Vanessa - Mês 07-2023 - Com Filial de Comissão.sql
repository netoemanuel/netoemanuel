--20230906 SQL DESCONTOS GR

use RODOMAIOR

SELECT -- format(ctrc.ValorTotalFrete 'N2','pt-br')
	ctrc.numconhecto 'Num CTRC'
	,ctrc.coduf 'UF'
	,ctrc.CodFilialComissao 'Filial Comissão'
--	,ctrc.CodfilialEmitente as 'Filial Emitente'	
	,ctrc.dataemissao 'Data Emissão'
	,ctrc.SituacaoConhecto 'Situação Conhecimento'
	,ctrc.TipoConhecimento 'Tipo Conhecimento'
	,ctrc.ModeloDocumento 'Modelo'
	,Fornc.ClassifFiscal 'Classif. Fiscal'
	,Fornc.IndAutonomo 'TAC'
	,PF.IndEmissaoCartaFreteCTe 'Carta Frete'
	,isnull (format(ctrc.desconto,'N2','pt-br'), 0.00)  'Desc. Cartão'
	,isnull (format(risco.valortotal,'N2','pt-br'), 0.00) 'Desc. GR'
	,isnull (format( oe.valortotal,'N2','pt-br'), 0.00) 'Desc.GR Ordem'
	,(ISNULL(CTRC.Desconto,0)+ISNULL(Risco.ValorTotal,ISNULL(OE.ValorTotal,0))+ISNULL(CTRC.DescontoTaxaAdm,0)) AS DESCONTO
FROM 
	ConhecimentosTransporte ctrc
	INNER JOIN RODOMAIOR.dbo.OrdemEmbarque OE ON OE.NumOrdemEmbarque = CTRC.CodOrdemEmbarque
	LEFT OUTER JOIN RODOMAIOR.dbo.GerenciamentoRisco Risco ON Risco.SeqConhecto = ctrc.Sequencial
	INNER JOIN Fornecedores Fornc on ctrc.CodFornecedor = Fornc.CodFornecedor
	INNER JOIN PedidosFrete PF on ctrc.CodPedidoFrete = PF.CodPedidoFrete
WHERE 
	--ctrc.CodFilialComissao = 'OSV' and
		ctrc.DataEmissao between '2024-10-01' and '2024-10-31 23:59:29'
	AND ctrc.SituacaoConhecto <> 'Cancelado'
	AND ctrc.TipoConhecimento = 'Normal'
	AND (ISNULL(CTRC.Desconto,0)+ISNULL(Risco.ValorTotal,ISNULL(OE.ValorTotal,0))+ISNULL(CTRC.DescontoTaxaAdm,0)) > 0
	--AND Fornc.IndAutonomo = 'S'
order by  
	ctrc.[DataCriacao] 



