EXEC MonitoraMDFe 10085293
--
-- Caso dê a Rejeição "612"	Necessario Trocar o	Codigo do Municipio de Descarga e o nome do municipio
--
select * from Lontano_GSe.dbo.Descarga_MDFe where Sequencial = 1612075	 --and SeqDescarga = 1 -- para saber qual está (DESCARGA)
select CodUFIBGE,* from Lontano_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%Sorriso%'  -- colocar o destino de descarga
select * FROM Lontano_GSe.dbo.Cidades_e where CodMunicipioIBGE =  5103858
--update Lontano_GSe.dbo.Descarga_MDFe set cMunDescarga = 5107925, xMunDescarga = 'Sorriso' where Sequencial = 1612086	
--
--Casos precise mexer no percurso, alterar o mesmo no prtojeto e depois deletar e gerar uma nova MDF-e
--
--Caso tenha demais de uma rejeitada!
--DELETE FROM Lontano_GSe.dbo.MDFe where Sequencial in ( 1612073)  --51240311455829000286580020003683311014911011
--
--Reenviar para autorizar	
SELECT STATUS, * FROM Lontano_GSe.dbo.MDFe WHERE Sequencial = 1612086
--update Lontano_GSe.dbo.MDFe set status = 0 where Sequencial = 1612086
-------------------------------------------------------------------------------------------------------------------------------------------

exec VerificaCTe 490000023422
--update Lontano_GSe.dbo.CTe set status = 0 where Sequencial = 1612075

EXEC MonitoraMDFe 10085294
--update Lontano_GSe.dbo.MDFe set status = 0 where Sequencial = 1612086