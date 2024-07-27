
Declare @DataInicio as varchar(25) set @DataInicio = '2023-01-01 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2024-06-25 23:59:29'

select 
	cli.RazaoSocial AS 'Exportador',
	CONVERT(varchar(8),ctrc.DataEmissao,3) AS 'Data Emissão', 
	ctrc.CodUF AS UF, ctrc.NumConhecto AS 'Nº CT-e',
	ctrc.CodOrdemEmbarque AS 'Ordem Embarque',
	ctrc.QuantidadeSaida AS 'Pesa origem',
	format(ctrc.TotalFreteMotorista,'N2','pt-br') AS 'Valor Frete Motorista',
	format(ctrc.ValorTotalFrete,'N2','pt-br') AS 'Valor Frete',
	format(ctrc.ValorNF,'N2','pt-br') AS 'Valor NF',
	dbo.NotaFiscalCTRC_SemSerie(ctrc.Sequencial) as 'Nº NF',
	nat.CodNaturezaCarga AS 'Cod. Natureza Carga',	
	nat.descnaturezacarga 'Produto Transportado',
	tipo.Descricao AS 'Tipo',
	nat.Tipo  AS 'Cod. Tipo'
	
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
join naturezacarga nat on nat.codnaturezacarga = ctrc.codnaturezacarga
JOIN ComboBox_Financeiro tipo on Tipo.NomeComboBox = 'cboTipoNatCarga' AND Tipo.Codigo = nat.Tipo
JOIN ComboBox_Financeiro tipo1 on Tipo1.NomeComboBox = 'cboTipoNatCarga' AND Tipo.Codigo = nat.Tipo
where 
	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	--and ctrc.ModeloDocumento = 'CT-e'
	--and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
	and ctrc.TipoConhecimento = 'Normal' 
order by ctrc.DataEmissao
