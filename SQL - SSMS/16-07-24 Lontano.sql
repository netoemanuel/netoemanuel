SELECT top (200)* FROM LONTANO_GSe.dbo.tblLog_operacao where NM_Metodo = 'CTeRecepcao' order BY DT_Hs desc

SELECT Tipo, Sequencial, Filial, TipoCTe, UF, NumConhecto, DataEmissao, Cliente, Funcionario, Valor, Status, CodStatus, DataHoraAutorizacao, TempoEspera, Ambiente, TipoCTe, Servidor
FROM Lontano_GSe.dbo.ConsultaCTeNova WHERE (DataEmissao BETWEEN '07/16/2024 00:00:00' AND '07/16/2024 23:59:29') AND (Tipo = 'CTe')
AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) ORDER BY DataEmissao DESC

--EXEC VerificaCTe 120000025854
EXEC VerificaCTe 250000081659
--UPDATE Lontano_GSe.dbo.CTe SET Status =  0 where Sequencial = 250000081659
EXEC VerificaCTe 400000011059
--UPDATE Lontano_GSe.dbo.CTe SET Status =  0 where Sequencial = 400000011059
EXEC VerificaCTe 310000099968
--UPDATE Lontano_GSe.dbo.CTe SET Status =  0 where Sequencial = 310000099968
EXEC VerificaCTe 230000045111
--UPDATE Lontano_GSe.dbo.CTe SET Status =  0 where Sequencial = 230000045111
EXEC VerificaCTe 660000028240
--UPDATE Lontano_GSe.dbo.CTe SET Status =  0 where Sequencial = 660000028240
EXEC VerificaCTe 240000059840
--UPDATE Lontano_GSe.dbo.CTe SET Status =  0 where Sequencial = 240000059840 --AND ID = 22856127
--DELETE from LONTANO_GSe.dbo.CTe_LOG WHERE  Sequencial = 240000059840 AND ID = 22856127
	
--delete FROM LONTANO_GSe.dbo.MDFe where Sequencial in (1687939,1687895)
EXEC MonitoraMDFe 
SELECT NomeAbreviado FROM Fornecedores WHERE (CodFornecedor = 1105841)
SELECT NomeAbreviado,* FROM Fornecedores WHERE (CodFornecedor = 1105841)

SELECT Sequencial,CodUF,Numconhecto, TipoConhecimento, ModeloDocumento, * FROM ConhecimentosTransporte WHERE CodUF = 'mt' AND SerieConhecto = '0' AND Numconhecto IN( 721851,721849)
EXEC VerificaCTe 220000077256
EXEC VerificaCTe 120000025862
select status,* from lontano_gse.dbo.cte where sequencial = 120000025862
--update lontano_gse.dbo.cte set status = 1 where sequencial = 120000025862

SELECT ValorAdiantamento,* FROM ConhecimentosTransporte WHERE CodUF = 'MG' AND SerieConhecto = '0' AND Numconhecto IN(410588 )
--UPDATE ConhecimentosTransporte set ValorAdiantamento = 1549.00 WHERE CodUF = 'MG' AND SerieConhecto = '0' AND Numconhecto IN( 410588 )



--17/07/2024

INSERT INTO Temp_RelCAPPeriodo (CodUsuario, CodFilial, DataCriacao, TipoTransferencia, CodContasPagar, DataVencimento, DataPagamento, NumDocumento,IndDocumento, NumeroParcela, 
TipoCAP, DataEmissao, CodFornecedor, Fornecedor, SituacaoCAP, ValorPrincipal, JurosDesconto, TotalPago, Historico) 
SELECT 14102, 'CG', '07/17/2024 08:53:07', CASE WHEN (CAP.CodTipoContasPagar = 14 AND ((ISNULL(CAP.CodFilialBancaria,'') <> '' AND ISNULL(CAP.CodContaBancaria, 0) <> 0) OR (ISNULL(CAP.CodFilialCaixa, '') <> '' AND ISNULL(CAP.CodCaixa, 0) <> 0 AND CX.CodTipoCaixa = 2))) THEN 'X' ELSE 'N' END AS TipoTransferencia, CAP.CodContasPagar, CAP.DataVencimento, PAG.DataPagamento, CAP.NumDocumento, ISNULL(CAP.NumeroParcela, 0) AS NumeroParcela, CB.Descricao AS TipoCAP, CAP.DataEmissao, CAP.CodFornecedor, Forn.RazaoSocial AS Fornecedor, CAP.Situacao AS SituacaoCAP, ((PAG.ValorTotalPago - ISNULL(PAG.Multa, 0) + PAG.JurosPagos) - (PAG.Desconto + PAG.DescontoDevolucao)) AS ValorPrincipal, ((ISNULL(PAG.Multa, 0) + PAG.JurosPagos) - (PAG.Desconto + PAG.DescontoDevolucao)) AS JurosDesconto, PAG.ValorTotalPago AS TotalPago, CAP.Historico, CAP.IndDocumento
FROM ContasPagas PAG
INNER JOIN ContasPagar CAP ON CAP.CodContasPagar = PAG.CodContasPagar 
INNER JOIN Fornecedores Forn ON Forn.CodFornecedor = CAP.CodFornecedor 
INNER JOIN ComboBox_Financeiro CB ON CB.Codigo = CAP.CodTipoContasPagar AND CB.NomeComboBox = 'cboTipoContasPagar' 
LEFT OUTER JOIN Caixas CX ON CX.CodFilial = CAP.CodFilialCaixa AND CX.CodCaixa = CAP.CodCaixa



INSERT INTO Temp_RelCAPPeriodo (CodUsuario, CodFilial, DataCriacao, TipoTransferencia, CodContasPagar, DataVencimento, DataPagamento, NumDocumento,IndDocumento, NumeroParcela, 
TipoCAP, DataEmissao, CodFornecedor, Fornecedor, SituacaoCAP, ValorPrincipal, JurosDesconto, TotalPago, Historico) 
SELECT 14102, 'CG', '07/17/2024 08:58:21', CASE WHEN (CAP.CodTipoContasPagar = 14 AND ((ISNULL(CAP.CodFilialBancaria,'') <> '' 
AND ISNULL(CAP.CodContaBancaria, 0) <> 0) OR (ISNULL(CAP.CodFilialCaixa, '') <> '' AND ISNULL(CAP.CodCaixa, 0) <> 0 AND CX.CodTipoCaixa = 2))) THEN 'X' ELSE 'N' END AS TipoTransferencia,
CAP.CodContasPagar, CAP.DataVencimento, PAG.DataPagamento, CAP.NumDocumento, ISNULL(CAP.NumeroParcela, 0) AS NumeroParcela, CB.Descricao AS TipoCAP, CAP.DataEmissao, CAP.CodFornecedor, 
Forn.RazaoSocial AS Fornecedor, CAP.Situacao AS SituacaoCAP, ((PAG.ValorTotalPago - ISNULL(PAG.Multa, 0) + PAG.JurosPagos) - (PAG.Desconto + PAG.DescontoDevolucao)) AS ValorPrincipal, 
((ISNULL(PAG.Multa, 0) + PAG.JurosPagos) - (PAG.Desconto + PAG.DescontoDevolucao)) AS JurosDesconto, PAG.ValorTotalPago AS TotalPago, 
CAP.Historico, CAP.IndDocumento 
FROM ContasPagas PAG INNER JOIN ContasPagar CAP ON CAP.CodContasPagar = PAG.CodContasPagar 
INNER JOIN Fornecedores Forn ON Forn.CodFornecedor = CAP.CodFornecedor 
INNER JOIN ComboBox_Financeiro CB ON CB.Codigo = CAP.CodTipoContasPagar AND CB.NomeComboBox = 'cboTipoContasPagar' 
LEFT OUTER JOIN Caixas CX ON CX.CodFilial = CAP.CodFilialCaixa AND CX.CodCaixa = CAP.CodCaixa


--ALTER TABLE Temp_RelCAPPeriodo 
--   ADD  IndDocumento VARCHAR(10)  null

--ALTER TABLE Temp_RelCAPPeriodo DROP COLUMN IndDocumento;
--GO

--INSERT INTO Temp_RelCAPPeriodo (CodUsuario, CodFilial, DataCriacao, TipoTransferencia, CodContasPagar, DataVencimento, DataPagamento, NumDocumento, NumeroParcela, 
--TipoCAP, DataEmissao, CodFornecedor, Fornecedor, SituacaoCAP, ValorPrincipal, JurosDesconto, TotalPago, Historico,IndDocumento)

--SELECT 14102, 'CG', '07/17/2024 10:13:12', CASE WHEN (CAP.CodTipoContasPagar = 14 AND ((ISNULL(CAP.CodFilialBancaria,'') <> '' 
--AND ISNULL(CAP.CodContaBancaria, 0) <> 0) OR (ISNULL(CAP.CodFilialCaixa, '') <> '' AND ISNULL(CAP.CodCaixa, 0) <> 0 AND CX.CodTipoCaixa = 2))) THEN 'X' ELSE 'N' END AS TipoTransferencia, 
--CAP.CodContasPagar, CAP.DataVencimento, PAG.DataPagamento, CAP.NumDocumento, ISNULL(CAP.NumeroParcela, 0) AS NumeroParcela, CB.Descricao AS TipoCAP, CAP.DataEmissao, CAP.CodFornecedor, 
--Forn.RazaoSocial AS Fornecedor, CAP.Situacao AS SituacaoCAP, ((PAG.ValorTotalPago - ISNULL(PAG.Multa, 0) + PAG.JurosPagos) - (PAG.Desconto + PAG.DescontoDevolucao)) AS ValorPrincipal, 
--((ISNULL(PAG.Multa, 0) + PAG.JurosPagos) - (PAG.Desconto + PAG.DescontoDevolucao)) AS JurosDesconto, 
--PAG.ValorTotalPago AS TotalPago, CAP.Historico, CAP.IndDocumento 
--FROM ContasPagas PAG INNER JOIN ContasPagar CAP ON CAP.CodContasPagar = PAG.CodContasPagar 
--INNER JOIN Fornecedores Forn ON Forn.CodFornecedor = CAP.CodFornecedor 
--INNER JOIN ComboBox_Financeiro CB ON CB.Codigo = CAP.CodTipoContasPagar AND CB.NomeComboBox = 'cboTipoContasPagar' 
--LEFT OUTER JOIN Caixas CX ON CX.CodFilial = CAP.CodFilialCaixa AND CX.CodCaixa = CAP.CodCaixa
--WHERE 


--CAP.CodFilialOrigem = 'CG' AND CAP.CodUsuario = 14102 AND CAP.DataCriacao = '2024/07/17 11:03:53' AND CAP.TipoTransferencia = 'N'



-- SELECT "Temp_RelCAPPeriodo"."DataVencimento", "Temp_RelCAPPeriodo"."CodContasPagar", "Temp_RelCAPPeriodo"."NumeroParcela", "Temp_RelCAPPeriodo"."NumDocumento", "Temp_RelCAPPeriodo"."Historico",
-- "Temp_RelCAPPeriodo"."SituacaoCAP", "Temp_RelCAPPeriodo"."DataPagamento", "Fornecedores"."CodTipoFornecedor", "Fornecedores"."Nome", "Temp_RelCAPPeriodo"."ValorPrincipal",
-- "Temp_RelCAPPeriodo"."JurosDesconto", "Temp_RelCAPPeriodo"."TotalPago", "Temp_RelCAPPeriodo"."TipoTransferencia"
-- FROM   "LONTANO"."dbo"."Temp_RelCAPPeriodo" "Temp_RelCAPPeriodo" 
-- INNER JOIN "LONTANO"."dbo"."Fornecedores" "Fornecedores" ON "Temp_RelCAPPeriodo"."CodFornecedor"="Fornecedores"."CodFornecedor"
-- WHERE 
-- Temp_RelCAPPeriodo.CodFilial = 'CG' AND Temp_RelCAPPeriodo.CodUsuario = 14102 AND Temp_RelCAPPeriodo.DataCriacao = '2024/07/17 11:03:53' AND Temp_RelCAPPeriodo.TipoTransferencia = 'N'

-- SELECT COUNT(*) FROM Temp_RelCAPPeriodo


-- Data = '17/07/2024'§Hora = '11:21'§NomeEmpresa = 'LONTANO Transportes'§TituloRelatorio = 'Relatório de Contas Pagas por Período'§Parametro1 = '17/06/2024 a 16/08/2024'§Parametro2 = 'Todos'§Parametro3 = 'Liquidada'§Parametro4 = 'Todos'§Parametro5 = 'Todos'§Parametro6 = 'Todas'§Parametro7 = 'Todas'§Parametro8 = 'Todos'§Parametro9 = 'Todos'§Parametro10 = 'Número Documento'§Parametro11 = 'Todos'§Parametro11 = 'Todas'§Parametro13 = 'Todas'§Parametro12 = 'Todos'§Parametro14 = 'Todos'§Parametro15 = 'C'§


-- {Temp_RelCAPPeriodo.CodFilial} = 'CG' AND {Temp_RelCAPPeriodo.CodUsuario} = 14102 AND {Temp_RelCAPPeriodo.DataCriacao} = '2024/07/17 16:40:19' AND {Temp_RelCAPPeriodo.TipoTransferencia} = 'N'


 SELECT IndDocumento,* FROM ContasPagar where CodContasPagar = 12002999
  SELECT IndDocumento,* FROM ContasPagar where CodContasPagar = 1890115