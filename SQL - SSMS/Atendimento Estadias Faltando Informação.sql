use Rodomaior

exec VerificaCTe 640000060462
--delete from Rodomaior_GSe.dbo.cte where Sequencial = 640000060462
--exec Grava_CTe 640000060462

select * from ConhecimentosTransporte where NumConhecto = 1934200 and CodUF = 'MS' -- 2
--UPDATE ConhecimentosTransporte set SerieConhecto = 1 where sequencial = 830000065520




select * from ConhecimentosTransporte where NumConhecto = 396380 and CodUF = 'MG'


SELECT Sequencial,CodUF,Numconhecto, TipoConhecimento, ModeloDocumento, * FROM ConhecimentosTransporte WHERE CodUF = 'GO' AND SerieConhecto = '0' AND Numconhecto = 62500 
select * from ComplementoConhecimento where NumSeqConhecto = 240000008030
select DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia  from ComplementoConhecimento where NumSeqConhecto = 240000008030
select DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia , TempoEstadiaACobrar,TempoEstadiaACobrar,   * from ComplementoConhecimento_Log where NumSeqConhecto = 240000008030 ORDER by DataLog desc
--update ComplementoConhecimento SET DataEntradaDesembarque ='2024-04-05 23:28:00.000',DataSaidaDesembarque='2024-04-07 05:31:00.000' ,ValorEstadia = 0.88, TempoEstadiaACobrar = '18:03'  where NumSeqConhecto = 30000158870


-- Exemplo
SELECT Sequencial,CodUF,Numconhecto, TipoConhecimento, ModeloDocumento, * FROM ConhecimentosTransporte WHERE CodUF = 'GO' AND SerieConhecto = '0' AND Numconhecto = 625208 
select * from ComplementoConhecimento where NumSeqConhecto = 280000180804
select DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia  from ComplementoConhecimento where NumSeqConhecto = 280000180804
select DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia , DataLog from ComplementoConhecimento_Log where NumSeqConhecto = 280000180804 ORDER by DataLog desc
--update ComplementoConhecimento SET DataEntradaDesembarque ='2024-05-18 16:01:00.000',DataSaidaDesembarque='2024-05-21 23:34:00.000' ,ValorEstadia =1.30  where NumSeqConhecto = 280000180804