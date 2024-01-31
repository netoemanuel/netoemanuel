use LONTANO

--=================================================================

--exec VerificaCTe 100000080547
----UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 100000080547

--exec VerificaCTe 260000023150
----UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 260000023150

--exec VerificaCTe 220000070728
----UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 220000070728

--exec VerificaCTe 220000070729
----UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 220000070729
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select * from Programas where CodPrograma like '%importar%'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select * from ConhecimentosTransporte where NumConhecto = 391990 and CodUF = 'MG'
----antigo
--select * from Veiculos where CodVeiculo = 493373
--select * from ConjuntosVeiculo where CodVeiculo = 493373
----novo
--select * from Veiculos where CodVeiculo = 489382
--select * from ConjuntosVeiculo where CodVeiculo = 489382
----update ConjuntosVeiculo set CodVeiculoAdicional1 = 480466 , CodVeiculoAdicional2 = 480467 , CodVeiculoAdicional3 = 480468  where CodVeiculo = 489382
----CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj	Eixos
----489382	2	246764	246991	236691	NULL	14102	CG	2023-10-27 08:29:42.510	NULL	NULL	NULL	3	NULL
--exec MonitoraMDFe 27078929
----Rejeição: Existe MDF-e não encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe Não Encerrada:31231011455829000529580050001839861014381327][NroProtocolo:931230019122938]
----UPDATE LONTANO_GSe.dbo.MDFe set Status = 0 where Sequencial = 1557876
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SELECT * FROM ChequesEmitidos
--WHERE (CodFilial = 'CG') 
--AND (CodContaBancaria = 63) --order by DataEmissao desc
--AND (NumeroCheque >= 477814 
--AND NumeroCheque <= 477814) 
--AND (SituacaoCheque = 'A Emitir')
--select * from ChequesEmitidos where Sequencial = 550000005407
----UPDATE ChequesEmitidos set SituacaoCheque = 'A Emitir', IndicadorImpressao = 'N' where Sequencial = 550000005407
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SELECT TOP(1000) oe.CIOT,CTRC.TipoConhecimento,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
--INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
--INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
--LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
--WHERE CTRC.SerieConhecto = '0' AND CTRC.Numconhecto = 16843  and CTRC.CodUF = 'DF' 
--ORDER BY O.NumSeq DESC, O.SeqConsulta DESC
--select * from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 360000016625
----UPDATE LONTANO_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 360000016625
--select CIOT,* from OrdemEmbarque where NumOrdemEmbarque = 36018744
----UPDATE OrdemEmbarque set CIOT = 'REPOM' where NumOrdemEmbarque = 36018744
--select CIOT,* from OrdemEmbarque_log where NumOrdemEmbarque = 36018744
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe =1557083
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from LONTANO_GSe.dbo.NFSe where Sequencial = 20000149104 
--UPDATE LONTANO_GSe.dbo.NFSe set SituacaoProtocolo = 4 where Sequencial = 20000149104 
select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto =  83505 and SerieConhecto = '2'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select ValorNF, SeguroAverbado, * from ConhecimentosTransporte where NumConhecto = 596527 and CodUF = 'GO'  -- 1199363.00 / 599.68
--UPDATE  ConhecimentosTransporte set ValorNF = 115993.63, SeguroAverbado = 57.99  where sequencial =  30000154473
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from MovimentacaoBancaria where CodMovBancaria = 1551756
--UPDATE MovimentacaoBancaria set Gerado = 'N' where CodMovBancaria = 1551756




select   * from ConhecimentosTransporte where NumConhecto = 121964 and CodUF = 'SP'

exec VerificaCTe 60000028840

--delete from LONTANO_GSe.dbo.CTe_LOG where sequencial = 220000070275 and ID > 22186460


select   SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto in (1911162 , 1911767 ) and CodUF = 'MT'  -- Substituído
select   SituacaoConhecto,* from ConhecimentosTransporte_log where NumConhecto in (1911162 , 1911767 ) and CodUF = 'MT' 
