SELECT * from ConhecimentosTransporte where NumConhecto = 42908 and CodUF = 'GO'
SELECT * from ConhecimentosTransporte_log where NumConhecto = 42908 and CodUF = 'GO'
SELECT * from ConhecimentosTransporte where NumConhecto = 49019 and CodUF = 'GO' --x
SELECT * from ConhecimentosTransporte where NumConhecto = 47662 and CodUF = 'GO' --x 
EXEC VerificaCTe 310000001923
EXEC VerificaCTe 220000009997
EXEC VerificaCTe 680000013966

SELECT * FROM Usuarios WHERE CodUsuario = 12306
SELECT * FROM ConhecimentosComplementados WHERE 220000009997 IN (SeqConhecimentoComplementar, SeqConhecimentoComplementado)
--SELECT DISTINCT TipoConhecimento  FROM ConhecimentosTransporte 
SELECT TOP (100)  * FROM ConhecimentosTransporte WHERE TipoConhecimento = 'Substituto' AND CodUF = 'GO' ORDER BY DataCriacao  DESC

------
SELECT TipoConhecimento,* FROM ConhecimentosTransporte WHERE Sequencial = 310000001923

SELECT * FROM ConhecimentosSubstituidos WHERE SeqCTRCSubstituto = 310000001923 -- não tem mais devido a exclusão para solcução do problema de vincular errado
SELECT TipoConhecimento, * from ConhecimentosTransporte WHERE Sequencial in (310000001923, 220000009997)

--DELETE FROM ConhecimentosSubstituidos WHERE SeqCTRCSubstituto = 310000001923
--UPDATE ConhecimentosTransporte SET TipoConhecimento = 'Normal' WHERE Sequencial in (310000001923, 220000009997)