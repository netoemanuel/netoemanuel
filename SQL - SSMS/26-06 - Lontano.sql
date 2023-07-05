use LONTANO
--CT-e parados
exec VerificaCTe 640000054906
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 640000054906
---------------------------------------------------------------------------------
--#9279 - Viagem de pedágio inexistente.

SELECT TOP (1) codViagemPamcard,* FROM CartaFrete WHERE codViagemPamcard IS NOT NULL AND Sequencial = 410000049553 ORDER BY dataCriacao DESC -- Esse
SELECT cf.CodViagemRepom FROM ConhecimentosTransporte ctrc JOIN CartaFrete cf ON cf.Sequencial = ctrc.Sequencial AND cf.CodAdmPagtoFrete = 12 WHERE CTRC.Sequencial = 410000049553

SELECT TOP(1000) oe.CIOT, CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 581840
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC

select * from AdmPagamentoFrete
-------------------------------------------------------------------------------------

--#9480 - Carta correção
select * from conhecimentostransporte where NumConhecto = 176964 and CodUF = 'PR'
exec VerificaCTe 430000004910
--------------------

-- #9483 - Ajustar cte GO-585208
select * from conhecimentostransporte where NumConhecto = 585208 and CodUF = 'GO'
exec VerificaCTe 620000018896
select Status, * from LONTANO_GSe.dbo.cte where Sequencial = 620000018896

-------------------------------------------------------------------------------------
--#9485 - VERIFICAR LANÇAMENTO DE ESTADIA

SELECT Sequencial,CodUF,Numconhecto, TipoConhecimento, ModeloDocumento, * FROM ConhecimentosTransporte WHERE CodUF = 'PR' AND SerieConhecto = '0' AND Numconhecto = 172990
select * from ComplementoConhecimento where NumSeqConhecto = 640000052287
select DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia  from ComplementoConhecimento where NumSeqConhecto = 640000052287
select DataEntradaDesembarque,DataSaidaDesembarque,IndFaturaEstadia,IndPagtoEstadia,IndQtdeEstadia,ValorEstadia , DataLog from ComplementoConhecimento_Log where NumSeqConhecto = 640000052287 ORDER by DataLog desc
------update ComplementoConhecimento SET DataEntradaDesembarque ='2023-03-18 14:28:00.000',DataSaidaDesembarque='2023-03-22 08:49:00.000' ,ValorEstadia =1.15  where NumSeqConhecto = 640000052287
---------------------------------------------------------------------------------------
--ENC: ERRO NA GRAVACAO / PEDIDO IPAM01/23 ( CARAMURU IPAMERI)

--select * from ConhecimentosTransporte where NumConhecto = 585266 and CodUF = 'GO'

--exec VerificaCTe 50000012284

--exec Grava_CTe 50000012284