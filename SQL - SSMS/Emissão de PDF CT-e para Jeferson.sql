SELECT  nf.NumeroNF 'Nome Arquivo', nf.ChaveAcessoNFe 'ChaveAcessoNFe'
from 
	ConhecimentosTransporte ct
	inner join OrdemEmbarque oe on oe.NumOrdemEmbarque = ct.CodOrdemEmbarque
	inner join Fornecedores f on oe.CodFornecedor = f.CodFornecedor 
	inner join Motoristas m on oe.CodMotorista = m.CodMotorista
	JOIN Rotas on rotas.CodRota = ct.CodRota
	JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
	LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
	JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ct.Sequencial
	JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ct.Sequencial
	JOIN PedidosFrete ped ON ped.CodPedidoFrete = ct.CodPedidoFrete
	JOIN Clientes_Complemento comp ON comp.CodCliente = ct.CodClientePagto
	JOIN Clientes cli ON cli.CodCliente = ct.CodClientePagto
where 
	SerieConhecto = '0'
	and ct.CodUF = 'MS'
	and NumConhecto in (463517, 463506, 463510)
	
order by 
	ct.DataEmissao