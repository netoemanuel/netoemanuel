--Emanuel/José Ricardo/Clóvis:
Declare @DataInicio as varchar(25) set @DataInicio = '2022-01-01 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2022-12-31 23:59:29'
select  --count(*)  -->  140.396// 131.733// 125.758  // 126.769
	  convert(VARCHAR(44),cte.ID) AS 'Chave CT-e'
	, ctrc.CodUF AS 'UF'
	, ctrc.NumConhecto AS 'Nº CT-e'
	, ctrc.SerieConhecto as 'Série'
	, CONVERT(varchar(8),ctrc.DataEmissao,3) AS 'Data Emissão'
	, format(ctrc.ValorTotalFrete,'N2','pt-br') AS 'Valor Serviço'
	, dbo.CNPJ_CPF_Masc(cte.CNPJ) AS 'CNPJ Emitente'
	, cli.cnpj_cpf AS 'CNPJ Tomador'
	, Clir.CNPJ_CPF AS 'CNPJ Remetente'-- , clir.CodCliente
	, cliD.CNPJ_CPF AS 'CNPJ Destinatário'-- , cliD.CodCliente
	, isnull (cliE.CNPJ_CPF, '') AS 'CNPJ Expedidor'-- , cliE.CodCliente
	, isnull (cliRR.CNPJ_CPF, '') AS 'CNPJ Recebedor'--, cliRR.CodCliente
	, ctrc.CodigoCFOP as 'CFOP'
	, nat.descnaturezacarga 'Produto Predominante'
	, isnull(infmdfe.RNTRC,isnull(Forn.CRNTRC,'')) as 'RNTRC'
	--, cte.RNTRC as 'RNTRC EMITENTE (RDM)'
	, Forn.CNPJ_CPF as 'CNJP/CPF Prop.Veículo'
	, mot.NomeMotorista as 'Motorista'
	, mot.CPF AS 'CPF Motorista'
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN Rodomaior_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
LEFT JOIN (SELECT infcte.chCTe ChaveCTe, MAX(prop.RNTRC) RNTRC
		   FROM RODOMAIOR_GSe.dbo.MDFe mdfe
		   JOIN RODOMAIOR_GSe.dbo.infCTe_MDFe infcte ON infcte.Sequencial = mdfe.Sequencial
		   JOIN RODOMAIOR_GSe.dbo.propVeiculos_MDFe prop ON prop.Sequencial = mdfe.Sequencial
		   WHERE mdfe.status = 9
		   GROUP BY infcte.chCTe) infmdfe ON infmdfe.ChaveCTe = cte.ID
----JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
JOIN naturezacarga nat on nat.codnaturezacarga = ctrc.codnaturezacarga
JOIN Motoristas mot on ctrc.CodMotorista = mot.CodMotorista
JOIN Fornecedores Forn on ctrc.CodFornecedor = forn.CodFornecedor
JOIN Clientes cliR ON cliR.CodCliente = ped.CodClienteEmitente
JOIN Clientes cliD ON cliD.CodCliente = ped.CodClienteDestinatario
LEFT JOIN Clientes cliRR ON cliRR.CodCliente = ped.CodClienteEntrega
LEFT JOIN Clientes cliE ON cliE.CodCliente = ped.CodClienteColeta
where 
	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
	and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
	--and ctrc.TipoConhecimento = 'Normal' 
	--and cte.[Status] = 1
	--and ctrc.NumConhecto = 15279 and ctrc.CodUF = 'MG'
order by ctrc.DataEmissao

--Testes Laércio.

--	ctrc.DataEmissao BETWEEN @DataInicio AND @DataFim 
--	and ctrc.ModeloDocumento = 'CT-e'
--	--and isnull(ped.IndExportacao,'') = 'S'
--	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
--	and ctrc.TipoConhecimento = 'Normal' 
--	and cte.[Status] = 1
--    --and ctrc.numconhecto = 129628 
--	--and isnull(forn.CRNTRC,'') = ''
--	--and isnull(cte.RNTRC,'') = ''
--	--and isnull(infmdfe.RNTRC,isnull(Forn.CRNTRC,'')) = ''
--order by ctrc.DataEmissao


--select * from ConhecimentosTransporte where NumConhecto = 35503 and CodUF = 'PR'

--exec VerificaCTe 410000013076
--select * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 410000013076



