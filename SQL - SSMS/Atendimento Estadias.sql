SELECT Sequencial,CodUF,Numconhecto, TipoConhecimento, ModeloDocumento, * FROM ConhecimentosTransporte WHERE CodUF = 'GO' AND SerieConhecto = '0' AND Numconhecto = 629202   
SELECT * from ComplementoConhecimento where NumSeqConhecto = 30000160299
SELECT DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia  from ComplementoConhecimento  where NumSeqConhecto = 30000160299
SELECT DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia , DataLog from ComplementoConhecimento_Log where NumSeqConhecto = 30000160294 ORDER by DataLog desc
--update ComplementoConhecimento SET DataEntradaDesembarque ='2022-11-07 23:02:00.000',DataSaidaDesembarque='2022-11-09 10:08:00.000' ,ValorEstadia = 0.80  where NumSeqConhecto = 640000050458

----UPDATE ComplementoConhecimento SET IndFaturaEstadia = 'Faturado'  where NumSeqConhecto = 30000160294

blk

wtf  309
kill 309