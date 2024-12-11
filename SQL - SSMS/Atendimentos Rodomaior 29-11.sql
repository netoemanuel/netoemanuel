
-- 'Só habilitar essa função nas mesmas condições em que funciona a reemissão do DACTE.
SELECT IndReemissaoCF,* FROM ConhecimentosTransporte WHERE NumConhecto = 117260 and CodUF = 'GO'

SELECT  * FROM ConhecimentosTransporte_log WHERE NumConhecto = 117260 and CodUF = 'GO'

SELECT IndImpressao,* from RODOMAIOR_GSe.dbo.CTe where Sequencial = 750000010688
select IndImpressao,* from RODOMAIOR_GSe.dbo.CTe_Dacte where Sequencial = 750000010688


SELECT * FROM ConhecimentosTransporte WHERE NumConhecto = 66899 and CodUF = 'MT'


EXEC VerificaCTe 40000043889
EXEC MonitoraMDFe 4045852