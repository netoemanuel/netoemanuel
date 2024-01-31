select 'exec MonitoraMDFe ' + convert(varchar,mvoe.NumOrdemEmbarque) AS SQL1, E.descEvento, E.Sequencial_MDFe, E.Origem
from RODOMAIOR_GSe.dbo.mdfe M
join RODOMAIOR_GSe.dbo.Eventos_MDFe E ON  E.Sequencial_MDFe = M.Sequencial
join MDFeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = M.CodManifestoCarga
where (E.Status = 9 and M.Status <> 9) OR (E.Status = 5 and M.Status <> 5)



select * from ContasPagar where CodContasPagar = 75001400 -- 540.80
--UPDATE ContasPagar set saldo = 0.00 where CodContasPagar = 75001400 


select * from Cidades where CodCidade = 83801
--UPDATE Cidades set CEP_Inicial ='17350-126', CEP_Final = '17350-126'  where CodCidade = 83801

--UPDATE Cidades set CEP_Inicial ='17350-000', CEP_Final = '17350-126'  where CodCidade = 83801

select * from RODOMAIOR_GSe.dbo.Cidades_e where CodCidade = 83801


select CEP, * from Motoristas where CodMotorista = 3002718
--UPDATE Motoristas set cep = '17350-126' where CodMotorista = 3002718
--UPDATE Motoristas set cep = '17350-000' where CodMotorista = 3002718





SELECT cfo.CodViagemPamcard FROM ConhecimentosTransporte ctrc INNER JOIN CartaFrete cf ON cf.Sequencial = ctrc.Sequencial  INNER JOIN CartaFrete_Ocorrencia cfo ON cfo.IdCartaFrete = cf.Id AND cfo.DescricaoOcorrencia = 'CADASTRO FRETE' AND cfo.tipoOcorrencia = 'SUCESSO' AND cfo.CodAdmPagtoFrete = 14  WHERE CTRC.Sequencial = 10000024314

SELECT DISTINCT ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF FROM ConhecimentosTransporte INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga LEFT JOIN Clientes_ParametrosFaturamento PAR ON PAR.CodCliente = Clientes_Complemento.CodClienteMatriz WHERE ConhecimentosTransporte.DataEmissao BETWEEN '11/01/2023 00:00:00' AND '11/08/2023 23:59:29' AND  ISNULL(PAR.IndObrigaImagemComprovantes,'') = 'S' AND ConhecimentosTransporte.Sequencial NOT IN (SELECT Sequencial FROM ImagensCTe) ORDER BY ConhecimentosTransporte.Sequencial

SELECT DISTINCT 
		ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC,
		ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa,
		ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga,
		ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, 
CASE WHEN 
		ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, 
		ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF
FROM 
		ConhecimentosTransporte 
		INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota
		INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
		INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade 
		LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo
		LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento
		LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento
		LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete
		LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol
		LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque 
		INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto
		INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente
		INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga 
		LEFT JOIN Clientes_ParametrosFaturamento PAR ON PAR.CodCliente = Clientes_Complemento.CodClienteMatriz
WHERE
		ConhecimentosTransporte.DataEmissao BETWEEN '11/01/2023 00:00:00' AND '11/08/2023 23:59:29'
		AND  ISNULL(PAR.IndObrigaImagemComprovantes,'') = 'S' AND ConhecimentosTransporte.Sequencial
		NOT IN (SELECT Sequencial FROM ImagensCTe)
ORDER BY 
		ConhecimentosTransporte.Sequencial


SELECT CodVeiculo, MesAno,*FROM OrigemDadosItensAcerto 
INNER JOIN AcertoViagem on Sequencial = SeqAcerto 
WHERE CodOrigemDados = 1089492 and (CodTipoMovAcerto = 14 or CodTipoMovAcerto = 19) and Marcador = 'X'


select * from AcertoViagem where Sequencial = 100021904


--Auxilio ao Emanuel no atendimentos à usuário(a) Vanessa com e-mail direcionado a GS com o Assunto: "Ajuste Relação de Frete".
select * from RelacaoFretes where CodRelacaoFrete = 1094627
select * from ConhecimentosRelacaoFretes_log where CodRelacaoFrete = 1094627 order by DataLog desc
--UPDATE RelacaoFretes set OutrasDespesas = null where CodRelacaoFrete = 1094627
--UPDATE RelacaoFretes set OutrasDespesas = 434.80 where CodRelacaoFrete = 1094627
SELECT * FROM DespesasRateioContasPagar WHERE (CodContasPagar = 1379268) AND (CodTipoDespesa <> 78) 
--delete FROM DespesasRateioContasPagar WHERE (CodContasPagar = 1379268) AND (CodTipoDespesa <> 78) 
--CodContasPagar	CodFilial	CodCentroCusto	CodTipoDespesa	ValorDespesaRateio	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--1379268	CG	4	465	420.80	12451	CG	2023-11-08 17:17:37.000	NULL	NULL	NULL
--1379268	CG	4	466	-420.80	12451	CG	2023-11-08 17:17:36.000	NULL	NULL	NULL
SELECT
		DespesasContasPagar.CodContasPagar, DespesasContasPagar.CodTipoDespesa, DespesasContasPagar.ValorDespesa, PlanoContasDespesa.DescTipoDespesa
FROM 
		DespesasContasPagar 
		INNER JOIN PlanoContasDespesa ON DespesasContasPagar.CodTipoDespesa = PlanoContasDespesa.CodTipoDespesa 
WHERE 
		(DespesasContasPagar.CodContasPagar = 1379268)
SELECT * FROM DespesasContasPagar  where CodContasPagar = 1379268 and CodTipoDespesa <> 78
--delete FROM DespesasContasPagar  where CodContasPagar = 1379268 and CodTipoDespesa <> 78
--CodContasPagar	CodTipoDespesa	ValorDespesa	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--1379268	465	420.80	12058	CG	2023-09-13 10:47:05.000	NULL	NULL	NULL
--1379268	466	14.00	12058	CG	2023-09-13 10:47:05.000	NULL	NULL	NULL
SELECT
		ValoresRelacaoFretes.*, TiposValores.DescTipoValor, TiposValores.DebitoCredito 
FROM 
		ValoresRelacaoFretes 
		INNER JOIN TiposValores ON ValoresRelacaoFretes.CodTipoValor = TiposValores.CodTipoValor
WHERE 
		ValoresRelacaoFretes.CodRelacaoFrete = 1094627 ORDER BY ValoresRelacaoFretes.Sequencial

SELECT * FROM ValoresRelacaoFretes WHERE ValoresRelacaoFretes.CodRelacaoFrete = 1094627
--CodRelacaoFrete	Sequencial	CodTipoValor	DataPagamento	Historico	Observacoes	CodComplemento	CodMovCaixa	ValorPago	ValorConferido	CodRequisicao	CodDespPneu	IndicadorMovimento	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--1094627	1	13	2023-09-06 00:00:00	329707	NULL	NULL	NULL	420.80	NULL	NULL	NULL	NULL	12104	CG	2023-09-06 11:21:49.000	NULL	NULL	NULL
--1094627	2	14	2023-09-06 00:00:00	329707	NULL	NULL	NULL	14.00	NULL	NULL	NULL	NULL	12104	CG	2023-09-06 11:21:49.000	NULL	NULL	NULL
--delete FROM ValoresRelacaoFretes WHERE ValoresRelacaoFretes.CodRelacaoFrete = 1094627

select * from MovimentacaoBancaria where CodFilial = 'CG' and CodContaBancaria = 64 and DataMovimento = '2023-09-12'
select * from MovimentacaoBancaria_log where Historico = 'PARANAGUA FRETES' and CodFilial = 'CG' and CodContaBancaria = 64 and DataMovimento = '2023-09-12'
SELECT * FROM ContasPagas WHERE (CodContasPagar = 1379268) ORDER BY CodContasPagar, CodMovCaixa
--update ContasPagas set ValorTotalPago = 88827.23 WHERE (CodContasPagar = 1379268)  -- 89262.03

SELECT * FROM ContasPagas WHERE (CodContasPagar = 1379268) ORDER BY CodContasPagar, CodMovCaixa

select * from MovimentosCaixa where CodMovCaixa = 101168174
select * from MovimentosCaixa_log where CodMovCaixa = 101168174
