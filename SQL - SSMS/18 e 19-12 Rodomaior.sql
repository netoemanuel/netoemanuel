use RODOMAIOR

exec VerificaCTe 10000025040
--delete from RODOMAIOR_GSe.dbo.cte where Sequencial = 10000025040
--exec Grava_CTe 10000025040
--delete from RODOMAIOR_GSe.dbo.cte where Sequencial = 10000025039
--exec Grava_CTe 10000025039
exec VerificaCTe 10000025039


SELECT CodMovimentoBancario,* FROM MovimentosCaixa_Log WHERE (CodMovCaixa = 101104335)
SELECT CodMovimentoBancario,* FROM MovimentosCaixa_log WHERE (CodMovCaixa = 101104334)
select * from ContasPagas where CodContasPagar = 1355484
select * from ContasPagas_log where CodContasPagar = 1355484
--insert MovimentosCaixa 
--(CodMovCaixa, CodFilial, CodCaixa, DataMovimento, DataCaixa, CodTipoMovCaixa, ValorMovimento, CodMoeda, NumDocumento, DataDocumento, TipoDocumento, MesAnoCompetencia, Historico, DebitoCredito, CodRecDesp, SituacaoMovimento, Gerado, Estornado, CodMovimentoBancario, CodMovimentoCaixa, LanctoContabil, SeqLanctoContabil, CodRequisicao, CodDespesaPneu, CodOrdemServico, DataChegadaDocumento, IndicadorMovimento, MesAnoCompetencia2, ChecagemIndicador, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, HistoricoContabil, MesAnoRecAdicionais, CodTipoDocCaixa, CodEmpresaParam, IndEnvioSPED, IndAdtoPedagio)
--select top(1) CodMovCaixa, CodFilial, CodCaixa, DataMovimento, DataCaixa, CodTipoMovCaixa, ValorMovimento, CodMoeda, NumDocumento, DataDocumento, TipoDocumento, MesAnoCompetencia, Historico, DebitoCredito, CodRecDesp, SituacaoMovimento, Gerado, Estornado, CodMovimentoBancario, CodMovimentoCaixa, LanctoContabil, SeqLanctoContabil, CodRequisicao, CodDespesaPneu, CodOrdemServico, DataChegadaDocumento, IndicadorMovimento, MesAnoCompetencia2, ChecagemIndicador, 11899, 'CG', '2023-03-20 07:51:07.000', 12058, 'CG', '2023-10-05 14:24:45.000', HistoricoContabil, MesAnoRecAdicionais, CodTipoDocCaixa, CodEmpresaParam, IndEnvioSPED, IndAdtoPedagio from MovimentosCaixa_log where 101104335 in (CodMovCaixa, CodMovimentoCaixa) order by DataLog desc



select Multa,* from ContasReceber where CodContasReceber = 1182260
select * from ContasReceber_log where CodContasReceber = 1182260

select * from ConhecimentosTerceiros where NumConhecto = 154269

SELECT DISTINCT CTRC.Sequencial, CTRC.CodPedidoFrete, CCR.CodContasReceber, CTRC.CodUF, CTRC.NumConhecto, CTRC.CodUF + '-' + LTRIM(STR(CTRC.NumConhecto)) AS CTRC, CTRC.DataEmissao, CCR.QuantUtilizadaCalculo, ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) AS QuantChegFaturamento, CTRC.CodUnidadeMedida, CCR.ValorFaturado, CTRC.QuantidadeSaida, CTRC.ValorTotalFrete,CTRC.Outros,CTRC.ValorNF, CASE ISNULL((SELECT COUNT(NumeroNF) AS QtdeNF FROM NotasFiscaisConhecimento WHERE SequencialConhecimento = CTRC.Sequencial), 0) WHEN 1 THEN NotasFiscaisConhecimento.NumeroNF WHEN 0 THEN NULL ELSE 'Várias' END AS NF, CASE WHEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > 0 AND CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) * (ToleranciaQuebra / 100) THEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) ELSE QuantidadeSaida - ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) END ELSE NULL END AS Quebra, Recebidos.DataRecebimento, ISNULL(Recebidos.ValorRecebido, 0) AS ValorRecebido, ISNULL(Recebidos.Juros, 0) AS Juros, ISNULL(Recebidos.Multa, 0) AS Multa, ISNULL(Recebidos.Desconto, 0) AS Desconto, (ISNULL(CCR.ValorFaturado, 0) - ISNULL(Recebidos.ValorRecebido, 0)) AS SaldoReceber FROM ConhecimentosContasReceber CCR INNER JOIN ConhecimentosTransporte CTRC ON CCR.NumSeqConhecto = CTRC.Sequencial LEFT OUTER JOIN NotasFiscaisConhecimento ON CTRC.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento LEFT 
OUTER JOIN Clientes_Complemento ON CodCliente = CodClientePagto LEFT OUTER JOIN (SELECT CodContasReceber, NumSeqConhecto, MAX(DataRecebimento) AS DataRecebimento, SUM(ISNULL(ValorPrincipal, 0)) AS ValorRecebido, SUM(ISNULL(Juros, 0)) AS Juros, SUM(ISNULL(Multa, 0)) AS Multa, SUM(ISNULL(Desconto, 0)) AS Desconto FROM ConhecimentosContasReceber_Recebidos GROUP BY CodContasReceber, NumSeqConhecto) AS Recebidos ON Recebidos.CodContasReceber = CCR.CodContasReceber AND Recebidos.NumSeqConhecto = CCR.NumSeqConhecto WHERE (CCR.CodContasReceber = 1182260) ORDER BY CTRC.CodUF, CTRC.NumConhecto


select * from Veiculos where PlacaVeiculo = 'BEP-1062'
select * from ConjuntosVeiculo where CodVeiculo = 119208
--delete from ConjuntosVeiculo where CodVeiculo = 146907
--insert into ConjuntosVeiculo (CodVeiculo,	CodTipoConjunto,	CodVeiculoAdicional1,	CodVeiculoAdicional2,	CodVeiculoAdicional3,	ComprimentoConjunto,	CodUsuarioCriacao,	CodFilialCriacao,	DataCriacao,	CodUsuarioAlteracao,	CodFilialAlteracao,	DataAlteracao,	Eixos)
--select 146907,	3,	146909,	NULL,	NULL,	NULL,	12451,	'CG',	GETDATE(),NULL,	NULL,	NULL,	NULL
select * from Veiculos where CodVeiculo = 119208
select * from ConjuntosVeiculo where CodVeiculo = 119208



select * from ConhecimentosTransporte where CodOrdemEmbarque = 75010534
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 750000009694
--DELETE from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 750000009694
exec VerificaCTe 750000009694

--UPDATE RODOMAIOR_GSe.dbo.cte set Status = Status where Sequencial = 750000009694

SELECT ISNULL(Situacao,'TOTAL') as Situação, count(*) AS QTD FROM CTRC_Cargill WHERE Situacao IN ('Erro','Pendente') GROUP BY Situacao WITH ROLLUP


select * from RODOMAIOR_GSe.dbo.NFe where ID = '51231214796754000295550100001638561092014930'
SELECT Erro,* FROM Nfe_Importacao WHERE ChaveNfe = '51231214796754000295550100001638561092014930'


select Saldo, *  from ContasReceber where CodContasReceber = 1182260  -- 1326.49
--UPDATE ContasReceber set saldo = 0.00 where CodContasReceber = 1182260

SELECT * FROM ContasRecebidas_log WHERE (CodContasReceber = 1182260) ORDER BY DataLog, CodContasReceber



select IndDesabilitaCriticaANTT, IndAutonomo, * from Fornecedores_log where DataLog >'2023-09-01 06:10:31.000' and AcaoLog = 'I' and IndDesabilitaCriticaANTT = 'S' order by DataCadastro desc



--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3
--
--update Lontano_GSe.dbo.MDFe set tpTransp = 3, status = 0   where CodManifestoCarga = 1251340
