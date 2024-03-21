use LONTANO

SELECT 
	[Sequencial]					= SequencialTeste,
	[Razão Social Transportadora]	= RazaoSocialTransportadora,
	[CNPJ Transportadora]			= CnpjTransportadora,
	[Nome Empresa Origem]			= NomeEmpresaOrigem,
	[Cidade Origem]					= CidadeOrigem,
	[Nome Empresa Destino]			= NomeEmpresaDestino,
	[Cidade Destino]				= CidadeDestino,
	[Nome Tomador Serviço]			= NomeTomadorServico,
	[CNPJ Tomador Serviço]			= CnpjTomadorServico,
	[Data CT-e]						= DataCTe,
	[Chave CT-e]					= ChaveCTe,
	[Número CT-e]					= NumeroCTe,
	[Chave NF-e]					= ChaveNFe,
	[Número NF-e]					= NumeroNFe,
	[Valor Receber]					= ValorReceber,
	[Produto Transportado]			= ProdutoTransportado,
	[Tipo Valor]					= TipoValor,
	[Número Fatura]					= NumFatura,
	[Emissão Fatura]				= EmissaoFatura,
	[Vencimento Fatura]				= VencimentoFatura,
	[Dias Vencido]					= DiasVencido
FROM RelFretesReceberCliente
WHERE CodClientematriz = 1006801 AND CONVERT(VARCHAR(8),DataEmissao,112) BETWEEN '1990/01/01' AND '2023/12/31' AND Tipo = 'Faturado'


--isso foi colocado nos wheres de cada Union porem no ultimo Unio não possuía Where e nele foi feito um where.

AND ctrc.Sequencial = 
        CASE 
            WHEN EXISTS (
                SELECT 1 
                FROM ConhecimentosComplementados cc
                WHERE cc.SeqConhecimentoComplementado = ctrc.Sequencial
            ) THEN (
                SELECT TOP 1 cc.SeqConhecimentoComplementar 
                FROM ConhecimentosComplementados cc
                WHERE cc.SeqConhecimentoComplementado = ctrc.Sequencial
            )
            ELSE ctrc.Sequencial
        END