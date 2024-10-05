EXEC VerificaCTe 400000010606
select Status,* from LONTANO_GSe.dbo.CTe WHERE  Sequencial = 400000010606
--UPDATE LONTANO_GSe.dbo.CTe set Status = 1 WHERE  Sequencial = 400000010606
--DELETE from LONTANO_GSe.dbo.CTe_LOG WHERE ID = 22882271 and Sequencial = 400000010606

--SELECT DescOcorrencia, DescMotivo FROM MotivosCobranca WHERE (Ocorrencia = 2) AND (Motivo = 76)

--SELECT DescOcorrencia, DescMotivo, *FROM MotivosCobranca WHERE (Ocorrencia = 2) AND (Motivo = 76)

 

EXEC MonitoraMDFe 23058026
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1696050 
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '952240007335621', nProt = '952240007335621' where Sequencial = 1696050 and ID = 25174313 
--coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1696050

--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET cStat = 204 where Sequencial = 1696050 and ID = 25174313 


EXEC MonitoraMDFe 26037311
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1697166


SELECT * from ConhecimentosSubstituidos where 410000053151 IN (SeqCTRCOriginal,SeqCTRCSubstituto)
	
EXEC VerificaCTe 410000053070

EXEC VerificaCTe 410000053151

EXEC VerificaCTe 410000053152


select * from ConhecimentosTransporte where Sequencial IN( 410000053152,410000053070,410000053151)
select * from ConhecimentosTransporte_log where Sequencial = 410000053152

EXEC MonitoraMDFe 14007000

select * from LONTANO_GSe.dbo.Percurso_MDFe where Sequencial = 1697373

SELECT ufl.CodUFLimitrofe, uf.DescUF FROM UFsLimitrofes ufl INNER JOIN UnidadesFederacao uf ON ufl.CodUFLimitrofe = uf.CodUF WHERE (ufl.CodUF = 'GO')
SELECT p.SeqOrdem, p.CodUF, u.DescUF FROM OrdemEmbarque_Percurso p INNER JOIN UnidadesFederacao u ON u.CodUF = p.CodUF WHERE p.NumOrdemEmbarque = 14007000 ORDER BY SeqOrdem


select * from ordemEmbarque where NumOrdemEmbarque = 14007000
select * from ordemEmbarque_log where NumOrdemEmbarque = 14007000 order by datalog desc

exec monitoramdfe 14007000

--1º enviado 2024-07-29 20:06:18.753
--2º enviado 2024-07-30 14:21:31.697
select * from lontano_gse.dbo.mdfe_log where CodManifestoCarga in (1571633, 1572114) order by dhlog desc

SELECT ufl.CodUFLimitrofe, uf.DescUF FROM UFsLimitrofes ufl INNER JOIN UnidadesFederacao uf ON ufl.CodUFLimitrofe = uf.CodUF WHERE (ufl.CodUF = 'GO')
--Percurso gravado na Ordem 2024-07-29 20:07:25.270
SELECT p.SeqOrdem, p.CodUF, u.DescUF, * FROM OrdemEmbarque_Percurso p INNER JOIN UnidadesFederacao u ON u.CodUF = p.CodUF WHERE p.NumOrdemEmbarque = 14007000 ORDER BY p.SeqOrdem desc

EXEC VerificaCTe 220000077783
--UPDATE LONTANO_GSe.dbo.cte SET Status = 0 where Sequencial = 220000077783


SELECT   * from ConhecimentosTransporte where NumConhecto = 132111 and CodUF = 'SP'

SELECT ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.QuantChegFaturamento, ComplementoConhecimento.DataEntradaDesembarque, ComplementoConhecimento.DataSaidaDesembarque, ComplementoConhecimento.ToleranciaEstadia, 
ComplementoConhecimento.TempoEstadiaACobrar, ComplementoConhecimento.ValorEstadia, ComplementoConhecimento.IndFaturaEstadia, ComplementoConhecimento.IndQtdeEstadia, ComplementoConhecimento.IndPagtoEstadia, ConhecimentosTransporte.CodUF,
ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodClientePagto, ConhecimentosTransporte.CodPedidoFrete, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.CodRota, 
ConhecimentosTransporte.CodNaturezaCarga 
FROM ConhecimentosTransporte
LEFT OUTER JOIN ComplementoConhecimento ON ConhecimentosTransporte.Sequencial = ComplementoConhecimento.NumSeqConhecto WHERE NumConhecto = 132109
 

SELECT DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia  from ComplementoConhecimento  where NumSeqConhecto = 350000006129
--UPDATE  ComplementoConhecimento SET IndFaturaEstadia =  'A faturar'  where NumSeqConhecto = 350000006129 -- Faturado


select * from ConhecimentosTransporte where NumConhecto = 724208  and CodUF = 'MT'

	exec VerificaCTe 890000031839
exec Grava_CTe 890000031839
UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 890000031839


select ValorNF, SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 628818  and CodUF = 'GO' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set ValorNF = 87455.70 , SeguroAverbado  = 43.73 where NumConhecto = 628818  and CodUF = 'GO' and SerieConhecto = '0'