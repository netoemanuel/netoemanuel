use RODOMAIOR
select * FROM Usuarios where NomeUsuario LIKE '%Billerbeck%'

-- CT-e que precisam ser subistituidos, pegar o sequencial para puxar a ChaveAcessoNFE, pois ela da a critica no projeto.
SELECT * from ConhecimentosTransporte where NumConhecto = 72229 and CodUF = 'GO' -- Sequencial CT-e Antigo
SELECT * from ConhecimentosTransporte where NumConhecto = 73393 and CodUF = 'GO' -- Sequencial CT-e Novo
-- Apos pegar a chave, deixar ela guardada para voltar apos finalizar o processo, deixa o campo ChaveAcessoNFE para evitar a critica no manifestar
-- depois de terminar todo o processo e autorizar o novo CTe retornar a chave.
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento = 760000011451 
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = null WHERE SequencialConhecimento = 760000011451 
--760000011411 - 52220860498706006600550570000383561025016659  
--760000011415 - 52220860498706006600550570000383691025031982
--760000011447 - 52220860498706006600550570000383831025072335
--760000011449 - 52220860498706006600550570000383851025072941
--760000011451 - 52220860498706006600550570000383841025072596
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = 'CHAVE' WHERE SequencialConhecimento = 00000000 
-- Apos gerar o CT-e no manifestar caso não autorize devido a CFOP, faze o updade abaixo. (caso precise apenas)
SELECT * from ConhecimentosTransporte where NumConhecto = 00000 and CodUF = 'UF'
--update ConhecimentosTransporte SET CodigoCFOP = '5.932' WHERE Sequencial = 000000000
--UPDATE RODOMAIOR_GSe.dbo.CTe SET CFOP = '5932', Status = 0 WHERE Sequencial = 000000000
EXEC VerificaCTe 000000000000





-- E-mail - RETIRAR CHAVE DE ACESSO NF 13/12/2022
-- 73246, 73267, 73384, 73389 e 73393.
--760000011411 - 52220860498706006600550570000383561025016659  
--760000011415 - 52220860498706006600550570000383691025031982
--760000011447 - 52220860498706006600550570000383831025072335
--760000011449 - 52220860498706006600550570000383851025072941
--760000011451 - 52220860498706006600550570000383841025072596

-- E-mail - RETIRAR CHAVE DE ACESSO NF 29/11/2022
--72229.
--770000001099 - 31220760498706013488550640000104091024516344









