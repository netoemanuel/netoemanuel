use RODOMAIOR



EXEC MonitoraMDFe 59000472
--UPDATE RODOMAIOR_GSe.dbo.mdfe SET Status =0 where Sequencial = 613783

select top (100)* from RODOMAIOR_GSe.dbo.tblLog_operacao where NM_Metodo = 'MDFeRecepcao' order BY DT_Hs desc

SELECT ValorAdiantamento, * from ConhecimentosTransporte where NumConhecto = 57614 and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte SET ValorAdiantamento = 7900.00 where NumConhecto = 57614 and CodUF = 'MT' and SerieConhecto = '0'

select * FROM Usuarios where NomeUsuario LIKE 'Elias%'

--51240711595217000299580040006756891006942000][NroProtocolo:951240008502696]
exec monitoramdfe 51015855

exec monitoramdfe 95005321
--delete FROM RODOMAIOR_GSe.dbo.MDFe where Sequencial = 614164
--UPDATE RODOMAIOR_GSe.dbo.mdfe SET Status =0 where Sequencial = 614059


exec monitoramdfe 69013925
--delete FROM RODOMAIOR_GSe.dbo.MDFe where Sequencial = 614075
--UPDATE RODOMAIOR_GSe.dbo.mdfe SET Status =0 where Sequencial = 614059


SELECT * from ConhecimentosTransporte where NumConhecto = 36947 and CodUF = 'MT'

exec VerificaCTe 570000003962
SELECT * from RODOMAIOR_GSe.dbo.Eventos_CTe where Sequencial_CTe = 570000003962


SELECT * from ConhecimentosTransporte where NumConhecto = 202819 and CodUF = 'MS'
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 10000026627
EXEC VerificaCTe 10000026627
--UPDATE RODOMAIOR_GSe.dbo.CTe SET Status = Status WHERE Sequencial = 10000026627
SELECT * from ConhecimentosTransporte where NumConhecto = 202817 and CodUF = 'MS'
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 150000033920 --and Id = 1112640 
--DELETE from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 150000033920 and Id = 1112640 

EXEC VerificaCTe 150000033920
EXEC MonitoraMDFe 15038084

exec monitoramdfe 51015855


select * from RODOMAIOR_GSe.dbo.AverbacaoFrete  where Tipo = 'MDFe' ORDER BY DataCriacao DESC where SequencialCTe = 40000040701
EXEC VerificaCTe 10000026627

exec monitoramdfe 51015860
--delete FROM RODOMAIOR_GSe.dbo.MDFe where Sequencial = 614142

SELECT * from Motoristas where CPF = '995.260.341-04'
SELECT * from Motoristas where CPF = '008.854.619-59'
select * from OrdemEmbarque where NumOrdemEmbarque = 53007819 --13000898 / 2001205
--UPDATE  OrdemEmbarque set CodMotorista = 1057991 where NumOrdemEmbarque = 53007819

SELECT ValorAdiantamento,Saldo,* from ConhecimentosTransporte where CodOrdemEmbarque = 53007819
EXEC MonitoraMDFe 53007819

SELECT * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 530000006191 and Id = 1113102
--DELETE from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 530000006191 and Id = 1113102


SELECT ValorAdiantamento,Saldo,* from ConhecimentosTransporte where NumConhecto = 57803 and CodUF = 'MT' and SerieConhecto = '0' --8800.00
--UPDATE ConhecimentosTransporte set ValorAdiantamento = 11400.00 where NumConhecto = 57803 and CodUF = 'MT' and SerieConhecto = '0'

SELECT * from ConhecimentosTransporte where NumConhecto = 86955 and CodUF = 'PR' and SerieConhecto = '0' 

EXEC MonitoraMDFe 41030683

SELECT nProt,* from RODOMAIOR_GSe.dbo.MDFe_LOG where Sequencial = 614024
--UPDATE RODOMAIOR_GSe.dbo.MDFe_LOG set nProt = 941240012984490 where Sequencial = 614024


EXEC MonitoraMDFe 97005978
SELECT * from ConhecimentosTransporte where CodOrdemEmbarque = 97005978
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 970000005069
--delete from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 970000005069 and Id = 1113214

select * from Veiculos where PlacaVeiculo = 'JZU5G53'
SELECT * from Motoristas where CPF = '450.627.300-15'
select * from OrdemEmbarque where NumOrdemEmbarque = 96005828 --193141 / 96000632
--UPDATE  OrdemEmbarque set CodMotorista = 96001080, CodVeiculo = 196055 where NumOrdemEmbarque = 96005828

	SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
	INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
	INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
	inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
	LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
	WHERE CTRC.SerieConhecto = 'E' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 8332                                 
	ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC
