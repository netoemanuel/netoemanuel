-- ajuste solicitado por fagner dia 12/12/2022 no whatsapp refernete ao chamado #5095 - Gs Agrogrande - Liquidado valor a maior


select ValorMovimento,* from MovimentacaoBancaria where CodMovBancaria = 1029571
--update MovimentacaoBancaria set ValorMovimento = 9921.51 where CodMovBancaria = 1029571

--ValorMovimento	CodMovBancaria	CodFilial	CodContaBancaria	DataMovimento	DataCaixa	CodTipoMovBancaria	NumDocumento	ValorMovimento	CodMoeda	DebitoCredito	Historico	DataPrevista	DataLancamento	DataConciliacao	CodRecDesp	SituacaoCredito	Gerado	Estornado	CodMovBanc	CodTipoAplicacao	CodClienteDepPend	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodContrato	CodEmpresaParam	IndEnvioSPED	IndConciliacao
--9924.51	1029571	AGD	1	2022-11-30 00:00:00	2022-11-30 00:00:00	28	PAG-FOR	9924.51	1	D	Liquidado PAG-FOR	2022-11-30 00:00:00	NULL	NULL	NULL	Baixado	S	N	NULL	NULL	NULL	10234	AGD	2022-11-30 11:15:31.000	NULL	NULL	NULL	NULL	1	NULL	NULL
--9921.51
--
-- Refernete ao chamado 4768
select ValorMovimento,* from MovimentacaoBancaria where CodMovBancaria = 1029288
--update MovimentacaoBancaria set ValorMovimento = 115543.80 where CodMovBancaria = 1029288

--ValorMovimento	CodMovBancaria	CodFilial	CodContaBancaria	DataMovimento	DataCaixa	CodTipoMovBancaria	NumDocumento	ValorMovimento	CodMoeda	DebitoCredito	Historico	DataPrevista	DataLancamento	DataConciliacao	CodRecDesp	SituacaoCredito	Gerado	Estornado	CodMovBanc	CodTipoAplicacao	CodClienteDepPend	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodContrato	CodEmpresaParam	IndEnvioSPED	IndConciliacao
--115490.54	1029288	AGD	1	2022-11-07 00:00:00	2022-11-07 00:00:00	28	PAG-FOR	115490.54	1	D	Liquidado PAG-FOR	2022-11-07 00:00:00	NULL	NULL	99	Baixado	S	N	NULL	NULL	NULL	10234	AGD	2022-11-07 19:24:17.000	10249	AGD	2022-12-06 09:06:34.000	NULL	1	NULL	NULL
--115543.80


