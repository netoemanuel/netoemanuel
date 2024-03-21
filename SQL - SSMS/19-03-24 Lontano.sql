use LONTANO


exec VerificaCTe 50000017097

select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 50000017097 and id BETWEEN  22606483 and 22607133
--delete from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 50000017097 and id BETWEEN  22606483 and 22607133
--exec Grava_CTe 50000017097

select * from ConhecimentosTransporte where NumConhecto = 159857 and CodUF = 'PR' and SerieConhecto = '1'
--UPDATE ConhecimentosTransporte set CodFilialEmitente = 'CAM' where NumConhecto = 159857 and CodUF = 'PR' and SerieConhecto = '1'

select * from ConhecimentosTransporte_log where NumConhecto = 13252 and CodUF = 'MS' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte_log set CodOrdemEmbarque = Null, CodPedidoFrete = 1001756, NumRelatorioEmbarque = 52007981  where NumConhecto = 13252 and CodUF = 'MS' and SerieConhecto = '2'
select top(10)* from OrdemEmbarque order by DataCriacao asc


