select cte.serie 'Série', cte.nCT 'Número'
	 , cte.UFIni 'Origem', cte.UFFim 'Destino'
	 , format(cte.dhemi,'dd/MM/yyyy','pt-br') 'Emissão', CONVERT(varchar(8),cte.dhEmi,108) 'Hr.Embarque'
	 , FORMAT(cte.vCarga,'N2','pt-br') 'Valor Mercadoria'
	 , FORMAT((NF.ValorNF - NF.ValorProdutos),'N2','pt-br') 'Valor Impostos'
	 , FORMAT((cte.vCarga + (NF.ValorNF - NF.ValorProdutos)),'N2','pt-br') 'Valor Total'
from RODOMAIOR_GSe.dbo.CTe cte
JOIN RODOMAIOR.dbo.NotasFiscaisConhecimento NF ON NF.SequencialConhecimento = cte.Sequencial
where cte.dhEmi between '2023-04-01' and '2023-04-30 23:59:29'
	and cte.status = 1
	and cte.vCargaAverb > 0.01
	and (NF.ValorNF - NF.ValorProdutos) > 0
order by cte.dhEmi, cte.UFIni, cte.nCT



