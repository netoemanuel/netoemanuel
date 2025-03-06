SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 424811                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from CartaFrete_Parcela where IdCartaFrete = 1751897
--UPDATE  CartaFrete_Parcela SET Pago = 'S' where IdCartaFrete = 1751897 and NumeroClienteParcela = 1


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 424827                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from CartaFrete_Parcela where IdCartaFrete = 1752019
--UPDATE  CartaFrete_Parcela SET Pago = 'S' where IdCartaFrete = 1752019 and NumeroClienteParcela = 1


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'DF' AND CTRC.Numconhecto = 18468                                            
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from CartaFrete_Parcela where IdCartaFrete = 1752256
--UPDATE  CartaFrete_Parcela SET Pago = 'S' where IdCartaFrete = 1752256 and NumeroClienteParcela = 1


select * from CaramuruControle order by DataCriacao desc


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 527921                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * from Programas where CodPrograma in ('ComplementoMotorista','OcorrenciasMotorista')

--UPDATE Programas set NomePrograma = 'Motoristas (Guia 2) - Complemento' where  CodPrograma in ('ComplementoMotorista') -- Motoristas (Guia 3) - Complemento
--UPDATE Programas set NomePrograma = 'Motoristas (Guia 3) - Ocorrências' where  CodPrograma in ('OcorrenciasMotorista') -- Motoristas (Guia 2) - Ocorrências

SELECT * FROM PermissoesAcesso where CodPrograma = 'WEB_ConsultarCTe' order BY DataCriacao desc



SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 747291                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from CartaFrete_Parcela where IdCartaFrete = 1752371
--UPDATE  CartaFrete_Parcela SET Pago = 'S' where IdCartaFrete = 1752371 and NumeroClienteParcela = 1


SELECT ValorICMSFrete,* from ConhecimentosTransporte where NumConhecto = 90999  and CodUF = 'MT' AND SerieConhecto = '2'
--UPDATE ConhecimentosTransporte  set ValorICMSFrete = 15512.52  where NumConhecto = 90999  and CodUF = 'MT' AND SerieConhecto = '2'

SELECT ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto in(91349) and CodUF = 'MT' AND SerieConhecto = '2'
--UPDATE ConhecimentosTransporte  set ValorTotalFrete = 9827.30   where NumConhecto = 91349  and CodUF = 'MT' AND SerieConhecto = '2'

SELECT ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto in(91350 ) and CodUF = 'MT' AND SerieConhecto = '2'
--UPDATE ConhecimentosTransporte  set ValorTotalFrete = 17678.80   where NumConhecto = 91350   and CodUF = 'MT' AND SerieConhecto = '2'

SELECT ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto in(91379) and CodUF = 'MT' AND SerieConhecto = '2'
--UPDATE ConhecimentosTransporte  set ValorTotalFrete = 48800.00   where NumConhecto = 91379   and CodUF = 'MT' AND SerieConhecto = '2'

SELECT ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto in(90942) and CodUF = 'MT' AND SerieConhecto = '2'
--UPDATE ConhecimentosTransporte  set ValorTotalFrete = 12539.88   where NumConhecto = 90942   and CodUF = 'MT' AND SerieConhecto = '2'

SELECT ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto in(90991) and CodUF = 'MT' AND SerieConhecto = '2'
--UPDATE ConhecimentosTransporte  set ValorTotalFrete = 74028.84   where NumConhecto = 90991   and CodUF = 'MT' AND SerieConhecto = '2'

SELECT ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto in(90999) and CodUF = 'MT' AND SerieConhecto = '2'
--UPDATE ConhecimentosTransporte  set ValorTotalFrete = 310250.46   where NumConhecto = 90999   and CodUF = 'MT' AND SerieConhecto = '2'

SELECT ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto in(424899 ) and CodUF = 'MG' AND SerieConhecto = '0'
EXEC VerificaCTe 300000056769
--EXEC  Grava_CTe 300000056769


select * from ConhecimentosCliente where SequencialConhecimento = 300000056769
--DELETE  from ConhecimentosCliente where SequencialConhecimento = 300000056769