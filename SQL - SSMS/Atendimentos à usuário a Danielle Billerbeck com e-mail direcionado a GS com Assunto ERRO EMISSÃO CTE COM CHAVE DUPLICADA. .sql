use RODOMAIOR
select * FROM Usuarios where NomeUsuario LIKE '%Billerbeck%'

-- CT-e que precisam ser subistituidos, pegar o sequencial para puxar a ChaveAcessoNFE, pois ela da a critica no projeto.
SELECT * from ConhecimentosTransporte where NumConhecto = 86947  and CodUF = 'GO' -- Sequencial CT-e Antigo
SELECT * from ConhecimentosTransporte where NumConhecto = 76524 and CodUF = 'pr' -- Sequencial CT-e Novo
-- Apos pegar a chave, deixar ela guardada para voltar apos finalizar o processo, deixa o campo ChaveAcessoNFE para evitar a critica no manifestar
-- depois de terminar todo o processo e autorizar o novo CTe retornar a chave.
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento = 340000023842 
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = Null WHERE SequencialConhecimento = 340000023842 

--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = 'CHAVE' WHERE SequencialConhecimento = 00000000 
-- Apos gerar o CT-e no manifestar caso não autorize devido a CFOP, faze o updade abaixo. (caso precise apenas)
SELECT * from ConhecimentosTransporte where NumConhecto = 00000 and CodUF = 'UF'
--update ConhecimentosTransporte SET CodigoCFOP = '5.932' WHERE Sequencial = 000000000
--UPDATE RODOMAIOR_GSe.dbo.CTe SET CFOP = '5932', Status = 0 WHERE Sequencial = 000000000
EXEC VerificaCTe 000000000000
------------------------------------------------------------------------------------------------------------------------------------------------------------------
--20/07/2023
--EXCLUSÃO DA CHAVE DE ACESSO DA NF-E 2933 REFERENTE AO CT-E 76526

-- 340000023844 - 41230708013648000295550020000029331006984270 - NF 2933
-- 340000023842 - 41230708013648000295550020000029321006902357 - NF 2932


--RETIRAR CHAVE DE ACESSO DA NF DO CTE 86947

--760000014504 - 52230260498706006600550570000395621030854929 -  NF 39562

--Solicitação de Retirada de Chave de Acesso Notas Fiscais vinculadas ao CT-es MG 17/02/2023
--310000006563 - 32220816404287029137550010001765011510015180 - NF 176501
--310000006563 - 32220816404287029137550010001765021531526335 - NF 176502

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









