use RODOMAIOR

--SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
--INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
--INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
--inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
--LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
--WHERE CTRC.SerieConhecto = 'E' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 6607     and CF.CodAdmPagtoFrete = 13                           
--ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC
--select * from AdmPagamentoFrete
----Consultar CIOT pelo CTe
--SELECT CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
--INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
--INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
--LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
--WHERE 
--CTRC.SerieConhecto = 'E' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto in (6609 )
--ORDER BY O.NumSeq DESC, O.SeqConsulta DESC

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Fwd: RODOMAIOR -> MDFEs NÃO ENCERRADOS COM 20 DIAS OU MAIS !!!

--select Status,* from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe =  526714	
----UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe =  526714	
--exec monitoramdfe 24003160	
--select Status,* from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 526729
----UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 526729
--exec monitoramdfe 24003162	
--select Status,* from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 526480
----UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 526480
--exec monitoramdfe 34023833	
--select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 526590	
----UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 526590
--exec monitoramdfe 51010810	
--select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 526622	
----UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 526622
--exec monitoramdfe 65003703	
--select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 526512	
----UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 526512
--exec monitoramdfe 69011952
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--select  E.xJust, * from RODOMAIOR_GSe.dbo.mdfe M
--inner join RODOMAIOR_GSe.dbo.Eventos_MDFe E on E.Sequencial_MDFe = M.Sequencial
--where E.Status = 9 and M.Status = 1
select
'exec MonitoraMDFe ' + convert(varchar,mvoe.NumOrdemEmbarque) AS SQL1
--,'select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = ' + convert(varchar,E.Sequencial_MDFe) AS SQL2
--,'UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = ' + convert(varchar,E.Sequencial_MDFe) AS SQL3
,E.descEvento, E.Sequencial_MDFe
,E.Origem, M.Id 'Chave'
from RODOMAIOR_GSe.dbo.mdfe M
join RODOMAIOR_GSe.dbo.Eventos_MDFe E ON E.descevento = 'Encerramento' AND E.Sequencial_MDFe = M.Sequencial
join MDFeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = M.CodManifestoCarga
where E.Status = 9 and M.Status = 1

exec MonitoraMDFe 2048438
exec MonitoraMDFe 17014498
exec MonitoraMDFe 18014130
exec MonitoraMDFe 22024823
exec MonitoraMDFe 24003159
exec MonitoraMDFe 31013580
exec MonitoraMDFe 34024001
exec MonitoraMDFe 41026503
exec MonitoraMDFe 41026693
exec MonitoraMDFe 41026694
exec MonitoraMDFe 41026696
exec MonitoraMDFe 51010952
exec MonitoraMDFe 58004206
exec MonitoraMDFe 66022634
exec MonitoraMDFe 67001128
exec MonitoraMDFe 69012031
exec MonitoraMDFe 75010048
exec MonitoraMDFe 76022817
exec MonitoraMDFe 78004161

select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 530169
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 530172
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 530256
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 530193
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 530213
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 529254
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 526704
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 531551
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 530178
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 530629
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 534657
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 534681
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 534669
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 529257
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 530324
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 529647
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 530259
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 530079
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 529243
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 531965
select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 532941

--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 530169
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 530172
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 530256
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 530193
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 530213
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 529254
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 526704
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 531551
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 530178
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 530629
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 534657
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 534681
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 534669
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 529257
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 530324
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 529647
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 530259
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 530079
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 529243
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 531965
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 532941
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
