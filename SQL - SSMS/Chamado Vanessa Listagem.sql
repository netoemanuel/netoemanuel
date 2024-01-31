use RODOMAIOR


select CodigoCFOP,* from ConhecimentosTransporte where NumConhecto = 184501 
select * from NotasFiscaisConhecimento where SequencialConhecimento = 10000023674

exec VerificaCTe 10000023674

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT *
FROM
	ContasPagar 
WHERE
	(CodTipoContasPagar = 14) 
	AND (Situacao <> 'Liquidada' AND Situacao <> 'Cancelada') 
	AND (CodFilialCaixa = 'CG') AND (CodCaixa = 1664)


--BLk

select CodigoCFOP,* from ConhecimentosTransporte where Sequencial = 570000003832  -- 12733 pva
select * from NotasFiscaisConhecimento  order by DataCriacao desc-- where SequencialConhecimento = 40000033125

exec VerificaCTe 10000023674


-- 11809 CHP

select * from ConhecimentosTransporte where NumConhecto = 183201 and CodUF = 'MS'
--select * from Veiculos where CodVeiculo = 27469
--select * from Fornecedores where CodFornecedor = 48000064
--select * from Motoristas where CodMotorista = 48000140
select * from RelatorioEmbarque where NumRelatorioEmbarque = 7003387
select AverbacaoImpSuspenso, * from PedidosFrete where CodPedidoFrete = 1007453
--UPDATE PedidosFrete set AverbacaoImpSuspenso = 'S' where CodPedidoFrete = 10074S53
select Situacao,* from OrdemEmbarque where NumOrdemEmbarque = 7017718
--UPDATE  OrdemEmbarque set Situacao = 1, DataCriacao = GETDATE ()  where NumOrdemEmbarque = 7017718

--insert into RelatorioEmbarque(NumRelatorioEmbarque,	DataRelatorioEmbarque,	CodColaborador,	CodFilial,	CodVeiculo,	KmInicial,	KmFinal,	Situacao,	Observacoes,	CodUsuarioCriacao,	CodFilialCriacao,	DataCriacao,	CodUsuarioAlteracao,	CodFilialAlteracao,	DataAlteracao)
--select 7003387,	GETDATE(),	11809,	'CHP',	NULL,	NULL,	NULL,	1,	NULL,	11809,	'CHP',	GETDATE(),	NULL,	NULL,	NULL


--insert into OrdemEmbarque (NumOrdemEmbarque,	DataOrdemEmbarque,	NumRelatorioEmbarque,	CodVeiculo,	CodMotorista,	
--CodFornecedor,	CodPedidoFrete,	NumeroPedidoTransf,	CodNaturezaCarga,	QuantVolumes,	CodEspecieMercadoria,	Marca,	
--QuantEmbarcar,	CodUnidadeMedida,	FreteCombinadoMotorista,	Situacao,	QtdeConhectosEmitir,	Observacoes,	
--CodUsuarioCriacao,	CodFilialCriacao,	DataCriacao,	CodUsuarioAlteracao,	CodFilialAlteracao,	DataAlteracao,	
--EmpresaValePedagio,	DataContratoValePedagio,	NumCartaoValePedagio,	CodGerenciadoraRisco,	DataConsulta,	NumeroConsulta,	ValorTotal,	
--TipoDispositivoValePedagio,	CIOT,	NumeroCartao,	CodUsuarioAprovCredito,	EmiteCartaFreteCIOT,	IndAutonomo,	RotaSemParar,	EixosSemParar,
--ValorPedagioSemParar,	IndPularRoteirizacao,	IndImpressao,	IndNaoCriticarCaramuru,	IndComplementoSubstituicao,	IndSemEspelhoCoamo,	CodAgendamento,	IndProblemaGR)  --47

--select 7017718,	GETDATE(),	7003387,	27469,	48000140,	48000064,	1007453,	NULL,	1319,	NULL,	0,	NULL,	36360.000,	'KG',	60.00,	2,	1,
--'Em caso de estadia o valor sera de R$ 0,50 após 24 horas sem retrocesso Estadias antes, do incio ou descarga entrar em contato com a transportadora PAGAMENTO DO SALDO DE FRETE SOMENTE MEDIANTE APRESENTAÇÃO DO TICKET DE DESCARGA',
--11809,	'CHP',	GETDATE(),	'CHP',	GETDATE(),	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'EFRETE',	NULL,	NULL,	'N',	'N',	NULL,	7,	NULL,	'N',	NULL,	'N',	'N',	'N',	NULL, NULL,NULL

--7017718	2023-08-18 00:00:00	7003387	27469	48000140	48000064	1007453	NULL	1319	NULL	1	NULL	36360.000	KG	60.00	2	1	Em caso de estadia o valor sera de R$ 0,50 após 24 horas sem retrocesso Estadias antes, do incio ou descarga entrar em contato com a transportadora PAGAMENTO DO SALDO DE FRETE SOMENTE MEDIANTE APRESENTAÇÃO DO TICKET DE DESCARGA	11809	CHP	2023-08-18 12:09:16.000	11809	CHP	2023-08-18 12:10:22.000	NULL	NULL	NULL	NULL	NULL	NULL	NULL	NULL	EFRETE	NULL	NULL	N	N	NULL	7	NULL	N	NULL	N	N	N	NULL	NULL


SELECT *  FROM PedidosFrete WHERE CodPedidoFrete = 1007453 AND AverbacaoImpSuspenso = 'S'