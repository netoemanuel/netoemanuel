use LONTANO


select * from Fornecedores where DataValidacaoPIS = null
select * from ConhecimentosTransporte where NumConhecto = 386784 and CodUF = 'MG'

select CodGerenciadoraRisco, DataConsulta, NumeroConsulta,ValorTotal,* from OrdemEmbarque where NumOrdemEmbarque = 98031146 -- 1087279 / 2023-08-18 00:14:00.000 / 01 / 33.00
select CodGerenciadoraRisco, DataConsulta, NumeroConsulta,ValorTotal,* from OrdemEmbarque_log where NumOrdemEmbarque = 98031146 
--UPDATE OrdemEmbarque set CodGerenciadoraRisco = NULL, DataConsulta = null , NumeroConsulta = null, ValorTotal = null  where NumOrdemEmbarque = 98031146 
--UPDATE OrdemEmbarque set CodGerenciadoraRisco = 1087279, DataConsulta = '2023-08-18 00:14:00.000' , NumeroConsulta = 01, ValorTotal = 33.00  where NumOrdemEmbarque = 98031146 
SELECT CodFornecedor, DataConsulta, NumeroConsulta, ValorTotal,* FROM GerenciamentoRisco order by DataCriacao desc -- where SeqConhecto = 980000027263

SELECT COUNT(*) AS Registros FROM ConhecimentosComplementados cc, ConhecimentosTransporte ct WHERE (cc.SeqConhecimentoComplementar = 220000070560) AND (ct.Sequencial = cc.SeqConhecimentoComplementado)


--SELECT CodFornecedor FROM GerenciamentoRisco_Parametros WHERE CodFornecedor = 98000872

select * from Motoristas where CodMotorista = 98000990

SELECT CodGerenciadoraRisco, DataConsulta, NumeroConsulta, ValorTotal, ISNULL(IndNaoDescontarMotorista, 'N') AS IndNaoDescontarMotorista, CodUsuarioAutorizaNaoDesc FROM OrdemEmbarque WHERE (NumOrdemEmbarque = 98031146)

SELECT CodFornecedor, DataConsulta, NumeroConsulta, ValorTotal,* FROM GerenciamentoRisco  where NumeroConsulta = '1087279'


SELECT CodGerenciadoraRisco, OE.DataConsulta, *
FROM OrdemEmbarque OE
LEFT JOIN GerenciamentoRisco GR ON CONVERT(VARCHAR, OE.CodGerenciadoraRisco) = CONVERT(VARCHAR, GR.NumeroConsulta)
WHERE OE.DataConsulta IS NOT NULL AND GR.DataConsulta IS NULL ORDER BY OE.DataCriacao DESC




select CodGerenciadoraRisco, DataConsulta, NumeroConsulta,ValorTotal,* from OrdemEmbarque where NumOrdemEmbarque = 1000275

select TOP (2) CodFornecedor,* from Motoristas order by DataCadastro desc

select TOP (2)* from Veiculos order by DataCriacao desc

select CodProprietarioCTe,* from Veiculos where CodVeiculo = 45172

exec MonitoraMDFe 74010744

--UPDATE OrdemEmbarque set Situacao = 2 WHERE NumOrdemEmbarque = 1000306

select CodGerenciadoraRisco, DataConsulta, NumeroConsulta,ValorTotal,* from OrdemEmbarque where NumOrdemEmbarque = 1000306

select * from ConhecimentosTransporte  where CodFilialEmitente = 'CG' order by DataEmissao desc
--UPDATE ConhecimentosTransporte set CodVeiculo = 578797, CodFornecedor = 2005914, CodOrdemEmbarque = 1000306, CodMotorista = 1073909 where Sequencial = 10000019800