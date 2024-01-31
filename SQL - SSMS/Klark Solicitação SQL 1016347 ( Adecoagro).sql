--Klark #5591 - Solicitação SQL
--Data 07/02/2021 a 07/02/2022 Documento: Ct-e Tipo: Normal Exportação: Sim Exceto cancelado e substituido Clientes: CARGILL 1000407 (MATRIZ) Totalizar 70 milhões
--select distinct codclientematriz from clientes_complemento where codcliente in (select codcliente from clientes where RazaoSocial LIKE 'louis%')
--select distinct codclientematriz from clientes_complemento where codcliente in (select codcliente from clientes where RazaoSocial LIKE 'cargill%')
--select codclientematriz from clientes_complemento where codcliente = 1000407
--select * from cidades where NomeCidade = 'Itaituba'

Declare @codclientematriz decimal set @codclientematriz = 1016347

Declare @DataInicio as varchar(25) set @DataInicio = '2022-01-01 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2022-12-31 23:59:29'

--> PARA CONFERIR O TOTAL (COMENTAR LINHA DO ORDER BY):
select SUM(ValorTotalFrete) Total, COUNT(cte.Sequencial) AS Qtde
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
where 
	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SerieConhecto = '0' 
	and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
	and comp.CodClienteMatriz = @codclientematriz

--> PARA GERAR OS DADOS QUE SERÃO COPIADOS PARA A PLANILHA (DESCOMENTAR LINHA DO ORDER BY):
select CONVERT(varchar(8),ctrc.DataEmissao,3) AS Data, 
	ctrc.CodUF AS UF, ctrc.NumConhecto AS 'Nº CT-e',
	nf.NumeroNF AS 'Nº NF-e' 
	,CidadeOrigem.NomeMunicipioIBGE as 'Cidade origem'
	,CidadeDestino.NomeMunicipioIBGE as 'Cidade destino'
	,NC.DescNaturezaCarga
	,format(ctrc.ValorTotalFrete,'N2','pt-br') AS 'Valor Frete'
	,format(ctrc.TarifaFreteEmpresa,'N2','pt-br') AS 'Tarifa Frete'
	,ctrc.QuantidadeSaida 
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
join LONTANO.dbo.Cidades CidOrigem on CidOrigem.CodCidade = Rotas.CodCidadeOrigem 
join LONTANO_GSe.dbo.Cidades_e CidadeOrigem on CidadeOrigem.CodCidade = CidOrigem.CodCidade_Subor

join LONTANO.dbo.Cidades CidDestino on CidDestino.CodCidade = Rotas.CodCidadeDestino
join LONTANO_GSe.dbo.Cidades_e CidadeDestino on CidadeDestino.CodCidade = CidDestino.CodCidade_Subor

join lontano.dbo.NaturezaCarga NC on nc.CodNaturezaCarga = ctrc.CodNaturezaCarga
where 
	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SerieConhecto = '0' 
	and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
	and comp.CodClienteMatriz = @codclientematriz
order by ctrc.DataEmissao