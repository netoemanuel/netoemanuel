select ID, * from RODOMAIOR_GSe.dbo.nfe where ID = '35240261149589009569550140001109981956575350'
select ID,* from RODOMAIOR_GSe.dbo.nfe where ID = '35240261149589009569550140001109971951467021'
select ID,* from RODOMAIOR_GSe.dbo.nfe where ID = '35240261149589009569550140001109941944055234'
select ID,* from RODOMAIOR_GSe.dbo.nfe where ID = '35240261149589009569550140001110001982446082'
select ID,* from RODOMAIOR_GSe.dbo.nfe where ID = '35240261149589009569550140001110031057598139'
select ID,* from RODOMAIOR_GSe.dbo.nfe where ID = '35240261149589009569550140001110031057598139'
select ID,* from RODOMAIOR_GSe.dbo.nfe where ID = '35240261149589009569550140001109911934151964'
select ID,* from RODOMAIOR_GSe.dbo.nfe where ID = '35240261149589009569550140001110041057613801'
select ID,* from RODOMAIOR_GSe.dbo.nfe where ID = '35240261149589009569550140001109861899819577'
select ID,* from RODOMAIOR_GSe.dbo.nfe where IE = '543017726114' order by DataCriacao desc
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 170000013648


--select ID,* from RODOMAIOR_GSe.dbo.nfe order by DataCriacao desc

SELECT COUNT(*) AS Registros FROM PedidosFrete P 
JOIN Clientes_Complemento C ON C.CodCliente = P.CodClientePagamento
WHERE P.CodPedidoFrete = 1009147 AND P.AverbacaoImpSuspenso = 'S' AND (C.CodClienteMatriz not in (16000231,1000456))


select CodClienteMatriz,* from Clientes_Complemento where CodCliente = 16000225

