--Solicitação Thiago  09/07/2022 Grupo LTN
--Este cte está cancelado mas ainda está com a situação emitido. Poderia verificar?

-- O update tem que ser na tabela CTe do GSe
--Status Cancelado = 5 / Autorizao = 1 / Enviado = 0 / Retorno Sefaz = 7 / Rejeitado = 2

USE LONTANO

SELECT SituacaoConhecto, * FROM ConhecimentosTransporte WHERE CodUF = '' AND NumConhecto = 00000
--
SELECT Status, * FROM LONTANO_GSe.dbo.CTe WHERE Sequencial = 000000000
--
EXEC VerificaCTe 000000000
--
SELECT DISTINCT SituacaoConhecto ,* from  ConhecimentosTransporte

--UPDATE LONTANO_GSe.dbo.CTe SET Status = '' WHERE Sequencial = 000000000

