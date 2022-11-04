--Declare @codclientematriz decimal set @codclientematriz = 1000748
Declare @DataInicio as varchar(25) set @DataInicio = '2022-08-01 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2022-08-03 23:59:29'

--> PARA CONFERIR O TOTAL (COMENTAR LINHA DO ORDER BY):

select SUM(ValorTotalFrete) Total, COUNT(cte.Sequencial) AS Qtde
--SELECT ctrc.Sequencial, cte.ID AS 'NomeArquivo' , cte.XML_Enviado, cte.XML_Retorno, 'Autorizado' as Status 
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN RODOMAIOR_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
JOIN NaturezaCarga NC on NC.CodNaturezaCarga = ctrc.CodNaturezaCarga
WHERE ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SerieConhecto = '0' 
	and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
	and ctrc.TipoConhecimento = 'Normal'
	--and comp.CodClienteMatriz = @codclientematriz
	--and ctrc.ValorTotalFrete between 4000 and 50000
--order by ctrc.DataEmissao

--> PARA GERAR OS DADOS QUE SERÃO COPIADOS PARA A PLANILHA (DESCOMENTAR LINHA DO ORDER BY):
select NC.DescNaturezaCarga as Produto, cli.RazaoSocial AS 'Exportador',
	   cli.cnpj_cpf AS 'CNPJ Exportador',
		CONVERT(varchar(8),ctrc.DataEmissao,3) AS Data, 				
		CodEspecieMercadoria as 'Produto',		
		format(ctrc.ValorTotalFrete,'N2','pt-br') AS 'Valor Frete',
		dbo.CNPJ_CPF_Masc(cte.CNPJ) AS 'CNPJ Transportadora',
		nf.NumeroNF AS 'Nº NF-e', 
		ctrc.NumConhecto AS 'Nº CT-e',
		convert(VARCHAR(44),cte.ID) AS 'Chave CT-e', 
		ctrc.CodUF AS UF,
		convert(VARCHAR(44),nf.ChaveAcessoNFe) AS 'Chave NF-e' 

--SELECT ctrc.Sequencial, cte.ID AS 'NomeArquivo' , cte.XML_Enviado, cte.XML_Retorno, 'Autorizado' AS status 
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN RODOMAIOR_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
JOIN NaturezaCarga NC on NC.CodNaturezaCarga = ctrc.CodNaturezaCarga
where 
	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SerieConhecto = '0' 
	and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
	and ctrc.TipoConhecimento = 'Normal' 
	--and comp.CodClienteMatriz = @codclientematriz
	--and ctrc.ValorTotalFrete between 4000 and 500000
order by ctrc.DataEmissao