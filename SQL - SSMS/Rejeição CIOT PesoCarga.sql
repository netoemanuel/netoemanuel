--O CAMPO PESOCARGA NA RA�Z DA OPERA��O DE TRANSPORTE N�O CONFERE
--SISTEMA EFRETE (WWW.EFRETE.COM.BR): [NEG�CIO] (PROTOCOLO: 490.895.433) ERRO ADICIONANDO OPERA��O DE TRANSPORTE: ERRO VALIDANDO VIAGENS:    O CAMPO PESOCARGA NA RA�Z DA OPERA��O DE TRANSPORTE N�O CONFERE COM O SOMAT�RIO DECLARADO NOS CAMPOS QUANTIDADEDAMERCADORIANOEMBARQUE DAS NOTAS FISCAIS COM MESMO NCM INFORMADO NA RA�Z.

SELECT TOP(100) O.IdCartaFrete, CTRC.Pedagio, oe.CIOT,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PA' AND CTRC.Numconhecto = 4673   
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta�DESC

exec EmiteContrato 10000026689 ----carga_peso

--O CAMPO PESOCARGA NA RA�Z DA OPERA��O DE TRANSPORTE N�O CONFERE
--QUANDO O VALOR DA 3 CASA DESCIMAL ESTA DIFERENTE DE 0 ESTA DANDO REJEI��O NA EFRETE NA HORA DE GERAR O CIOT
--FAZER O UPDATE NA TERCEIRA CASA DECIMAL PARA ZERO
select QuantidadeSaida, * from ConhecimentosTransporte where sequencial = 10000026689
--update ConhecimentosTransporte set QuantidadeSaida = 7500.000 where sequencial = 10000026689  -- 27443.012

select PesoNF,* from NotasFiscaisConhecimento where SequencialConhecimento = 10000026689



