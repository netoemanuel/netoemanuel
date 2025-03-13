SELECT Sequencial,CodUF,Numconhecto, TipoConhecimento, ModeloDocumento,QuantidadeChegada, * FROM ConhecimentosTransporte WHERE CodUF = 'MG' AND SerieConhecto = '0' AND Numconhecto = 420343    
SELECT  * from ComplementoConhecimento where NumSeqConhecto = 530000172448
SELECT DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia,TempoEstadiaACobrar, *  from ComplementoConhecimento  where NumSeqConhecto = 530000172448
SELECT DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia, DataLog, TempoEstadiaACobrar from ComplementoConhecimento_Log where NumSeqConhecto = 100000084190 ORDER by DataLog desc
--update ComplementoConhecimento SET DataEntradaDesembarque = '2024-11-21 08:00:00.000',DataSaidaDesembarque = '2024-11-25 05:26:00.000' ,ValorEstadia = 0.80,TempoEstadiaACobrar = '81:26', IndFaturaEstadia = 'Faturado'  where NumSeqConhecto = 530000172448

----UPDATE ComplementoConhecimento SET IndFaturaEstadia = 'Faturado'  where NumSeqConhecto = 30000160294
--UPDATE ComplementoConhecimento SET IndFaturaEstadia =  null where NumSeqConhecto = 730000131616


--UPDATE ConhecimentosTransporte set QuantidadeChegada = 25000.000  WHERE CodUF = 'MT' AND SerieConhecto = '0' AND Numconhecto = 733707   

--#26298 - Ajustar Marcações CTE 420343
--DataEntradaDesembarque	DataSaidaDesembarque	IndFaturaEstadia	IndPagtoEstadia	IndQtdeEstadia	ValorEstadia	TempoEstadiaACobrar	NumSeqConhecto	PrevsaoPagtoAdto	DataPagtoAdto	CodFornecedorAdto	ChegadaDoctoAdto	ValorSaldoPrevisto	DataPagtoSaldo	CodFornecedorSaldoFrete	ValorSaldoPago	ValorQuebraDescontado	ToleranciaQuebra	TipoToleranciaQuebra	ValorPagtoAMenor	ChegadaCartaFrete	DataEntradaDesembarque	DataSaidaDesembarque	TempoEstadiaACobrar	ValorEstadia	IndFaturaEstadia	IndPagtoEstadia	ToleranciaEstadia	IndQtdeEstadia	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	ObservacaoComplemento
--2024-11-21 08:00:00.000	2024-11-25 19:04:00.000	Faturado	Paga	S	0.80	95:04	530000172448	NULL	NULL	NULL	NULL	NULL	2024-11-26 00:00:00	NULL	NULL	NULL	0.25	Diferença	NULL	NULL	2024-11-21 08:00:00.000	2024-11-25 19:04:00.000	95:04	0.80	Faturado	Paga	12	S	13160	UBL	2024-11-26 07:09:57.000	15425	CG	2025-02-04 16:02:26.000	NULL
