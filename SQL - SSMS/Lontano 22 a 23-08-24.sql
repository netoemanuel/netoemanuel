
select * from ConhecimentosTransporte where Sequencial IN (660000028474,650000024389,280000183493,480000007013,240000060544,
640000066339,230000045974,540000015823,30000161842,400000011427,420000018583,550000017101,550000017100)
select * from ConhecimentosTransporte where  NumConhecto = 15005 and CodUF = 'RO'
exec VerificaCTe 550000017109
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 550000017109
DELETE FROM LONTANO_GSe.dbo.CTe WHERE Sequencial = 280000183493
EXEC Grava_CTe 220000078398
--update LONTANO_GSe.dbo.cte set status = 0, indIEToma = 9 where Sequencial IN (550000017113)
--update LONTANO_GSe.dbo.cte set status = 0 where Sequencial IN (530000168667)
--delete from LONTANO_GSe.dbo.CTe_log WHERE Sequencial = 530000168667 and ID > 22934875
select TOP(50)* from LONTANO_GSe.dbo.tblLog_operacao order by DT_Hs desc
SELECT Tipo, Sequencial, Filial, TipoCTe, UF, NumConhecto, DataEmissao, Cliente, Funcionario, Valor, Status, CodStatus, DataHoraAutorizacao, TempoEspera, Ambiente, TipoCTe, Servidor 
FROM Lontano_GSe.dbo.ConsultaCTeNova
WHERE (DataEmissao  BETWEEN '2024-08-23' and '2024-08-23 23:59:46')
AND (Tipo = 'CTe') 
AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) ORDER BY DataEmissao DESC
--------------------------------------------------------------------------------------------------------------------
SELECT CodClientePagto, * from ConhecimentosTransporte where  NumConhecto = 636906 and CodUF = 'GO'
--SELECT * from Veiculos where CodVeiculo =  436597
--SELECT * from Fornecedores where CodFornecedor = 41000489
--SELECT * from Motoristas where CodMotorista = 31006502
select * from RelatorioEmbarque where NumRelatorioEmbarque = 5006949
select * from PedidosFrete where CodPedidoFrete = 53013997
SELECT * from OrdemEmbarque where NumOrdemEmbarque = 5023056
--SELECT * from Rotas where CodRota = 
SELECT * from NotasFiscaisConhecimento where SequencialConhecimento =50000019211
SELECT * from LONTANO_GSe.dbo.NFe where ID = '52240812006181002005550010000817711000327100'
EXEC VerificaCTe 50000019211
--SELECT NumConhecimentoCliente,* FROM ConhecimentosCliente  WHERE SequencialConhecimento = 50000019211 ORDER BY Sequencial
--SELECT NumConhecimentoCliente,* FROM ConhecimentosCliente order BY DataCriacao desc
--SELECT NumConhecimentoCliente,* FROM ConhecimentosCliente  WHERE  NumConhecimentoCliente = 636906
--SELECT CodClienteMatriz,* from Clientes_Complemento where CodCliente = 28000174 
--select * from ConhecimentosTransporte CT
--JOIN Clientes_Complemento comp ON comp.CodCliente = CT.CodClientePagto
----JOIN Clientes cli ON cli.CodCliente = CT.CodClientePagto
--JOIN ConhecimentosCliente CC ON SequencialConhecimento = CT.Sequencial
--WHERE CT.CodClientePagto = 73000049
exec MASTER.dbo.ProcuraObjetos 'Lontano', 'ConhecimentosCliente', 'Tudo'
select CodClienteMatriz,* from Clientes_Complemento where CodCliente =66000373

--SELECT CTRC.Sequencial, CASE WHEN ISNULL(sub.nDoc,'') = '' THEN CONVERT(DECIMAL(9,0),SUBSTRING(sub.chave,26,9)) ELSE sub.nDoc END
--	, 1, CTRC.CodUsuarioCriacao, CTRC.CodFilialCriacao, CTRC.DataCriacao
--FROM ConhecimentosTransporte ctrc
--JOIN Clientes_Complemento cli on cli.CodCliente = ctrc.CodClientePagto
--JOIN LONTANO_GSe.dbo.DoctoSubcontratacao_CTe sub ON sub.Sequencial = ctrc.Sequencial
---- WHERE ctrc.Sequencial = 50000019211
--WHERE ctrc.DataEmissao >= '2024-01-01'
--	AND cli.CodClienteMatriz = 53003771 --> Aliança Transportes
--	AND (sub.nDoc IS NOT NULL OR (sub.nDoc IS NULL AND sub.chave IS NOT NULL))
--	AND ctrc.Sequencial NOT IN (SELECT SequencialConhecimento FROM ConhecimentosCliente)
------------------------------------------------------------------------------------------------------------------------------------------------

SELECT CodFilialEmitente, * from ConhecimentosTransporte where  NumConhecto = 211086  and CodUF = 'PR' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte SET CodFilialEmitente = 'CAM' where  NumConhecto = 211086  and CodUF = 'PR' and SerieConhecto = '0'