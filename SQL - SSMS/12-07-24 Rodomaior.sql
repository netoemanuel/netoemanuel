use RODOMAIOR


select QuantidadeSaida,TotalFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 8690 and CodUF = 'GO' and SerieConhecto = 'E' -- 31980.000 / 1567.02 (Saida * Tar.Emp) / 1439.10
--UPDATE  ConhecimentosTransporte SET QuantidadeSaida = 32000, ValorTotalFrete = 1568.00, TarifaFreteMotorista = 45.00,TotalFreteMotorista = 1440.00 where NumConhecto = 8690 and CodUF = 'GO' and SerieConhecto = 'E'

EXEC MonitoraMDFe 97005954
--UPDATE RODOMAIOR_GSe.dbo.mdfe SET Status = 9 WHERE Sequencial = 614021



exec monitoramdfe 97006112

--EXEC Rodomaior_GSe.dbo.GeraMDFeViagem 97006112, 12369, 'CG'

SELECT * from CaramuruControle where ID = '6001865464'
SELECT * from CaramuruControle where ID = '6001865449'



select * from Rodomaior_GSe.dbo.Eventos_MDFe WHERE (Sequencial_MDFe = 614025) AND (tpEvento = 110112) AND (Status <> 2)
EXEC MonitoraMDFe 18016509

EXEC MonitoraMDFe 18016449
SELECT nProt,* from RODOMAIOR_GSe.dbo.MDFe_LOG where Sequencial = 614025
--UPDATE  RODOMAIOR_GSe.dbo.MDFe_LOG set nProt = 951240008502724 where Sequencial = 614025

EXEC MonitoraMDFe 79004450

select TarifaFreteMotorista,TotalFreteMotorista,TarifaFreteEmpresa,ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto = 2951 and CodUF = 'MT' and SerieConhecto = 'NE' --  38 / 1481.24
--UPDATE  ConhecimentosTransporte SET TarifaFreteMotorista = 38.00, TotalFreteMotorista = 1481.24, TarifaFreteEmpresa = 42, ValorTotalFrete = 1637.16   where NumConhecto = 2951 and CodUF = 'MT' and SerieConhecto = 'NE' 


--SELECT Situacao, *  from OrdemEmbarque where NumOrdemEmbarque = 
--select * from dbo.ConhecimentosTerceiro

select * from CaramuruControle where ID = '6001866487'

SELECT * FROM Motoristas where CPF = '090.220.757-10' -- 97000871
SELECT CodMotorista,* from OrdemEmbarque where NumOrdemEmbarque = 96006184  -- 96000667
--UPDATE  OrdemEmbarque set CodMotorista = 97000871  where NumOrdemEmbarque = 96006184  


EXEC MonitoraMDFe 80009849
--DELETE FROM RODOMAIOR_GSe.dbo.MDFe_LOG where Sequencial = 613988 and ID = 6933527
SELECT nProt, * from RODOMAIOR_GSe.dbo.MDFe_LOG where Sequencial = 613988
--UPDATE RODOMAIOR_GSe.dbo.MDFe_LOG set nProt = 952240005957678, nRec = 952240005957678 where Sequencial = 613988


SELECT * FROM ContasPagar WHERE (CodContasPagar = 1421136)
--UPDATE ContasPagar set  ValorDocumento = (ValorDocumento + 0.01), ValorPagar = (ValorPagar + 0.01) WHERE (CodContasPagar = 1421136) -- 513021.69


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 116383                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


select ValorAdiantamento,* from ConhecimentosTransporte where NumConhecto = 84595 and CodUF = 'MG' and SerieConhecto = '0' --
--UPDATE  ConhecimentosTransporte SET ValorAdiantamento = 3900.00 where NumConhecto = 84595 and CodUF = 'MG' and SerieConhecto = '0' --



blk