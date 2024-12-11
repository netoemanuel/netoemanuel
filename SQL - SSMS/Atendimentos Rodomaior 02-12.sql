select * FROM CaramuruControle order BY DataCriacao desc



EXEC MonitoraMDFe 4045827
select Status, * from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 657678 
--UPDATE RODOMAIOR_GSe.dbo.MDFe SET Status = 0 where Sequencial = 657678
--UPDATE RODOMAIOR_GSe.dbo.MDFe_LOG SET nRec = '951240019630451', nProt = '951240019630451' where Sequencial = 657678 and ID = 7158895 
--coloca cstat = 204 e status do mdfe = 2 TABELA MDFe_LOG
--UPDATE RODOMAIOR_GSe.dbo.MDFe_LOG SET Status = 2, cstat = 204 where Sequencial = 657678 and ID = 7158895 

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PR' AND CTRC.Numconhecto = 91900                                   
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * from CartaFrete_Parcela where IdCartaFrete = 1077920