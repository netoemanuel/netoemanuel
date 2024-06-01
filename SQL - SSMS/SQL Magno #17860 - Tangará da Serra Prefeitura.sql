--Magno (#824):
--select * from cidades where nomecidade like 'tangara%'  --42803
--select * from cidades where codcidade in (108350,42528)
--select * from rotas

select
	   ctrc.CodUF 'UF'
	 , ctrc.NumConhecto 'Nº CTe'
	 , format(ctrc.DataEmissao,'dd/MM/yyyy','pt-br') AS 'Emissão'
	 , dbo.CNPJ_CPF_Masc(cte.CNPJ) AS 'CNPJ Emitente'
	 , tomador.CNPJ_CPF AS 'CNPJ Tomador'
	 , cte.ID AS 'Chave CTe'
	 , format(ctrc.ValorTotalFrete,'N2','pt-br') AS 'Valor Serviço'
	 , format(isnull(ctrc.ValorICMSFrete,0),'N2','pt-br') AS 'Valor ICMS'
from ConhecimentosTransporte ctrc
join rotas on rotas.codrota = ctrc.codrota
join cidades orig on orig.codcidade = rotas.codcidadeorigem
join cidades dest on dest.codcidade = rotas.codcidadedestino
join LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
join Clientes tomador on tomador.CodCliente = ctrc.CodClientePagto
where dataemissao between '2023-01-01' and '2023-12-31 23:59:29'
	and ctrc.coduf = 'MT'
	and ctrc.SituacaoConhecto IN ('Emitido','Faturado')
	and ctrc.TipoConhecimento = 'Normal'
	and isnull(orig.CodCidade_Subor,orig.CodCidade) = 42803  --> Origem: Tangará da Serra/MT
	and dest.CodUF = 'MT'									 --> Destino: MT






