--#24314 - ALTERAÇÃO DE CIOT - 140822

SELECT CIOT,* from ConhecimentosTransporte where NumConhecto = 140822 and CodUF = 'SP' and SerieConhecto = '0'

SELECT TOP (1) codViagemPamcard, isnull(codViagemRepom, 0) as codViagemRepom FROM CartaFrete WHERE codViagemPamcard IS NOT NULL AND Sequencial = 350000008792 ORDER BY dataCriacao DESC
SELECT TOP(1) cfo.tipoOcorrencia, cfo.Erro, cfo.ConteudoXml 
FROM CartaFrete_Ocorrencia cfo 
INNER JOIN CartaFrete cf ON cf.Id = cfo.IdCartaFrete AND  cfo.DescricaoOcorrencia = 'CADASTRO FRETE' 
WHERE Sequencial = 350000008792 ORDER BY cfo.DataCriacao DESC

SELECT cfo.CodViagemPamcard, *
FROM ConhecimentosTransporte ctrc
INNER JOIN CartaFrete cf ON cf.Sequencial = ctrc.Sequencial 
INNER JOIN CartaFrete_Ocorrencia cfo ON cfo.IdCartaFrete = cf.Id AND cfo.DescricaoOcorrencia = 'CADASTRO FRETE' AND cfo.tipoOcorrencia = 'SUCESSO' AND cfo.CodAdmPagtoFrete = 12  WHERE CTRC.Sequencial = 350000008792

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 140822                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select *  from CartaFrete_Ocorrencia where IdCartaFrete = 1735004 and NumSeq = 30 
--UPDATE CartaFrete_Ocorrencia SET tipoOcorrencia =  'CANCELADA' where IdCartaFrete = 1735004 and NumSeq = 30  --SUCESSO
SELECT CIOT,* FROM OrdemEmbarque where NumOrdemEmbarque = 35010650
--UPDATE OrdemEmbarque SET CIOT = null where NumOrdemEmbarque = 35010650  -- REPOM


SELECT LiberaReemissaoCF, IndReemissaoCF, CodReemitenteCF, NumFormulario, *  FROM ConhecimentosTransporte WHERE (Sequencial = 350000008792)
--UPDATE ConhecimentosTransporte set  NumFormulario = 1360802, CodReemitenteCF = 14102 WHERE (Sequencial = 350000008792)
--UPDATE  ConhecimentosTransporte SET IndReemissaoCF = 'S'  WHERE (Sequencial = 350000008792)

SELECT LiberaReemissaoCF, IndReemissaoCF, CodReemitenteCF, NumFormulario, *  FROM ConhecimentosTransporte where NumFormulario <> 0 and CodReemitenteCF IS not null
