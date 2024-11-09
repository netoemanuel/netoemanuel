SELECT Tipo, Sequencial, Filial, TipoCTe, UF, NumConhecto, DataEmissao, Cliente, Funcionario, Valor, Status, CodStatus, DataHoraAutorizacao, TempoEspera, Ambiente, TipoCTe, Servidor FROM Lontano_GSe.dbo.ConsultaCTeNova 
WHERE (DataEmissao BETWEEN '10/15/2024 00:00:00' AND '10/15/2024 23:59:29') 
AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) ORDER BY DataEmissao DESC

--exec VerificaCTe 20000157342
--exec Grava_CTe 20000157342
--exec Grava_CTe 20000157341
--exec Grava_CTe 220000080304
--exec Grava_CTe 220000080303
--exec Grava_CTe 890000032490
--exec Grava_CTe 20000157340
--exec Grava_CTe 730000136679
--exec Grava_CTe 730000136678
--exec Grava_CTe 730000136684
--exec Grava_CTe 730000136681
--exec Grava_CTe 730000136685
--exec Grava_CTe 730000136682
--exec Grava_CTe 730000136680
--exec Grava_CTe 730000136677
--exec Grava_CTe 730000136683
--exec Grava_CTe 10000025558
--exec VerificaCTe 10000025558

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


select * from ConhecimentosTransporte where Sequencial IN (220000073815, 910000049998)
