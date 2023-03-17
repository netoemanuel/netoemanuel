--situacao relacaoFrete
--1 = pendente
--2 = paga
--3 = Conferida
--indicador de diferença
-- 1 - Sem Diferença.
-- 2 - Diferença a Maior Pendente.
-- 3 - Diferença a Maior Descontada.
-- 4 - Diferença a Menor.
-- 5 - Diferença a Menor Pendente.
-- 6 - Diferença a Menor Paga.

--UPDATE RelacaoFretes set CodIndicadorDiferenca = 2, CodSituacao = 1, CodRelacaoFreteDiferenca = null, Desconto = Null WHERE CodRelacaoFrete = 1086181		-- deixar a relação que foi retirada como "Pendente" e sem Idicador de diferença
--UPDATE RelacaoFretes set CodIndicadorDiferenca = 2 WHERE CodRelacaoFrete = 1086181
select Desconto,* from RelacaoFretes where CodRelacaoFrete = 1086511  --txtDesconto

--Desconto	CodRelacaoFrete	CodFornecedor	DataEntradaRelacao	DataPrevistaPagamento	DataChegadaDocumentos	CodSituacao	CodIndicadorDiferenca	TotalRelacao	OutrasDespesas	Desconto	ValorDiferenca	Observacoes	CodContasPagar	CodRelacaoFreteDiferenca	CodUsuario	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndicadorGeracao	DataFechamento	IndEnvioSPED	TipoPagtoRelacao	CodFilial	CodContaBancaria	DataPostagem
--720.57	1086181	1000781	2023-01-06 00:00:00	2023-01-11 00:00:00	2023-01-06 00:00:00	1	1	1358.74	NULL	720.57	NULL	BOLETO VENC. 11/01  //  VERIFICANDO O DESCONTO GERADO C/ GS	1347446	NULL	NULL	12058	CG	2023-01-06 15:08:59.000	12451	CG	2023-01-06 17:35:03.000	NULL	NULL	NULL	NULL	NULL	NULL	NULL


select Desconto,  * from RelacaoFretes where CodRelacaoFrete = 1078695  
--UPDATE  RelacaoFretes set ValorDiferenca = NULL, OutrasDespesas = null, CodRelacaoFreteDiferenca = NULL where CodRelacaoFrete = 1078695    
--Desconto	CodRelacaoFrete	CodFornecedor	DataEntradaRelacao	DataPrevistaPagamento	DataChegadaDocumentos	CodSituacao	CodIndicadorDiferenca	TotalRelacao	OutrasDespesas	Desconto	ValorDiferenca	Observacoes	CodContasPagar	CodRelacaoFreteDiferenca	CodUsuario	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndicadorGeracao	DataFechamento	IndEnvioSPED	TipoPagtoRelacao	CodFilial	CodContaBancaria	DataPostagem
--NULL	1078695	1085934	2022-05-31 00:00:00	2022-06-21 00:00:00	2022-06-21 00:00:00	2	3	34446.27	206.68	NULL	206.68	BOLETO VENC.: 01/06 - cobrança sem informação na fatura, passado email para Aline, e conversado com Wilian que ficou de conversar com a Aline pra ver como seria feito o pagamento, DESCONTO REF. ATRASO NO PAGTO. POSTO COBROU JUROS	1317026	1086511	NULL	11977	CG	2022-05-31 10:15:43.000	12058	CG	2023-01-19 08:22:11.000	NULL	NULL	NULL	1	NULL	NULL	NULL

--UPDATE RelacaoFretes set ValorDiferenca = NULL, CodRelacaoFreteDiferenca = null WHERE CodRelacaoFrete = 1078695
--CodRelacaoFreteDiferenca ValorDiferenca
--		1086181				720.57
select Desconto, CodIndicadorDiferenca, * from RelacaoFretes where CodRelacaoFrete = 1086511
--UPDATE  RelacaoFretes set ValorDiferenca = NULL, OutrasDespesas = null, CodRelacaoFreteDiferenca = NULL, Desconto = NULL where CodRelacaoFrete = 1086511 

select Desconto, CodIndicadorDiferenca, * from RelacaoFretes where CodRelacaoFrete = 1078695  

--select * from ValoresRelacaoFretes where CodRelacaoFrete = 1086511

SELECT CodRelacaoFrete, DataEntradaRelacao, ValorDiferenca FROM RelacaoFretes Where CodRelacaoFreteDiferenca = 1086511


select  CodIndicadorDiferenca, ValorDiferenca, CodSituacao,  * from RelacaoFretes_log where CodRelacaoFrete = 16005924 order by DataLog desc

select  CodIndicadorDiferenca, ValorDiferenca,CodSituacao, * from RelacaoFretes where CodRelacaoFrete = 16005924 