use RODOMAIOR


SELECT 
		ctrc.coduf 'UF'
		,ctrc.CodFilialComissao 'Filial Comiss�o'
		,ctrc.numconhecto 'Num CTRC'
		,ctrc.dataemissao 'Data Emiss�o'
		,ctrc.SituacaoConhecto 'Situa��o Conhecimento'
		,ctrc.TipoConhecimento 'Tipo Conhecimento'
		,ctrc.ModeloDocumento 'Modelo'
		,Fornc.ClassifFiscal 'Classif. Fiscal'
		,Fornc.IndAutonomo 'TAC'
		,PF.IndEmissaoCartaFreteCTe�'Carta Frete'
		,ctrc.desconto 'Desc. Cart�o'
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
		--ctrc.DataEmissao between '2023-12-01' and '2023-12-31 23:59:29'
		 ctrc.SituacaoConhecto <> 'Cancelado'
		and ctrc.TipoConhecimento = 'Normal'
		--and Fornc.IndAutonomo = 'S'		
		--and risco.valortotal <> null
		
		and (ISNULL(CTRC.Desconto,0)+ISNULL(Risco.ValorTotal,ISNULL(OE.ValorTotal,0))+ISNULL(CTRC.DescontoTaxaAdm,0)) > 0


order by  
		ctrc.DataEmissao desc

--> CIOT -> S� � OBRIGAT�RIO QUANDO O PROPRIET�RIO DO VE�CULO (CONTRATADO) "PESSOA F�SICA" OU "TAC" (TAC=JUR�DICA COM NO M�XIMO 3 CAMINH�ES) -> ANTT


--select Desconto,DescontoTaxaAdm,* from ConhecimentosTransporte where NumConhecto = 81244 and CodUF = 'PR'


--select Desconto,DescontoTaxaAdm, SeguroAverbado, * from ConhecimentosTransporte where Desconto is not Null and DescontoTaxaAdm <> 0.00 order by DataCriacao desc