--SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
--	INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
--	INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
--	inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
--	LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
--	WHERE CTRC.SerieConhecto = '2' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 65235                                 
--	ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from ConhecimentosTransporte where NumConhecto in (65235) and CodUF = 'GO' AND SerieConhecto = '2'  --
--UPDATE ConhecimentosTransporte SET NumConhecto = 632697  WHERE Sequencial = 30000160991  -- antigo
--UPDATE ConhecimentosTransporte SET NumConhecto = 65235  WHERE Sequencial = 30000160991  -- novo

select * FROM PermissoesAcesso where CodPrograma = 'TotalizarFreteEmpresa' order BY DataCriacao desc --AND CodUsuario = 14102
--INSERT PermissoesAcesso (CodUsuario,CodPrograma,TipoInclusao,TipoAlteracao,TipoExclusao,TipoConsulta,TipoImprimir,TipoEspecial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,CodUsuarioDuplicado)
--select 13283,'TotalizarFreteEmpresa','N','N','N','N','N','S',14102,'CG',getdate(),NULL,NULL,NULL,NULL

EXEC VerificaCTe 560000030305
EXEC MonitoraMDFe 91061362
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1687391

select * from ConhecimentosTransporte where NumConhecto in (529122) and CodUF = 'MS' AND SerieConhecto = '0' 
EXEC VerificaCTe 780000023695
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial = 780000023695
--DELETE FROM LONTANO_GSe.dbo.CTe_LOG WHERE Sequencial = 780000023695 and ID = 22854517