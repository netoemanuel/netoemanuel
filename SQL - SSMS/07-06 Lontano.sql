use LONTANO


SELECT * from PedidosFrete where NumeroPedidoCliente LIKE '%/SSP%'
--88078644
SELECT CIOT,modelodocumento,* FROM PedidosFrete WHERE (CodPedidoFrete = 88004080)

select EmpresaValePedagio,TipoDispositivoValePedagio,* from OrdemEmbarque where NumOrdemEmbarque IN(22084999,25119799)
--UPDATE OrdemEmbarque SET TipoDispositivoValePedagio = 0 where NumOrdemEmbarque IN (25119799)



