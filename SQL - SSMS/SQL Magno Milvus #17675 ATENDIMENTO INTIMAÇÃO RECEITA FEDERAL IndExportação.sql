--SQL MAGNO 05/2024 - #17675

-- PERÍODO DE APURAÇÃO: JANEIRO/2021 a DEZEMBRO/2023
--CST 9 – Operação com Suspensão da Contribuição” -> EXPORTAÇÃO
--constar pelo menos as seguintes informações:
--Mês EFD /Data Emissão/ Número CT-e/ Chave Eletrônica CT-e/ CNPJ Tomador Serviço/  Nome Tomador Serviço / Valor/ 

--Dúvidas:
--Enquadramento Legal Suspensão da Receita (tá bom assim??? cte.INFADFISCO) / Número ADE referente à suspensão --> NÃO SEI!!!
--Numero da Nota Fiscal  Eletrônica/  Chave da Nota Fiscal Eletrônica


--Declare @codclientematriz decimal set @codclientematriz = 1000454
Declare @DataInicio as varchar(25) set @DataInicio = '2021-01-01 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2023-12-31 23:59:29'

select 
	dbo.mesano(ctrc.DataEmissao) AS 'Mês EFD',
	CONVERT(varchar(8),ctrc.DataEmissao,3) AS 'Data',
	ctrc.CodUF AS UF, 
	ctrc.NumConhecto AS 'Nº CT-e', 
	convert(VARCHAR(44),cte.ID) AS 'Chave Eletrônica CT-e', 
	cli.cnpj_cpf AS 'CNPJ Tomador Serviço',
	cli.RazaoSocial AS 'Nome Tomador Serviço',
	format(ctrc.ValorTotalFrete,'N2','pt-br') AS 'Valor',		
	cte.infAdFisco 'Enquadramento Legal Suspensão da Receita',
	nf.NumeroNF AS 'Nº NF-e', convert(VARCHAR(44),
	nf.ChaveAcessoNFe) AS 'Chave NF-e'
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
join LONTANO_GSe.dbo.Complemento_CTe compcte ON compcte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
where 
	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	and ctrc.ModeloDocumento = 'CT-e'
	and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
	and ctrc.TipoConhecimento = 'Normal' 
order by ctrc.DataEmissao

