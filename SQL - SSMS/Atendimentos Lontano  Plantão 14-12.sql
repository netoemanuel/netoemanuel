SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'mt' AND CTRC.Numconhecto = 741698                                     
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

--9042649
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Repom Sa					752020453					5						1					381.60			2025-01-01 00:00:00


SELECT EmpresaValePedagio, NumCartaoValePedagio,TipoDispositivoValePedagio, RotaSemParar,ValorPedagioSemParar,DataContratoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 9042649  
--update OrdemEmbarque set  RotaSemParar = NULL, ValorPedagioSemParar = NULL where  NumOrdemEmbarque = 9042649 


SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete	=1725314 and NumSeq = 22
----UPDATE CartaFrete_Ocorrencia SET tipoOcorrencia = 'SUCESSO', Erro = '0 - OPERAÇÃO REALIZADA COM SUCESSO'  WHERE IdCartaFrete	=1725314 and NumSeq = 22  --SUCESSO / 0 - OPERAÇÃO REALIZADA COM SUCESSO


--SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete	=1725314 and tipoOcorrencia = 'ERRO'  -- 29 / 34 / 39 numseq

--UPDATE CartaFrete_Ocorrencia SET tipoOcorrencia = 'ERRO' WHERE IdCartaFrete=1725314 and NumSeq IN( 29, 34, 39) --ERRO

--UPDATE CartaFrete_Ocorrencia SET tipoOcorrencia = 'SUCESSO' WHERE IdCartaFrete=1725314 and NumSeq IN( 27, 32, 37)  --SUCESSO

--UPDATE CartaFrete_Ocorrencia SET tipoOcorrencia = 'ENVIO' WHERE IdCartaFrete=1725314 and NumSeq IN( 26, 31, 36) -- ENVIO

--UPDATE CartaFrete_Ocorrencia SET tipoOcorrencia = 'ENVIO' WHERE IdCartaFrete=1725314 and NumSeq IN( 30,33, 35, 38) -- ENVIO

SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete	=1725314 and NumSeq > 29
delete FROM CartaFrete_Ocorrencia WHERE IdCartaFrete	=1725314 and NumSeq > 29