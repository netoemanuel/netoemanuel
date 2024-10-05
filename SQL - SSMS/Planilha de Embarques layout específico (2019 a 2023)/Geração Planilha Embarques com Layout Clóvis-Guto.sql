--> SOLICITAÇÃO DO CLÓVIS PARA ATENDIMENTO AO GUTO (#)
-- Relatório dos últimos 5 anos, contendo:
-- Local do inicio da prestação do serviço
-- Cidade do inicio da prestação do serviço de transporte
-- Local final da prestação do serviço (ex - porto de santos)
-- Cidade final da prestação do serviço de transporte
-- Número do conhecimento de transporte
-- Valor do serviço
-- Pis/Cofins
-- Cliente (nome, CNPJ)
-- Carga transportada (caso exista a informação)
-- Data
-- Creio que deva ter tb: CNPJ Proprietário, Tipo (Próprio/terceiro) e indicador se é exportação... pois isso tem relação com PIS/Cofins

Declare @DataInicio as varchar(25) set @DataInicio = '2019-01-01 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2019-12-31 23:59:29'

select CONVERT(varchar(8),ctrc.DataEmissao,3) AS 'Data Emissão',	
	(ctrc.CodUF+'-'+CONVERT(VARCHAR,ctrc.NumConhecto)) AS 'Nº Conhecimento', 
	format(ctrc.ValorTotalFrete,'N2','pt-br') AS 'Valor Serviço',

	Ori1.NomeCidade AS 'Local Origem', ISNULL(Ori2.NomeCidade,Ori1.NomeCidade) AS 'Cidade Origem', ISNULL(Ori2.CodUF,Ori1.CodUF) AS 'UF Origem', 
	Des1.NomeCidade AS 'Local Destino', ISNULL(Des2.NomeCidade,Des1.NomeCidade) AS 'Cidade Destino', ISNULL(Des2.CodUF,Des1.CodUF) AS 'UF Destino',

	cli.RazaoSocial AS 'Razão Social Cliente',
	cli.cnpj_cpf AS 'CNPJ Cliente',

	nat.descnaturezacarga AS 'Carga Transportada',
    format((ISNULL(pc.PIS,0)+ISNULL(pc.COFINS,0)),'N2','pt-br') AS 'PIS/COFINS',
    ped.indexportacao AS 'Exportação',
    prop.CNPJ_CPF AS 'CNPJ/CPF Proprietário',
    v.Propriedade,
    isnull(cte.ID, ctrc.ModeloDocumento) 'Chave CT-e / Modelo Documento',
    dbo.ChaveNFeCTRC(ctrc.Sequencial) 'Chave NF-e'
    --dbo.ChavesNFEsConhecimento(ctrc.Sequencial) 'Chave NFEs'
	
from ConhecimentosTransporte ctrc
LEFT JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Fornecedores prop ON prop.CodFornecedor = ctrc.CodFornecedor
JOIN Veiculos v ON v.CodVeiculo = ctrc.CodVeiculo
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
join naturezacarga nat on nat.codnaturezacarga = ctrc.codnaturezacarga
JOIN LONTANO.dbo.Rotas Rotas WITH (NOLOCK) ON Rotas.CodRota = ctrc.CodRota
JOIN LONTANO.dbo.Cidades Ori1 WITH (NOLOCK) ON Ori1.CodCidade = Rotas.CodCidadeOrigem
LEFT JOIN LONTANO.dbo.Cidades Ori2 WITH (NOLOCK) ON Ori2.CodCidade = Ori1.CodCidade_Subor
JOIN LONTANO.dbo.Cidades Des1 WITH (NOLOCK) ON Des1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN LONTANO.dbo.Cidades Des2 WITH (NOLOCK) ON Des2.CodCidade = Des1.CodCidade_Subor
LEFT JOIN CTRC_PIS_COFINS pc ON pc.Sequencial = ctrc.Sequencial

WHERE CTRC.DataEmissao BETWEEN @DataInicio AND @DataFim 
    AND (CTRC.SituacaoConhecto = 'Emitido' OR CTRC.SituacaoConhecto = 'Faturado') 
    AND (ISNULL(CTRC.IndComissaoComplemento, 'S') <> 'N') 
    AND (ISNULL(CTRC.TipoConhecimento, '') <> 'Substituto Contábil') 
    AND (ISNULL(CTRC.TipoConhecimento, '') <> 'Substituído' OR (ISNULL(CTRC.TipoConhecimento, '') = 'Substituído' AND CTRC.SituacaoConhecto = 'Faturado')) 
    AND (CTe.Sequencial IS NULL OR CTe.Status = 1)
ORDER BY ctrc.DataEmissao


