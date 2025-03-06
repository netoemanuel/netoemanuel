SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PA' AND CTRC.Numconhecto = 23245                                        
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC	


select * from ConhecimentosTransporte where SerieConhecto = '0' AND CodUF = 'MS' AND Numconhecto = 543511   

EXEC VerificaCTe 250000084409

--select * from ConhecimentosTransporte where SerieConhecto = '0' AND CodUF = 'MT' AND Numconhecto = 744837    
--EXEC MonitoraMDFe 87010589
----UPDATE LONTANO_GSe.DBO.MDFe SET Status = 0 WHERE Sequencial = 1781663


--select * from ConhecimentosTransporte where SerieConhecto = '0' AND CodUF = 'MT' AND Numconhecto = 744837    
--EXEC MonitoraMDFe 22095048
--UPDATE LONTANO_GSe.DBO.MDFe SET Status = 0 WHERE Sequencial = 1781777


select  top (50)* FROM CaramuruControle order BY DataCriacao desc

select Saldo,* from ContasReceber where CodContasReceber = 1597941  -- 9339.60
--UPDATE ContasReceber SET Saldo = 4669.65 where CodContasReceber = 1597941

select * from ConhecimentosTransporte where NumConhecto = 648451  and CodUF = 'GO' and SerieConhecto = '0'  --2025-01-17 15:43:00  / 2025-01-17 15:42:48.000
--UPDATE ConhecimentosTransporte set DataEmissao = '2025-01-17 15:43:00',HoraEmissao = '2025-01-17 15:42:48.000'  where NumConhecto = 648451  and CodUF = 'GO' and SerieConhecto = '0'

select * from LONTANO_GSe.dbo.CTe where Sequencial = 410000054560  --2025-01-17 15:42:48.000
--UPDATE  LONTANO_GSe.dbo.CTe  set dhEmi = GETDATE () where Sequencial = 410000054560  

