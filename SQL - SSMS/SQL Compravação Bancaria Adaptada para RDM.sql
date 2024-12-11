--Isaack (#567): comprovantes de contratos bancários.
--Data 07/02/2021 a 07/02/2022 Documento: Ct-e Tipo: Normal Exportação: Sim Exceto cancelado e substituido Clientes: CARGILL 1000407 (MATRIZ) Totalizar 70 milhões
--select distinct codclientematriz from clientes_complemento where codcliente in (select codcliente from clientes where RazaoSocial LIKE 'louis%')
--select distinct codclientematriz from clientes_complemento where codcliente in (select codcliente from clientes where RazaoSocial LIKE 'cargill%')
--select codclientematriz from clientes_complemento where codcliente = 1021806
--select * from cidades where NomeCidade = 'Itaituba'
--Declare @DataInicio as varchar(25) set @DataInicio = '2021-11-26 00:00:00'
--Declare @DataFim as varchar(25) set @DataFim = '2021-12-28 23:59:29'

Declare @codclientematriz decimal set @codclientematriz = 1020767
Declare @DataInicio as varchar(25) set @DataInicio = '2024-09-17 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2024-12-03 23:59:29'

--> PARA CONFERIR O TOTAL (COMENTAR LINHA DO ORDER BY):
select SUM(ValorTotalFrete) Total, COUNT(cte.Sequencial) AS Qtde
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN Rodomaior_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
join naturezacarga nat on nat.codnaturezacarga = ctrc.codnaturezacarga


where 
	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SerieConhecto = '0' 
	and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
	and ctrc.TipoConhecimento = 'Normal' 
	and comp.CodClienteMatriz = @codclientematriz
	--and ctrc.ValorTotalFrete between 8300 and 50000

--> PARA GERAR OS DADOS QUE SERÃO COPIADOS PARA A PLANILHA (DESCOMENTAR LINHA DO ORDER BY):

select
	ctrc.CodUF AS UF,
	ctrc.NumConhecto AS 'Nº CT-e',
	CONVERT(varchar(8),ctrc.DataEmissao,3) AS 'Data Emissão', 
	ctrc.ModeloDocumento as 'Modelo',
	format(ctrc.ValorTotalFrete,'N2','pt-br') AS 'Valor Frete',
	format(ctrc.ValorNF,'N2','pt-br') AS 'Valor NF',
	cli.RazaoSocial AS 'Exportador',
	cli.cnpj_cpf AS 'CNPJ Exportador',
	convert(VARCHAR(44),cte.ID) AS 'Chave CT-e', 
	nf.NumeroNF AS 'Nº NF-e',
	convert(VARCHAR(44),nf.ChaveAcessoNFe) AS 'Chave NF-e', 
	nat.descnaturezacarga 'Produto Exportado'
	--dbo.CNPJ_CPF_Masc(cte.CNPJ) AS 'CNPJ Transportadora',
	
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN Rodomaior_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
join naturezacarga nat on nat.codnaturezacarga = ctrc.codnaturezacarga


where 
	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SerieConhecto = '0' 
	and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
	and ctrc.TipoConhecimento = 'Normal' 
	and comp.CodClienteMatriz = @codclientematriz
	--and ctrc.ValorTotalFrete between 8300 and 50000
order by ctrc.DataEmissao



