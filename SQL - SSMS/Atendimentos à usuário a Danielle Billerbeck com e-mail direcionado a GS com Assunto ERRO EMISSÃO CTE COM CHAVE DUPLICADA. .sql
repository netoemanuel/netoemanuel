use RODOMAIOR
select * FROM Usuarios where NomeUsuario LIKE '%Billerbeck%'

-- CT-e que precisam ser subistituidos, pegar o sequencial para puxar a ChaveAcessoNFE, pois ela da a critica no projeto.
SELECT * from ConhecimentosTransporte where NumConhecto = 00000 and CodUF = 'UF' -- Sequencial CT-e Antigo
SELECT * from ConhecimentosTransporte where NumConhecto = 00000 and CodUF = 'UF' -- Sequencial CT-e Novo
-- Apos pegar a chave, deixar ela guardada para voltar apos finalizar o processo, deixa o campo ChaveAcessoNFE para evitar a critica no manifestar
-- depois de terminar todo o processo e autorizar o novo CTe retornar a chave.
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento = 000000000 -- 
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = NULL WHERE SequencialConhecimento = 00000000  
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = 'CHAVE' WHERE SequencialConhecimento = 00000000 
-- Apos gerar o CT-e no manifestar caso não autorize devido a CFOP, faze o updade abaixo. (caso precise apenas)
SELECT * from ConhecimentosTransporte where NumConhecto = 00000 and CodUF = 'UF'
--update ConhecimentosTransporte SET CodigoCFOP = '5.932' WHERE Sequencial = 000000000
--UPDATE RODOMAIOR_GSe.dbo.CTe SET CFOP = '5932', Status = 0 WHERE Sequencial = 000000000
EXEC VerificaCTe 000000000000





