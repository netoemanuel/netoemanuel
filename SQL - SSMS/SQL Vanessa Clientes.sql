use RODOMAIOR


select *
from 
		OrdemEmbarque OE 
		JOIN ConhecimentosTransporte CT
		inner join ContasReceber CR on cr.CodCliente = CT.CodClientePagto 
		INNER JOIN clientes_complemento cli on cli.codcliente = cr.codcliente 
		LEFT JOIN ConhecimentosTransporte CT1 on CT1.CodOrdemEmbarque = OE.NumOrdemEmbarque

where 
		oe.DataOrdemEmbarque >= dateadd(month, -6, getdate())
		AND cli.codclientematriz <> 1005047 and cli.codclientematriz <> 1001954 
		AND cr.situacao = 'Confirmada'
		AND cr.DataVencimento > '2023-08-13 00:01:30.483'


select codclientematriz,* from clientes_complemento where codcliente in ( 1017599, 1015055)



