use RODOMAIOR

SELECT QuantidadeSaida, ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto = 3589 and CodUF = 'MT' and SerieConhecto = 'NE' -- 49980.000 / 1799.28
--UPDATE ConhecimentosTransporte SET QuantidadeSaida = 48980.000, ValorTotalFrete = 1763.28  where NumConhecto = 3589 and CodUF = 'MT' and SerieConhecto = 'NE'

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 61126                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

EXEC MonitoraMDFe 53008932
exec MonitoraMDFe 95005473

SELECT * FROM MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 95005473
--UPDATE MDFeViagem_OrdemEmbarque set NumOrdemMDFeEspecifico= null  where NumOrdemEmbarque = 95005473

--DELETE MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 95005473
--SeqViagem	NumOrdemEmbarque	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	NumOrdemMDFeEspecifico
--721611	95005473	12318	ANT	2024-08-27 16:35:02.333	NULL	NULL	NULL	NULL
--721616	95005473	12318	ANT	2024-08-27 16:45:00.260	NULL	NULL	NULL	95005474
--INSERT INTO MDFeViagem_OrdemEmbarque VALUES (721611,	95005473,	12318,	'ANT',	'2024-08-27 16:35:02.333',	NULL	,NULL	,NULL	,95005474)


--EXEC Rodomaior_GSe.dbo.GeraMDFeViagem_ESP 95005473, 12451, 'CG'
--exec Grava_MDFe 95005473


--exec Grava_MDFe 95005473
select CodOrdemMDFE,* from ConhecimentosTransporte where CodOrdemEmbarque in ( 95005473,95005474)  --24003637
--UPDATE ConhecimentosTransporte set CodOrdemMDFE = null where Sequencial = 950000005478
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 950000005478
select * from RODOMAIOR_GSe.dbo.Seguro_MDFe where SeqConhecto = 950000005478

--EXEC Rodomaior_GSe.dbo.GeraMDFeViagem_ESP 95005473, 12451, 'CG'
--exec Grava_MDFe 95005473

exec MonitoraMDFe   95005473

exec VerificaCTe  950000005478
exec VerificaCTe  950000005480
exec VerificaCTe 950000005477
exec VerificaCTe 950000005479

--EXEC Rodomaior_GSe.dbo.GeraMDFeViagem_ESP 24003637, 12451, 'CG'
--exec Grava_MDFe 24003637

select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe in (950000005476,950000005478)
exec MASTER.dbo.ProcuraObjetos 'Rodomaior', 'TemMDFe_ESP', 'Tudo'

select CodOrdemMDFE,* from ConhecimentosTransporte where NumConhecto =86424 and CodUF = 'MG'
EXEC VerificaCTe 780000004387
SELECT * from ConhecimentosSubstituidos where 780000004387 in (SeqCTRCOriginal,SeqCTRCSubstituto)


exec MASTER.dbo.ProcuraObjetos 'Rodomaior', 'EDI', 'Tudo'

select saldo,* from ContasReceber where CodContasReceber = 1185857 -- 1523.40
--UPDATE  ContasReceber set saldo = 0.00 where CodContasReceber = 1185857
SELECT * from MovimentosCaixa where CodMovCaixa = 101276243
--UPDATE MovimentosCaixa SET Gerado = 'N' where CodMovCaixa = 101276243



