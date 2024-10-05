use RODOMAIOR


SELECT * from RODOMAIOR_GSe.dbo.NFe where ID IN ('52240714796754001267550100002350101864490351', '52240714796754001267550100002350081810818067', '52240714796754001267550100002350091463190259',
'52240714796754001267550100002350131598205087')

SELECT TOP (200) NumFormulario,ct.CIOT,PF.ModeloDocumento,* from ConhecimentosTransporte CT
join PedidosFrete PF ON PF.CodPedidoFrete = CT.CodPedidoFrete

where NumFormulario <> 0 and   ct.CIOT is not null ORDER BY ct.DataCriacao desc

select IndEmissaoCartaFreteCTe,ModeloDocumento, * from PedidosFrete where CodPedidoFrete in ( 5003126,53000755)

SELECT TOP (200) NumFormulario,CIOT,* from ConhecimentosTransporte where CodPedidoFrete = 5003126

SELECT Propriedade,* from Veiculos where CodVeiculo = 424641

select * from ConhecimentosTransporte where Sequencial = 310000016045


SELECT CodFilial FROM RelatorioEmbarque WHERE (NumRelatorioEmbarque = 31005552)
SELECT EmissaoCTe,* FROM  ParametrosGerais WHERE (CodFilial = 'UBE') AND (ISNULL(EmissaoCTe, '') = 'S')
SELECT * from PedidosFrete WHERE (CodPedidoFrete = 31005096) AND (ModeloDocumento LIKE 'CT-e')

--SELECT MAX(NumFormulario) AS Numero FROM ConhecimentosTransporte



select TarifaFreteEmpresa,ValorTotalFrete, * from ConhecimentosTransporte where NumConhecto IN (10927,10929,10930 ,10931 ,10932 ,10952 ,10954 ,10955,10956,10963,10965,10909,10904,10906,10907,10911,10912,10913,10914,10915,10916,10917,10918
,10919,10922,10923,10924,10925,10926) and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1527.90 where  NumConhecto = 10927   and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1380 where  NumConhecto =  10929   and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1343 where  NumConhecto =  10930   and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1113.90 where  NumConhecto =  10931   and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1127.10 where  NumConhecto =  10932   and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1563.60 where  NumConhecto =  10952    and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1401.30 where  NumConhecto =  10954    and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1499.40 where  NumConhecto =  10955    and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1326.60 where  NumConhecto =  10956    and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1380.30 where  NumConhecto =  10963    and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1440.00 where  NumConhecto =  10965    and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1488.00 where  NumConhecto =  10909    and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1373.70 where  NumConhecto =  10904    and CodUF = 'MS' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 30 , ValorTotalFrete = 1623.90 where  NumConhecto =  10906    and CodUF = 'MS' and SerieConhecto = 'NE'



SELECT DISTINCT Pedagio,ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, CASE ISNULL((SELECT COUNT(NumeroNF) AS QtdeNF 
FROM NotasFiscaisConhecimento
WHERE SequencialConhecimento = ConhecimentosTransporte.Sequencial),0) WHEN 1 THEN NotasFiscaisConhecimento.NumeroNF WHEN 0 THEN NULL ELSE 'Várias' END AS NumNF, 
Veiculos.PlacaVeiculo, ConhecimentosTransporte.CodPais, ConhecimentosTransporte.CodUF, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.SerieConhecto, ConhecimentosTransporte.CodFilialEmitente, 
ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.NumFormulario, ConhecimentosTransporte.CodVeiculo, ConhecimentosTransporte.NumRelatorioEmbarque, ConhecimentosTransporte.CodPedidoFrete, ValorRetidoSestSenat,
ValorRetidoINSS, ValorIRRFMotorista, ConhecimentosTransporte.CodOrdemEmbarque, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodClienteEmitente, ConhecimentosTransporte.CodClienteDestinatario, 
ConhecimentosTransporte.CodClientePagto, ConhecimentosTransporte.CodRota, ConhecimentosTransporte.CodConsigRedesp, ConhecimentosTransporte.ValorNF, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.CodUnidadeMedida,
ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.UnidadeFrete, ConhecimentosTransporte.TotalFreteMotorista, 
ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.Pedagio, ConhecimentosTransporte.TarifaSEFAZ, ConhecimentosTransporte.BaseCalculoICMS, ConhecimentosTransporte.AliquotaICMSFrete, ConhecimentosTransporte.ValorICMSFrete,
ConhecimentosTransporte.ValorICMSMercadoria, ConhecimentosTransporte.DespesaAdubo, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.ValorLiquidoFrete, ConhecimentosTransporte.CodMoeda, 
ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.Gerado, ConhecimentosTransporte.CodUsuarioCriacao, ConhecimentosTransporte.CodFilialCriacao, 
ConhecimentosTransporte.DataCriacao, ConhecimentosTransporte.CodUsuarioAlteracao, ConhecimentosTransporte.CodFilialAlteracao, ConhecimentosTransporte.DataAlteracao, 
ConhecimentosTransporte.DiferencaFreteAgregado, ConhecimentosTransporte.ValorClassificacao, ConhecimentosTransporte.CodMotorista
FROM ConhecimentosTransporte 
LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo WHERE NumRelatorioEmbarque = 9004826 AND CodPedidoFrete = 2008721 ORDER BY ConhecimentosTransporte.Sequencial


SELECT COUNT(*) AS Registros FROM InfracaoTransito WHERE (CodContasPagar = 1421361) AND (CodCondutor IS NULL) AND (ISNULL(SemIdentCondutor, 'N') = 'N')
SELECT CodCondutor, SemIdentCondutor,* FROM InfracaoTransito WHERE (CodContasPagar = 1421361) AND (CodCondutor IS NULL) AND (ISNULL(SemIdentCondutor, 'N') = 'N')


SELECT CodUsuarioCriacao,CodFilialCriacao,DataCriacao,* from ContasPagar where CodContasPagar = 1423060

SELECT * from ContasPagar_log where CodContasPagar = 1423060


select * from ConhecimentosTransporte_log where SerieConhecto = 'NE' AND AcaoLog = 'E' ORDER BY DataLog desc
select * from Usuarios where CodUsuario = 11646

SELECT * from Fatura_Repom where ID = 68
SELECT * from Fatura_Repom_Itens where ID = 68

SELECT * from Fatura_Repom
SELECT * from Usuarios where CodUsuario = 12835

select * from RelacaoFretes where CodRelacaoFrete = 1103976
select * from RelacaoFretes_log where CodRelacaoFrete = 1103976

SELECT * from Usuarios where CodUsuario = 12466


EXEC MonitoraMDFe 30001875

select * from ContasPagar where ValorDocumento = 46432.66 -- 1423059 /1103975
--UPDATE  Fatura_Repom set CodContasPagar = 1423059, CodRelacaoFrete = 1103975  where ID = 68

select * from MovimentacaoBancaria where ValorMovimento = 46432.66