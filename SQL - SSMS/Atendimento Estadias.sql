SELECT Sequencial,CodUF,Numconhecto, TipoConhecimento, ModeloDocumento,QuantidadeChegada, * FROM ConhecimentosTransporte WHERE CodUF = 'MT' AND SerieConhecto = '0' AND Numconhecto = 741333   
SELECT  * from ComplementoConhecimento where NumSeqConhecto = 20000157161
SELECT DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia,TempoEstadiaACobrar, *  from ComplementoConhecimento  where NumSeqConhecto = 100000084190
SELECT DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia, DataLog, TempoEstadiaACobrar from ComplementoConhecimento_Log where NumSeqConhecto = 100000084190 ORDER by DataLog desc
--update ComplementoConhecimento SET DataEntradaDesembarque ='2024-12-09 07:00:00.000',DataSaidaDesembarque='2024-12-12 08:42:00.000' ,ValorEstadia =0.30,TempoEstadiaACobrar = '61:42', IndFaturaEstadia = 'Faturado'  where NumSeqConhecto = 100000084190

----UPDATE ComplementoConhecimento SET IndFaturaEstadia = 'Faturado'  where NumSeqConhecto = 30000160294
--UPDATE ComplementoConhecimento SET IndFaturaEstadia =  null where NumSeqConhecto = 730000131616


--UPDATE ConhecimentosTransporte set QuantidadeChegada = 25000.000  WHERE CodUF = 'MT' AND SerieConhecto = '0' AND Numconhecto = 733707   
