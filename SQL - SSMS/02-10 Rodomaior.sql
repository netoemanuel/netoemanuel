use RODOMAIOR


exec VerificaCTe 250000005818
exec MonitoraMDFe 66022429
--update RODOMAIOR_GSe.dbo.mdfe set Status = 0 where Sequencial = 526278
exec MonitoraMDFe 69011946
select * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe =525800
EXEC MonitoraMDFe 41026412

SELECT Tipo, Sequencial, Filial, TipoCTe, UF, NumConhecto as NumeroOrdem, DataEmissao, Cliente, Funcionario,
Valor, Status, CodStatus, DataHoraAutorizacao,TempoEspera, Ambiente, TipoCTe, Servidor
FROM Rodomaior_GSe.dbo.ConsultaCTeNova
WHERE tipo = 'MDFe'
and (DataEmissao BETWEEN getdate()-1AND getdate()) 
AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) 
ORDER BY DataEmissao DESC

SELECT Status, * FROM RODOMAIOR_GSe.dbo.Eventos_MDFe WHERE DataCriacao >= Getdate()- 60 AND Status NOT IN (1, 5, 9)
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe in (524792,526057,525971,525339,525916,526124,526070,525666,526161,524134,525983,525769,524137,524684,525435,525358,526126,524146)
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe in (526013,525491)
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe in (526151)
exec MonitoraMDFe 18014026
exec MonitoraMDFe 51010804

--delete from RODOMAIOR_GSe.dbo.MDFe_LOG where Sequencial = 525800 and id = 6138547
--delete from RODOMAIOR_GSe.dbo.MDFe_LOG where Sequencial = 525491 and id = 6138666
--delete from RODOMAIOR_GSe.dbo.MDFe_LOG where Sequencial = 526013 and id = 6138665

select mdfe.Sequencial, mdfe.CodManifestoCarga, ev.status, mdfe.[Status], ev.dhEvento, mdfe.dhEmi 
from RODOMAIOR_GSe.dbo.Eventos_MDFe ev
join RODOMAIOR_GSe.dbo.MDFe mdfe on mdfe.Sequencial = ev.Sequencial
where ev.status not in (1,2,5,9)


select DataVencimento,Situacao, CodContaBancaria, CodContaBancaria, * from ContasPagar where CodContasPagar =1382068
--update ContasPagar set DataVencimento = '2023-09-29 00:00:00' where CodContasPagar =1382068
--update ContasPagar set Situacao = 'Previsão' where CodContasPagar =1382068
--update ContasPagar set Situacao = 'Liberada' where CodContasPagar =1382068 -- CG,552

select Gerado,  * from MovimentacaoBancaria where CodMovBancaria = 1513367
--UPDATE MovimentacaoBancaria set gerado = 'N' where CodMovBancaria = 1513367


SELECT Tipo, Sequencial, Filial, TipoCTe, UF, NumConhecto, DataEmissao, Cliente, Funcionario, Valor, Status, CodStatus, DataHoraAutorizacao, TempoEspera, Ambiente, TipoCTe, Servidor FROM Rodomaior_GSe.dbo.ConsultaCTeNova WHERE (DataEmissao BETWEEN '09/29/2023 00:00:00' AND '09/29/2023 23:59:29') AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) ORDER BY DataEmissao DESC


--update RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial = 740000004225
exec VerificaCTe 740000004225

SELECT Status, * FROM RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 523187
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status =  0 where Sequencial_MDFe = 523187


select CodMotorista,CodVeiculo, * from OrdemEmbarque where NumOrdemEmbarque = 57004611
select CodMotorista,CodVeiculo,* from OrdemEmbarque where NumOrdemEmbarque = 57004612

select * from ConhecimentosTransporte where CodOrdemEmbarque = 57004611
select * from ConhecimentosTransporte where CodOrdemEmbarque = 57004612


exec VerificaCTe 340000025022


exec MonitoraMDFe 76022556 -- Rejeição: Existe MDF-e não encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe Não Encerrada:52230911595217000531580050000957811005698764][NroProtocolo:952230007563564]   AMC4j13

exec MonitoraMDFe 76022492

--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe= 526293



