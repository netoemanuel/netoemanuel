SELECT Sequencial,CodUF,Numconhecto, TipoConhecimento, ModeloDocumento, * FROM ConhecimentosTransporte WHERE CodUF = 'MT' AND SerieConhecto = '0' AND Numconhecto = 679145   
SELECT * from ComplementoConhecimento where NumSeqConhecto = 730000131616
SELECT DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia  from ComplementoConhecimento  where NumSeqConhecto = 730000131616
SELECT DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia , DataLog from ComplementoConhecimento_Log where NumSeqConhecto = 730000131616 ORDER by DataLog desc
--update ComplementoConhecimento SET DataEntradaDesembarque ='2022-11-07 23:02:00.000',DataSaidaDesembarque='2022-11-09 10:08:00.000' ,ValorEstadia = 0.80  where NumSeqConhecto = 730000131616

----UPDATE ComplementoConhecimento SET IndFaturaEstadia = 'Faturado'  where NumSeqConhecto = 30000160294
--UPDATE ComplementoConhecimento SET IndFaturaEstadia =  null where NumSeqConhecto = 730000131616
