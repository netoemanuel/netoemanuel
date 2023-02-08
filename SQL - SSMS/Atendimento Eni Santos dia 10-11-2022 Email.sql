USE RODOMAIOR


EXEC MonitoraMDFe 58001998 --52221111595217000531580050000748811004221285

--UPDATE RODOMAIOR_GSe.dbo.MDFe SET Status = 0 WHERE CodManifestoCarga = 422128


SELECT CodOrdemEmbarque, * FROM ConhecimentosTransporte WHERE NumConhecto = 80224 AND CodUF = 'GO'

EXEC VerificaCTe 710000004890
EXEC MonitoraMDFe 71004906
select Status,* from RODOMAIOR_GSe.dbo.Eventos_CTe   where Sequencial_CTe = 710000004890
--DELETE from RODOMAIOR_GSe.dbo.CTe_LOG  where Sequencial = 710000004890 AND ID IN (5062203)
SELECT * FROM Usuarios WHERE NomeUsuario like 'Eni%'
--UPDATE RODOMAIOR_GSe.dbo.Eventos_CTe SET STATUS = 0 WHERE Sequencial_CTe = 710000004890

SELECT CodOrdemEmbarque, * FROM ConhecimentosTransporte WHERE NumConhecto = 66251 AND CodUF = 'PR'
--UPDATE RODOMAIOR_GSe.dbo.CTe SET STATUS = 0 WHERE Sequencial = 930000001166
EXEC VerificaCTe 930000001166


select * from Fatura_eFrete
select * from Fatura_eFrete_Itens
select * from Fatura_eFrete_Outros
select * from Fatura_eFrete_Pagamentos
--select FaturaeFrete, * from RODOMAIOR_GSe.dbo.tblThreads