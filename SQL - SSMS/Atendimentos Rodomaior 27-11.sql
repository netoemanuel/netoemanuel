select top (50) * from CaramuruControle order BY DataCriacao desc

-- 'Só habilitar essa função nas mesmas condições em que funciona a reemissão do DACTE.
SELECT IndReemissaoCF,* FROM ConhecimentosTransporte WHERE NumConhecto = 117260 and CodUF = 'GO'

SELECT  * FROM ConhecimentosTransporte_log WHERE NumConhecto = 117260 and CodUF = 'GO'


select IndImpressao,* from RODOMAIOR_GSe.dbo.CTe_Dacte where Sequencial = 750000010688



SELECT * from RODOMAIOR_GSe.dbo.NFe where ID = '15241160498706037310550500000438541058426746'

select * from CaramuruControle where ID  like '%6001865464%' 

--DELETE from CaramuruControle where ID  like '%6001865464%' 6001908523


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 88355                                     
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete	=1070322

select * from ContasPagar where CodContasPagar = 66003330
--UPDATE ContasPagar SET  ValorDocumento = 53657.08, ValorPagar = 53657.08, Saldo = 0.00  where  CodContasPagar = 66003330
select * from ContasPagar_log where CodContasPagar = 66003330