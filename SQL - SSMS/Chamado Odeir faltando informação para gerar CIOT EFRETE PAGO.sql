 SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 642526                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


EXEC EmiteContrato 730000136093


select TOP(10)* from ComplementoConhecimento order BY DataCr-iacao desc
select * from ComplementoConhecimento where NumSeqConhecto IN(280000184366,730000136093)
--UPDATE ComplementoConhecimento set ToleranciaQuebra =0.25, TipoToleranciaQuebra= 'Total',IndQtdeEstadia = 'S',ValorEstadia = NULL  where NumSeqConhecto IN(730000136093)

select * from ConhecimentosComplementados where 730000136093 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

--INSERT INTO ComplementoConhecimento VALUES (730000136093,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.25,'Diferença',NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,24,NULL,14663,'CG','2024-09-27 10:29:10.000',NULL,NULL,NULL,NULL)