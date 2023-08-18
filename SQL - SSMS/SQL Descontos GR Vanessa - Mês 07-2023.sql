use RODOMAIOR


SELECT ctrc.coduf 'UF', ctrc.numconhecto 'Num CTRC', ctrc.dataemissao 'Data Emissão'
	 , ctrc.SituacaoConhecto 'Situação Conhecimento', ctrc.TipoConhecimento 'Tipo Conhecimento', ctrc.ModeloDocumento 'Modelo'
	 , ctrc.desconto 'Desc. Cartão', risco.valortotal 'Desc. GR', oe.valortotal 'Desc.GR Ordem'
	 , (ISNULL(CTRC.Desconto,0)+ISNULL(Risco.ValorTotal,ISNULL(OE.ValorTotal,0))+ISNULL(CTRC.DescontoTaxaAdm,0)) AS DESCONTO
FROM ConhecimentosTransporte ctrc
INNER JOIN RODOMAIOR.dbo.OrdemEmbarque OE ON OE.NumOrdemEmbarque = CTRC.CodOrdemEmbarque
LEFT OUTER JOIN RODOMAIOR.dbo.GerenciamentoRisco Risco ON Risco.SeqConhecto = ctrc.Sequencial
WHERE ctrc.DataEmissao between '2023-07-01' and '2023-07-31 23:59:29' 
	and ctrc.SituacaoConhecto <> 'Cancelado' 
	and ctrc.TipoConhecimento = 'Normal'
	and (ISNULL(CTRC.Desconto,0)+ISNULL(Risco.ValorTotal,ISNULL(OE.ValorTotal,0))+ISNULL(CTRC.DescontoTaxaAdm,0)) > 0
order by [Data Emissão] asc