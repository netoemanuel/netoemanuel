use RODOMAIOR
select * from Temp_BaixasMultiplas
--delete from Temp_BaixasMultiplas where Situacao = 'Agendada PAG-FOR'


select * from CTRC_Cargill_Ocorrencia where sequencial = 220000021112 order by DataCriacao desc
select * from CTRC_Cargill  where sequencial = 220000021112


select * from Veiculos where PlacaVeiculo = 'AQE9F38'
select * from ConjuntosVeiculo where CodVeiculo = 277942

select CodVeiculo, * from OrdemEmbarque where NumOrdemEmbarque = 65004168   --103778
--UPDATE OrdemEmbarque set CodVeiculo = 277942 where NumOrdemEmbarque = 65004168


select * from Veiculos where CodVeiculo = 103778
select * from ConjuntosVeiculo where CodVeiculo = 103778

exec MonitoraMDFe 65004168


 SELECT DISTINCT "PedidosFrete"."CodFornecedor", "Fornecedores"."RazaoSocial", "PedidosFrete"."CodPedidoFrete", "PedidosFrete"."DataPedido", "PedidosFrete"."CodClientePagamento", "Clientes2"."NomeCliente", "PedidosFrete"."CodClienteEmitente", "Clientes"."NomeCliente", "PedidosFrete"."CodClienteDestinatario", "Clientes1"."NomeCliente", "ConhecimentosTransporte"."QuantidadeSaida", "ConhecimentosTransporte"."DespesaAdubo", "ConhecimentosTransporte"."UnidadeFrete", "ConhecimentosTransporte"."SituacaoConhecto", "ContasReceber"."Situacao", "ConhecimentosTransporte"."NumConhecto", "Fornecedores"."CodFornecedor", "PedidosFrete"."NumeroPedidoCliente"
 FROM   (((((("RODOMAIOR"."dbo"."PedidosFrete" "PedidosFrete" INNER JOIN "RODOMAIOR"."dbo"."Fornecedores" "Fornecedores" ON "PedidosFrete"."CodFornecedor"="Fornecedores"."CodFornecedor") INNER JOIN "RODOMAIOR"."dbo"."Clientes" "Clientes" ON "PedidosFrete"."CodClienteEmitente"="Clientes"."CodCliente") INNER JOIN "RODOMAIOR"."dbo"."Clientes" "Clientes1" ON "PedidosFrete"."CodClienteDestinatario"="Clientes1"."CodCliente") INNER JOIN "RODOMAIOR"."dbo"."Clientes" "Clientes2" ON "PedidosFrete"."CodClientePagamento"="Clientes2"."CodCliente") INNER JOIN "RODOMAIOR"."dbo"."ConhecimentosTransporte" "ConhecimentosTransporte" ON "PedidosFrete"."CodPedidoFrete"="ConhecimentosTransporte"."CodPedidoFrete") INNER JOIN "RODOMAIOR"."dbo"."ConhecimentosContasReceber" "ConhecimentosContasReceber" ON "ConhecimentosTransporte"."Sequencial"="ConhecimentosContasReceber"."NumSeqConhecto") INNER JOIN "RODOMAIOR"."dbo"."ContasReceber" "ContasReceber" ON "ConhecimentosContasReceber"."CodContasReceber"="ContasReceber"."CodContasReceber"
 ORDER BY "PedidosFrete"."CodFornecedor", "PedidosFrete"."CodPedidoFrete"



