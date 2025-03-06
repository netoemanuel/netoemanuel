select * from ConhecimentosTransporte where NumConhecto = 742664 and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set CodFilialEmitente = 'ARN' where NumConhecto = 742664 and CodUF = 'MT' and SerieConhecto = '0' --RO

select SeguroAverbado,ValorNF, GRIS_NaoDescontado, * from ConhecimentosTransporte where NumConhecto = 742588 and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set SeguroAverbado = 35.93, ValorNF = 71857.72 where NumConhecto = 742588 and CodUF = 'MT' and SerieConhecto = '0' --

select CIOT, * from ConhecimentosTransporte where NumConhecto = 742647 and CodUF = 'MT' and SerieConhecto = '0'  --000000000000/0000
--UPDATE  ConhecimentosTransporte SET CIOT = null where NumConhecto = 742647 and CodUF = 'MT' and SerieConhecto = '0'
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * FROM Motoristas_Veiculos where CodMotorista = 1104957	 ORDER BY DataCriacao desc
--DELETE FROM Motoristas_Veiculos where CodMotorista = 1104957 and DataCriacao =  '2024-12-19 18:57:29.000' 
--CodMotorista	CodVeiculo	DataCadastro	Observacoes	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodColaborador
--1104957	993	2024-12-19 00:00:00	NULL	13772	RDN	2024-12-19 18:57:29.000	NULL	NULL	NULL	NULL

select * from DiarioBordoSintetico where CodMotorista = 1104957 and MesAno = '12/2024' ORDER BY DataInicial desc
select * from DiarioBordoSintetico where Sequencial = 1308554
--DELETE from DiarioBordoSintetico where Sequencial = 1308554
--Sequencial	CodMotorista	MesAno	DataInicial	DataFinal	CodVeiculo	Dia	Jornada	Descanso	Refeicao	Espera	SeqJornadaOmnilink	Tipo	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndConferencia	Observacoes	NaoIdentificado
--1308554	1104957	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	993	2024-12-19 00:00:00	00:00	16:00	00:00	08:00	134280	Normal	14455	RO	2024-12-30 09:35:40.347	NULL	NULL	NULL	N	NULL	00:00

select * FROM Motoristas_Veiculos where CodMotorista = 1105735	 ORDER BY DataCriacao desc
select * from DiarioBordoSintetico where CodMotorista = 1105735 and MesAno = '12/2024' ORDER BY DataInicial desc
select * from DiarioBordoSintetico where Sequencial = 1313589
--DELETE from DiarioBordoSintetico where Sequencial = 1313589

--Sequencial	CodMotorista	MesAno	DataInicial	DataFinal	CodVeiculo	Dia	Jornada	Descanso	Refeicao	Espera	SeqJornadaOmnilink	Tipo	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndConferencia	Observacoes	NaoIdentificado
--1309616	1105735	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	1831	2024-12-04 00:00:00	01:32	16:00	00:00	06:28	139436	Normal	14455	RO	2024-12-30 10:14:58.073	NULL	NULL	NULL	N	NULL	00:00

--Sequencial	CodMotorista	MesAno	DataInicial	DataFinal	CodVeiculo	Dia	Jornada	Descanso	Refeicao	Espera	SeqJornadaOmnilink	Tipo	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndConferencia	Observacoes	NaoIdentificado
--1313588	1105735	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	1831	2024-12-04 00:00:00	01:32	16:00	00:00	06:28	159485	Normal	14455	RO	2024-12-30 13:10:18.430	NULL	NULL	NULL	N	NULL	00:00

--Sequencial	CodMotorista	MesAno	DataInicial	DataFinal	CodVeiculo	Dia	Jornada	Descanso	Refeicao	Espera	SeqJornadaOmnilink	Tipo	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndConferencia	Observacoes	NaoIdentificado
--1313589	1105735	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	1831	2024-12-05 00:00:00	00:00	16:00	00:00	08:00	159486	Normal	14455	RO	2024-12-30 13:10:18.430	NULL	NULL	NULL	N	NULL	00:00



select * FROM Motoristas_Veiculos where CodMotorista = 88001098	 ORDER BY DataCriacao desc
select * from DiarioBordoSintetico where CodMotorista = 88001098 and MesAno = '12/2024' ORDER BY DataInicial desc

select * from DiarioBordoSintetico where CodMotorista = 88001098 and CodVeiculo = 775
--delete from DiarioBordoSintetico where CodMotorista = 88001098 and CodVeiculo = 775

--Sequencial	CodMotorista	MesAno	DataInicial	DataFinal	CodVeiculo	Dia	Jornada	Descanso	Refeicao	Espera	SeqJornadaOmnilink	Tipo	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndConferencia	Observacoes	NaoIdentificado
--1316554	88001098	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	775	2024-11-25 00:00:00	04:42	16:00	00:00	03:18	174842	Normal	14853	RO	2024-12-30 15:40:35.427	NULL	NULL	NULL	N	NULL	00:00
--1316553	88001098	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	775	2024-11-26 00:00:00	04:23	16:00	00:00	03:37	174844	Normal	14853	RO	2024-12-30 15:40:35.427	NULL	NULL	NULL	N	NULL	00:00
--1316549	88001098	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	775	2024-11-27 00:00:00	00:00	16:00	00:00	08:00	174830	Normal	14853	RO	2024-12-30 15:40:35.427	NULL	NULL	NULL	N	NULL	00:00
--1316552	88001098	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	775	2024-11-28 00:00:00	00:59	16:00	00:00	07:01	174854	Normal	14853	RO	2024-12-30 15:40:35.427	NULL	NULL	NULL	N	NULL	00:00
--1316551	88001098	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	775	2024-11-29 00:00:00	11:41	10:19	02:00	00:00	174867	Normal	14853	RO	2024-12-30 15:40:35.427	NULL	NULL	NULL	N	NULL	00:00
--1316555	88001098	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	775	2024-11-30 00:00:00	00:00	24:00	00:00	00:00	174868	Normal	14853	RO	2024-12-30 15:40:35.427	NULL	NULL	NULL	N	NULL	00:00
--1316550	88001098	12/2024	2024-11-21 00:00:00	2024-12-20 23:59:00	775	2024-12-01 00:00:00	00:00	24:00	00:00	00:00	174869	Normal	14853	RO	2024-12-30 15:40:35.427	NULL	NULL	NULL	N	NULL	00:00

--DELETE from DiarioBordoSintetico where Sequencial = 1313589
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * from ConhecimentosTransporte where NumConhecto = 742641 and CodUF = 'MT' and SerieConhecto = '0'
EXEC VerificaCTe 20000159185
SELECT * from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 20000159185 -- and Sequencial = 150713
--UPDATE LONTANO_GSe.dbo.Eventos_CTe SET xJust = null where Sequencial_CTe = 20000159185 and Sequencial = 150717
--UPDATE LONTANO_GSe.dbo.Eventos_CTe SET Status = 1 where Sequencial_CTe = 20000159185 and Sequencial = 150714
-- 150717
--150714
--insert into  LONTANO_GSe.dbo.Eventos_CTe values (20000159185,2.00,'ID1101105124121145582900028657000000742641100742641502',51,1,11455829000286,'51241211455829000286570000007426411007426415','2024-12-30 09:51:02.817',110110,2,'3.00',NULL,NULL,NULL,1,'A Carta de Correcao e disciplinada pelo Art. 58-B do CONVENIO/SINIEF 06/89: Fica permitida a utilizacao de carta de correcao, para regularizacao de erro ocorrido na emissao de documentos fiscais relativos a prestacao de servico de transporte, desde que o erro nao esteja relacionado com: I - as variaveis que determinam o valor do imposto tais como: base de calculo, aliquota, diferenca de preco, quantidade, valor da prestacao;II - a correcao de dados cadastrais que implique mudanca do emitente, tomador, remetente ou do destinatario;III - a data de emissao ou de saida.','PLACA DO CAVALO: QCL-3316 - MOTORISTA: GABRIEL WASHINGTON DE OLIVEIRA ALVES - CPF: 061.986.071-51',15173,'RO','2024-12-30 09:52:02.817')

--"ONDE SÊ LÊ RAT9G77 SÊ LÊ QCW8516  // MOTORISTA GRABEIEL WASGINGTON DE OLIVEIRA ALVES - CPF 061.986.071-51 ".

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SISTEMA EFRETE (WWW.EFRETE.COM.BR): [NEGÓCIO] (PROTOCOLO: 685.907.301) ERRO ADICIONANDO OPERAÇÃO DE TRANSPORTE: ERRO VALIDANDO VIAGENS:    O CAMPO PESOCARGA NA RAÍZ DA OPERAÇÃO DE TRANSPORTE NÃO CONFERE COM O SOMATÓRIO DECLARADO NOS CAMPOS QUANTIDADEDAMERCADORIANOEMBARQUE DAS NOTAS FISCAIS COM MESMO NCM INFORMADO NA RAÍZ.

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PR' AND CTRC.Numconhecto = 220028                                      
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PR' AND CTRC.Numconhecto = 220029                                      
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


EXEC EmiteContrato 260000026159
EXEC ValidaCadastrosEmbarque 26038649

select PesoNF,* from NotasFiscaisConhecimento where ChaveAcessoNFe IN ('41241202025334000579550020002790281441031605','41241202025334000579550020002790291166826174')
--UPDATE NotasFiscaisConhecimento SET PesoNF = 24804.781 where SequencialConhecimento = 260000026159 and Sequencial = 1 --24804.780
--UPDATE NotasFiscaisConhecimento SET PesoNF = 75400 where SequencialConhecimento = 260000026159 and Sequencial = 2  -- 75400.000 / 0.00

select pesoL,pesoB,* from LONTANO_GSe.dbo.NFe where ID IN ('41241202025334000579550020002790281441031605','41241202025334000579550020002790291166826174')

SELECT QuantidadeSaida, * from ConhecimentosTransporte where Sequencial =  260000026159 ---24804.781
--UPDATE  ConhecimentosTransporte  set  QuantidadeSaida = 24804.780 where Sequencial =  260000026159


EXEC NotasFiscais_EmiteContrato 260000026159
SELECT PesoNF,* FROM NotasFiscaisConhecimento WHERE SequencialConhecimento = 260000026159

EXEC NotasFiscais_EmiteContrato 260000026160
SELECT PesoNF,* FROM NotasFiscaisConhecimento WHERE SequencialConhecimento = 260000026160

select pesoL,pesoB,* from LONTANO_GSe.dbo.NFe where ID IN ('41241202025334000579550020002790301387481952','41241202025334000579550020002790311640783254')

--UPDATE NotasFiscaisConhecimento SET PesoNF = 75.400 where SequencialConhecimento = 260000026160 and Sequencial = 2  -- 75400.000 / 0.00

EXEC VerificaCTe 10000026518
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 10000026518