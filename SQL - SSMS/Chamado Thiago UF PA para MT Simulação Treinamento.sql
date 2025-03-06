select * from ConhecimentosTransporte where NumConhecto = 1968987

SELECT * from Veiculos where CodVeiculo = 279585
select * from Fornecedores where CodFornecedor = 15001047
SELECT * from Motoristas WHERE CodMotorista = 2001128
SELECT * from PedidosFrete where CodPedidoFrete = 15004854
select * from RelatorioEmbarque where NumRelatorioEmbarque = 15005961
select * FROM OrdemEmbarque where NumOrdemEmbarque = 15024917
select * FROM Rotas where CodRota = 115314
select * from Clientes where CodCliente = 15002204
SELECT * from Cidades where CodCidade IN (171944,191490)

select * FROM OrdemEmbarque_log where NumOrdemEmbarque = 15024917
SELECT * from Cidades where CodCidade IN (171944,191490)


--UPDATE OrdemEmbarque SET Situacao = 1 where NumOrdemEmbarque = 15024917
--UPDATE PedidosFrete SET Situacao = 1 where CodPedidoFrete = 15004854

SELECT CodUsuarioAprovacao, ISNULL(DataAprovacao,'2011-01-01') AS DataAprovacao, SituacaoCadastral FROM Motoristas_Complemento WHERE (CodMotorista = 2001128)
select CodUsuarioAprovacao,SituacaoCadastral,DataAprovacao,Ref_DataUltEmbarque4,* FROM Motoristas_Complemento WHERE (CodMotorista = 2001128)
--UPDATE Motoristas_Complemento set CodUsuarioAprovacao = 14102, SituacaoCadastral = 'Aprovado Puxinha',DataAprovacao = '2015-01-24'  WHERE (CodMotorista = 2001128)

SELECT CodUsuarioAprovacao,DataAprovacaoCadastro,SituacaoCadastral FROM Veiculos WHERE (CodVeiculo = 279585)
--UPDATE Veiculos set CodUsuarioAprovacao = 14102, SituacaoCadastral = 'Aprovado Puxinha',DataAprovacaoCadastro = '2015-01-24'  WHERE (CodVeiculo = 279585)

SELECT TOP(1) DataEmissao FROM ConhecimentosTransporte WHERE (CodMotorista = 2001128) AND (SituacaoConhecto <> 'Cancelado') AND (TipoConhecimento = 'Normal') ORDER BY DataEmissao DESC
--UPDATE ConhecimentosTransporte set DataEmissao = GETDATE () WHERE (CodMotorista = 2001128) AND (SituacaoConhecto <> 'Cancelado') AND (TipoConhecimento = 'Normal')  --2023-01-16 19:02:002023-01-16 19:02:00


SELECT TOP(1) DataEmissao FROM ConhecimentosTransporte WHERE (CodVeiculo = 279585) AND (SituacaoConhecto <> 'Cancelado') AND (TipoConhecimento = 'Normal') and sequencial <> 800000023861 ORDER BY DataEmissao DESC
UPDATE ConhecimentosTransporte SET DataEmissao = GETDATE () WHERE (CodVeiculo = 279585) AND (SituacaoConhecto <> 'Cancelado') AND (TipoConhecimento = 'Normal') and sequencial <> 800000023861

SELECT Cidades.CodUF,* FROM FiliaisAgencias 
INNER JOIN Cidades ON FiliaisAgencias.CodCidade = Cidades.CodCidade 
WHERE FiliaisAgencias.CodFilial = 'STR'