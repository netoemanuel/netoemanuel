SELECT * from ConhecimentosTransporte where NumConhecto = 641470  and CodUF = 'GO'

exec MonitoraMDFe 24085387
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1726652


--Anota !
EXEC MonitoraMDFe 64076288
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1726652 
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '952240010174060', nProt = '952240010174060' where Sequencial = 1726652 and ID = 25349561 
--coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe_log SET Status = 2, cstat = 204 where Sequencial = 1726652 and ID = 25349561 

exec MonitoraMDFe 3190280
select * from MDFeViagem_OrdemEmbarque where numOrdemEmbarque = 3190280

SELECT * FROM LONTANO_GSe.dbo.MDFe where Sequencial IN (1732053,1732041,1732035,1731985,1732057)
--DELETE FROM LONTANO_GSe.dbo.MDFe where Sequencial IN (1732053,1732041,1732035,1731985,1732057)

select CodOrdemMDFE,* from ConhecimentosTransporte where NumConhecto in( 65889,65899) and CodUF = 'GO' and SerieConhecto = '2'  -- 28188907 / 65889
--UPDATE ConhecimentosTransporte SET CodOrdemMDFE = 3190280  where NumConhecto in( 65889,65899) and CodUF = 'GO' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte SET CodOrdemMDFE = null  where NumConhecto in( 65889) and CodUF = 'GO' and SerieConhecto = '2'

select CodOrdemMDFE,* from ConhecimentosTransporte where CodOrdemMDFE = 3190280

--EXEC VerificaCTe 280000184330
EXEC Lontano_GSe.dbo.GeraMDFeViagem_ESP 3190280, 14102, 'CG'

EXEC MonitoraMDFe 


exec MonitoraMDFe 3190280

select * from Lontano_GSe.dbo.Descarga_MDFe where Sequencial = 1732233	 --and SeqDescarga = 1 -- para saber qual está (DESCARGA)
select CodUFIBGE,* from Lontano_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%Verde%'  -- colocar o destino de descarga
select * FROM Lontano_GSe.dbo.Cidades_e where CodMunicipioIBGE =  5107925
--update Lontano_GSe.dbo.Descarga_MDFe set cMunDescarga = 5218805, xMunDescarga = 'Rio Verde' where Sequencial = 1732240
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1732240

--DELETE FROM LONTANO_GSe.dbo.MDFe WHERE Sequencial = 1732231



SELECT CT.NumFormulario, 
       CT.ModeloDocumento,
       COUNT(*) AS QtdConhecimentos, 
       STRING_AGG(CAST(CT.Sequencial AS NVARCHAR(MAX)), ', ') AS Sequenciais,
       MAX(CT.DataCriacao) AS DataCriacao
FROM ConhecimentosTransporte CT
WHERE CT.NumFormulario <> 0
GROUP BY CT.NumFormulario, CT.ModeloDocumento
HAVING COUNT(*) > 1
ORDER BY DataCriacao DESC;