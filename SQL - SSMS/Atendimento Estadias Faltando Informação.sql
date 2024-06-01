use LONTANO

exec VerificaCTe 640000060462
--delete from LONTANO_GSe.dbo.cte where Sequencial = 640000060462
--exec Grava_CTe 640000060462

select * from ConhecimentosTransporte where NumConhecto = 1934200 and CodUF = 'MS' -- 2
--UPDATE ConhecimentosTransporte set SerieConhecto = 1 where sequencial = 830000065520




select * from ConhecimentosTransporte where NumConhecto = 396380 and CodUF = 'MG'


SELECT Sequencial,CodUF,Numconhecto, TipoConhecimento, ModeloDocumento, * FROM ConhecimentosTransporte WHERE CodUF = 'GO' AND SerieConhecto = '0' AND Numconhecto = 619976 
select * from ComplementoConhecimento where NumSeqConhecto = 310000097636
select DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia  from ComplementoConhecimento where NumSeqConhecto = 310000097636
select DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia , TempoEstadiaACobrar,TempoEstadiaACobrar,   * from ComplementoConhecimento_Log where NumSeqConhecto = 310000097636 ORDER by DataLog desc
--update ComplementoConhecimento SET DataEntradaDesembarque ='2024-04-02 23:34:00.000',DataSaidaDesembarque='2024-04-02 23:34:00.000' ,ValorEstadia = 1.20, TempoEstadiaACobrar = '36:16'  where NumSeqConhecto = 310000097636


-- Exemplo
SELECT Sequencial,CodUF,Numconhecto, TipoConhecimento, ModeloDocumento, * FROM ConhecimentosTransporte WHERE CodUF = 'PR' AND SerieConhecto = '0' AND Numconhecto = 172990
select * from ComplementoConhecimento where NumSeqConhecto = 640000052287
select DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia  from ComplementoConhecimento where NumSeqConhecto = 640000052287
select DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia , DataLog from ComplementoConhecimento_Log where NumSeqConhecto = 640000052287 ORDER by DataLog desc
------update ComplementoConhecimento SET DataEntradaDesembarque ='2023-03-18 14:28:00.000',DataSaidaDesembarque='2023-03-22 08:49:00.000' ,ValorEstadia =1.15  where NumSeqConhecto = 640000052287