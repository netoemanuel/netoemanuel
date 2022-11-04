Declare @DataInicio as varchar(25) set @DataInicio = '2021-01-01 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2022-06-20 23:59:29'

select ISNULL ( ped.codcontrolecaramuru, isnull(ori.CodControleCaramuru,new.CodControleCaramuru)) as 'CARAMURU', reg.titulo AS 'Região', new.CodFilialEmitente AS 'Fil. Emit.', ped.NumeroPedidoCliente as 'Número do Pedido',
ori.coduf AS 'UF', ori.numconhecto AS 'CTCR', FORMAT (ori.ValorTotalFrete , 'N2','pt-br') as 'Valor' , convert(varchar(8),ori.dataemissao,3) AS Emissão, embori.nomecolaborador AS 'Func. Emitente',
new.coduf AS 'UF', new.numconhecto AS 'CTRC', convert(varchar(8),new.dataemissao,3) AS Emissão, emb.nomecolaborador AS 'Func. Emitente Subst.',
(ISNULL(new.ObsConhecto,isnull(convert(varchar(max),comp.xobs),convert(varchar(max),ctenew.infAdFisco)))+' '+ISNULL(convert(varchar(max),new.ComplementoObsICMS),'')) AS 'Observações CTe Substituto'
from conhecimentossubstituidos subs
JOIN conhecimentostransporte ori on ori.sequencial = subs.seqctrcoriginal
join Clientes_Complemento cli on cli.CodCliente = ori.CodClientePagto
JOIN colaboradores embori on embori.codcolaborador = ori.codusuariocriacao
JOIN Rodomaior_gse.dbo.cte cteori on cteori.sequencial = ori.sequencial
JOIN conhecimentostransporte new on new.sequencial = subs.seqctrcsubstituto
--JOIN PedidosFrete ped on ped.CodPedidoFrete = new.CodPedidoFrete --alterado pois estava trazendo numero dos pedidos dos CTes subistituidos ao invés dos pedidos dos CTes de origem solicitado por vanessa Bergamine 05/05/2021
JOIN PedidosFrete ped on ped.CodPedidoFrete = ori.CodPedidoFrete
JOIN FiliaisParamDespRecFilial filreg ON filreg.CodFilial = ped.CodFilialComissao
JOIN ParamDespRecFilial reg ON reg.NumCol = filreg.NumCol
JOIN Rodomaior_gse.dbo.cte ctenew on ctenew.sequencial = new.sequencial
JOIN Rodomaior_GSe.dbo.Complemento_CTe comp on comp.Sequencial = ctenew.Sequencial
JOIN colaboradores emb on emb.codcolaborador = new.codusuariocriacao
WHERE  new.DataEmissao between @DataInicio and @DataFim  
	and ctenew.tpcte not in (1,2) 
	AND cteori.CFOP <> 1206 
	AND cteori.CFOP <> 2206 
	AND cli.CodClienteMatriz = 1000437
union
select ISNULL ( ped.codcontrolecaramuru, isnull(ori.CodControleCaramuru,new.CodControleCaramuru)) as 'CARAMURU', reg.titulo AS 'Região', new.CodFilialEmitente AS 'Fil. Emit.', ped.NumeroPedidoCliente as 'Número do Pedido',
ori.coduf AS 'UF', ori.numconhecto AS 'CTCR', FORMAT (ori.ValorTotalFrete , 'N2','pt-br') as 'Valor', convert(varchar(8),ori.dataemissao,3) AS Emissão, embori.nomecolaborador AS 'Func. Emitente',
new.coduf AS 'UF', new.numconhecto AS 'CTRC', convert(varchar(8),new.dataemissao,3) AS Emissão, emb.nomecolaborador AS 'Func. Emitente Subst.',
(ISNULL(new.ObsConhecto,isnull(convert(varchar(max),comp.xobs),convert(varchar(max),ctenew.infAdFisco)))+' '+ISNULL(convert(varchar(max),new.ComplementoObsICMS),'')) AS 'Observações CTe Substituto'
from ConhecimentosComplementados subs
JOIN conhecimentostransporte ori on ori.sequencial = subs.SeqConhecimentoComplementado
join Clientes_Complemento cli on cli.CodCliente = ori.CodClientePagto
JOIN colaboradores embori on embori.codcolaborador = ori.codusuariocriacao
JOIN Rodomaior_gse.dbo.cte cteori on cteori.sequencial = ori.sequencial
JOIN conhecimentostransporte new on new.sequencial = subs.SeqConhecimentoComplementar
JOIN Rodomaior_gse.dbo.cte ctenew on ctenew.sequencial = new.sequencial
--JOIN PedidosFrete ped on ped.CodPedidoFrete = new.CodPedidoFrete --alterado pois estava trazendo numero dos pedidos dos CTes subistituidos ao invés dos pedidos dos CTes de origem solicitado por vanessa Bergamine 05/05/2021
JOIN PedidosFrete ped on ped.CodPedidoFrete = ori.CodPedidoFrete
JOIN FiliaisParamDespRecFilial filreg ON filreg.CodFilial = ped.CodFilialComissao
JOIN ParamDespRecFilial reg ON reg.NumCol = filreg.NumCol
JOIN Rodomaior_GSe.dbo.Complemento_CTe comp on comp.Sequencial = ctenew.Sequencial
JOIN colaboradores emb on emb.codcolaborador = new.codusuariocriacao
WHERE  new.DataEmissao between @DataInicio and @DataFim 
	and ctenew.tpcte not in (1,2) 
	AND cteori.CFOP <> 1206 
	AND cteori.CFOP <> 2206 
	AND cli.CodClienteMatriz = 1000437
order by 1,2


--select * from Clientes where RazaoSocial like 'caramuru%'
--select distinct CodClienteMatriz from Clientes_Complemento where CodCliente in (select CodCliente from Clientes where RazaoSocial like 'caramuru%')