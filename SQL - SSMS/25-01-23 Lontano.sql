exec MonitoraMDFe 24080599 --Rejeição: Existe MDF-e não encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe Não Encerrada:52240111455829000367580030003716061014736303][NroProtocolo:952240000622489]

exec MonitoraMDFe 24080574



select DataEmissao,DataCriacao,* from ConhecimentosTransporte where NumConhecto = 612018 and CodUF = 'GO'
--update ConhecimentosTransporte set DataEmissao = GETDATE (), DataCriacao = GETDATE ()  where sequencial = 240000057217
--update LONTANO_GSe.dbo.CTe set dhEmi = GETDATE (), DataCriacao = GETDATE ()  where sequencial = 240000057217


select NumFormulario,* from ConhecimentosTransporte where NumConhecto = 56376 and CodUF = 'MG' --1952869
--update ConhecimentosTransporte set NumFormulario = 0 where sequencial = 530000161030


SELECT Observacao,* FROM Fornecedores WHERE (CodFornecedor =1000002)
select CodCidade,* from Clientes where CodCliente = 1000001

select * from OrdemEmbarque where NumOrdemEmbarque = 53101730
--UPDATE OrdemEmbarque set CIOT = 'REPOM' where NumOrdemEmbarque = 53101730