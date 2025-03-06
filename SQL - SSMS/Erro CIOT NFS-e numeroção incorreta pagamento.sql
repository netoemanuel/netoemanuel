--REPOMFRETE: DOCUMENTO TIPO: NFSE /CÓDIGO: 424715 /SÉRIE: 2 /FILIAL:UBL NÃO INFORMADO.
--#25486 - ENC: #25457 - <AVISO> Novo ticket criado

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.*
FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '2' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 58593                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select  * from Usuarios where CodUsuario = 11156
--REPOMFRETE: DOCUMENTO TIPO: NFSE /CÓDIGO: 424715 /SÉRIE: 2 /FILIAL:UBL NÃO INFORMADO.
--verificar qual o numero enviado na hora de gerar o ciot 
-- TAG  "Documents" - "Number"
--PROVAVELMENTE VAI ESTAR DIFERENTE DO NUMERO DO PAGAMENTO, NESSE CASO DEVE ALTERAR PARA O NUMERO DA EMISSAO DO CIOT, APOSTA REGISTRAR O PAGAMENTO VOLTAR O CODIGO ATUAL (NUMCONHECTO)

--UPDATE ConhecimentosTransporte SET NumConhecto = 424715 WHERE Sequencial = 530000174804  --ALTERAR PARA ENVIADO NO CIOT
--UPDATE ConhecimentosTransporte SET NumConhecto = 58593 WHERE Sequencial = 530000174804 --VOLTAR O ATUAL