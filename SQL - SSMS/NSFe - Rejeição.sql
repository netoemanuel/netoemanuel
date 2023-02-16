--Rejeição
--Tomador pessoa fisica com tipo de recolhimento invalido. Tipo de Recolhimento deve ser A Recolher.
select * from ConhecimentosTransporte where Sequencial in (250000071396)
select * from OrdemEmbarque where NumOrdemEmbarque in (25104815)
select * from PedidosFrete where CodPedidoFrete in (25007909)

select * from Clientes where CodCliente in (25000312,	25000888,	25000312)

--possivelmente no cadastro do Pedido existe um cliente que esta cadastro errado precisa verificar
--Chamado 5998 foi solicitada a exclusão do mesmo pelo embarcador apos notificado sobre rejeição!
