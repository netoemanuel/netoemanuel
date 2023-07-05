use RODOMAIOR

-- Eni Grupo

select * from conhecimentostransporte where NumConhecto = 69322 and CodUF = 'MG'

exec VerificaCTe 660000019380

--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial = 660000019380

SELECT TOP(1000) * FROM RODOMAIOR_GSe.dbo.tblLog_operacao where NM_Metodo = 'CTeRetRecepcaoWebService' ORDER BY DT_Hs DESC


Declare @DataInicio as VarChar(20) set @DataInicio = '06/28/2023 00:00:00'
Declare @DataFim as VarChar(20) set @DataFim = '06/28/2023 23:59:29'
SELECT Tipo, Sequencial, Filial, TipoCTe, UF, NumConhecto, DataEmissao, Cliente, Funcionario, Valor, Status, CodStatus, DataHoraAutorizacao, TempoEspera, Ambiente, TipoCTe, Servidor FROM Rodomaior_GSe.dbo.ConsultaCTeNova WHERE (DataEmissao BETWEEN @DataInicio AND @DataFim) AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) and UF = 'MG' ORDER BY DataEmissao DESC

--update RODOMAIOR_GSe.dbo.cte set status = 0 where sequencial in (SELECT Sequencial FROM Rodomaior_GSe.dbo.ConsultaCTeNova WHERE (DataEmissao BETWEEN '06/28/2023 00:00:00' AND '06/28/2023 23:59:29') AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) and UF = 'MG')

-------------------------------------------------------------------------------------------------------------------------------------

--Não roteiriza pedagio (motoristas aguardando)

--GravouSimulacao Função

--If NumReg("OrdemEmbarque WHERE ISNULL(IndPularRoteirizacao, 'N') = 'S' AND NumOrdemEmbarque = " & rsCTRC!CodOrdemEmbarque) > 0 Then Exit Function
SELECT COUNT(*) AS Registros FROM PedidosFrete P WHERE (P.CodPedidoFrete = 17001686) AND (ISNULL(P.RoteirizacaoAutomatica,'S') = 'N')
 
 -------------------------------------------------------------------------------------------------------------------------------------

select * from conhecimentostransporte where NumConhecto = 176163 and CodUF = 'MS'

exec VerificaCTe 420000003173

select * from RODOMAIOR_GSe.dbo.CTe_log where ID in (5591487,5591486) and Sequencial = 420000003173
--delete from RODOMAIOR_GSe.dbo.CTe_log where ID in (5591487,5591486) and Sequencial = 420000003173


-------------------------------------------------------------------------------------------------------------------------------------
exec MonitoraMDFe 22022469

select * from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (486559,486557,486556)
delete  from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (486559,486557,486556)

exec MonitoraMDFe 7017082
delete  from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (486487)


exec MonitoraMDFe 76020444  --RCF4j16

-------------------------------------------------------------------------------------------------------------------------------------

select * from RODOMAIOR_GSe.dbo.tblEmitentes

exec MonitoraMDFe 13018028