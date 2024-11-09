EXEC MonitoraMDFe 51017933	
--UPDATE RODOMAIOR_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 651331

select SituacaoFornecedor, * FROM Fornecedores where CodFornecedor = 1095284

SELECT NomeUsuario, * FROM PermissoesAcesso
join Usuarios u ON u.CodUsuario = PermissoesAcesso.CodUsuario
WHERE  (CodPrograma = 'frmImportarArquivoServidor') 
SELECT * from Programas where CodPrograma = 'frmImportarArquivoServidor'

SELECT * from Usuarios where CodUsuario = 120
SELECT CodUsuarioGrupo, * from Colaboradores where CodColaborador = 12662
select * from Usuarios where NomeUsuario LIKE '%Aline%' and CodFilial = 'CG'

EXEC VerificaCTe 20000038697


SELECT SituacaoConhecto,* FROM ConhecimentosTransporte where NumConhecto = 62702 AND CodUF = 'MT' and SerieConhecto = '0'

--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Cancelado' where NumConhecto = 62702 AND CodUF = 'MT' and SerieConhecto = '0'

EXEC VerificaCTe 960000004725



SELECT TarifaFreteEmpresa,ValorTotalFrete,* FROM ConhecimentosTransporte where NumConhecto in  (4528,4533,4535  )  AND CodUF = 'MT' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte  SET TarifaFreteEmpresa = 23.0000, ValorTotalFrete = 475.18  where Sequencial = 530000008675
--UPDATE ConhecimentosTransporte  SET TarifaFreteEmpresa = 23.0000, ValorTotalFrete = 689.08  where Sequencial = 530000008681
--UPDATE ConhecimentosTransporte  SET TarifaFreteEmpresa = 23.0000, ValorTotalFrete =  621.23 where Sequencial = 530000008674


--TarifaFreteEmpresa	ValorTotalFrete	Sequencial
--24.0000	495.84	530000008675
--24.0000	719.04	530000008681
--24.0000	648.24	530000008674

EXEC VerificaCTe 10000027562