use RODOMAIOR

SELECT CodOrdemEmbarque,CIOT, * from ConhecimentosTransporte where NumConhecto = 80910   and CodUF = 'PR' 
exec VerificaCTe 950000004313
select * from RODOMAIOR_GSe.dbo.CTe_LOG where Sequencial = 340000025612
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where Sequencial = 340000025612

select * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 340000025612
--delete from RODOMAIOR_GSe.dbo.CTe where Sequencial = 340000025612
--exec Grava_CTe 340000025612
--UPDATE RODOMAIOR_GSe.dbo.CTe set Status = 0 where Sequencial = 340000025613

exec VerificaCTe 410000027415
select * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 410000027415
--delete from RODOMAIOR_GSe.dbo.CTe where Sequencial = 410000027415
--exec Grava_CTe 410000027415

select * from RODOMAIOR_GSe.dbo.CTe_LOG where Sequencial = 410000027415
--delete from RODOMAIOR_GSe.dbo.CTe_LOG where Sequencial = 410000027415

--exec Grava_CTe 950000004311
exec VerificaCTe 950000004311

--UPDATE RODOMAIOR_GSe.dbo.CTe set Status = 0 where Sequencial = 950000004310



SELECT 'EXEC MonitoraMDFe ' + CONVERT(VARCHAR,mvoe.NumOrdemEmbarque) AS SQL1, E.descEvento, E.Sequencial_MDFe, E.Origem
FROM RODOMAIOR_GSe.dbo.mdfe M
JOIN RODOMAIOR_GSe.dbo.Eventos_MDFe E ON  E.Sequencial_MDFe = M.Sequencial
JOIN MDFeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = M.CodManifestoCarga
WHERE (E.Status = 9 and M.Status <> 9) OR (E.Status = 5 and M.Status <> 5)


EXEC MonitoraMDFe 66023950
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 541715

select * from RODOMAIOR_GSe.dbo.Eventos_MDFe WHERE sequencial_MDFe = 541715



--select * from faturas where 


SELECT NumeroParcela, ContasReceber.CodContasReceber, ContasReceber.DataEmissao AS DataEmissaoCR, ContasReceber.NumDocumento, ContasReceber.DataVencimento, 
ContasReceber.CodMoeda, ContasReceber.PercFaturaAdto, Clientes.CodCliente, Clientes.RazaoSocial, Clientes.Endereco, Clientes.Bairro, Cidades.NomeCidade,
Cidades.CodUF AS UFCliente, Clientes.CEP, Clientes.CNPJ_CPF, Clientes.InscEstadual, Cidades1.NomeCidade AS CidadeOrigem, Cidades3.NomeCidade AS CidadeSuborOrigem,
Cidades1.CodUF AS UFOrigem, Cidades2.NomeCidade AS CidadeDestino, Cidades4.NomeCidade AS CidadeSuborDestino, Cidades2.CodUF AS UFDestino, 
NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.CodUF, 
ConhecimentosTransporte.ValorNF, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.QuantidadeSaida, 
CASE WHEN CodTipoFatura = 1 THEN NULL ELSE ConhecimentosTransporte.QuantChegFaturamento END AS QuantChegFaturamento, ConhecimentosContasReceber.ValorFaturado,
ConhecimentosTransporte.ValorIcmsFrete, CASE WHEN CliComp.CodClienteMatriz = 1000458 OR ContasReceber.CodTipoFatura = 22 OR ContasReceber.CodTipoFatura = 23 
THEN ConhecimentosTransporte.ValorICMSRetido ELSE CASE WHEN (PedidosFrete.ICMSDestacado = 'U' AND PedidosFrete.CodUFTributacao = 'MS' AND ISNULL(CliComp.CreditoICMS, 'N') = 'N') 
THEN ROUND((ISNULL(ConhecimentosTransporte.ValorICMSRetido, 0) * 0.8), 2)
ELSE ConhecimentosTransporte.ValorICMSRetido END END AS ValorICMSRetido, ContasReceber.CodFilialOrigem AS Filial, ConhecimentosContasReceber.ValorQuebra, ConhecimentosTransporte.TarifaSEFAZ, ContasReceber.IndicadorEmissaoFatura, ContasReceber.DescontoDifPesoFatura, ContasReceber.CodTipoFatura, ContasReceber.Observacao, ComboBox_Comercial.Descricao, ComplementoConhecimento.DataEntradaDesembarque, ComplementoConhecimento.DataSaidaDesembarque, ComplementoConhecimento.TempoEstadiaACobrar, ComplementoConhecimento.ValorEstadia,
ComplementoConhecimento.IndFaturaEstadia, ComplementoConhecimento.IndQtdeEstadia, Veiculos.PlacaVeiculo, ComplementoConhecimento.ToleranciaEstadia, ValorTotalFrete, ConhecimentosTransporte.QuantidadeChegada, Pedagio, ContasReceber.ICMSEstadia, PedidosFrete.CodPedidoFrete, CliComp.CodClienteMatriz FROM ConhecimentosTransporte INNER JOIN ConhecimentosContasReceber_Saldo ConhecimentosContasReceber ON ConhecimentosTransporte.Sequencial = ConhecimentosContasReceber.NumSeqConhecto INNER JOIN ContasReceber ON ConhecimentosContasReceber.CodContasReceber = ContasReceber.CodContasReceber INNER JOIN Clientes ON ContasReceber.CodCliente = Clientes.CodCliente INNER JOIN Cidades ON Clientes.CodCidade = Cidades.CodCidade INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota INNER JOIN NaturezaCarga ON ConhecimentosTransporte.CodNaturezaCarga = NaturezaCarga.CodNaturezaCarga INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeOrigem = Cidades1.CodCidade
INNER JOIN Cidades Cidades2 ON Rotas.CodCidadeDestino = Cidades2.CodCidade 
INNER JOIN ComboBox_Comercial ON ConhecimentosTransporte.UnidadeFrete = ComboBox_Comercial.Codigo AND ComboBox_Comercial.NomeComboBox = 'cboUnidadeFrete'
INNER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
INNER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
LEFT OUTER JOIN Cidades Cidades3 ON Cidades1.CodCidade_Subor = Cidades3.CodCidade 
LEFT OUTER JOIN Cidades Cidades4 ON Cidades2.CodCidade_Subor = Cidades4.CodCidade 
LEFT OUTER JOIN ComplementoConhecimento ON ConhecimentosTransporte.Sequencial = ComplementoConhecimento.NumSeqConhecto 
INNER JOIN Clientes_Complemento CliComp ON CliComp.CodCliente = ConhecimentosTransporte.CodClientePagto 
WHERE (ContasReceber.CodTipoFatura = 7) AND (ContasReceber.NumDocumento BETWEEN 'CG-149979' AND 'CG-149979') ORDER BY NumeroParcela, NumDocumento, NumConhecto


SELECT CodOrdemEmbarque,CIOT, * from ConhecimentosTransporte where NumConhecto = 183471
select TempoEstadiaACobrar,* from ComplementoConhecimento where  NumSeqConhecto = 170000013293
--UPDATE ComplementoConhecimento SET TempoEstadiaACobrar = '51:37:25'	 where  NumSeqConhecto = 170000013293

|" & RAlin
	(Format
		(SomaHora
			(Format
				(rsFaturas!TempoEstadiaACobrar, "hh:mm:ss"), 
				Format(Trim
						(Str
							(rsFaturas!TolerancaEstadia, "hh:mm:ss"), 
						), 
				"00")
			& ":00"),
		"00:00"), 
	11) & "