Declare @DataInicio as varchar(25) set @DataInicio = '2024-06-01 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2024-06-30 23:59:29'

select  reg.titulo AS 'Regi�o', cteori.CodFilialEmitente AS 'Fil. Emit.', ped.NumeroPedidoCliente as 'N�mero do Pedido',
ori.coduf AS 'UF', ori.numconhecto AS 'CTCR', FORMAT (ori.ValorTotalFrete , 'N2','pt-br') as 'Valor' , FORMAT (ori.ValorICMSFrete, 'N2','pt-br') AS 'ICMS Frete' ,convert(varchar(8),ori.dataemissao,3) AS Emiss�o, embori.nomecolaborador AS 'Func. Emitente',
new.coduf AS 'UF', new.numconhecto AS 'CTRC', FORMAT (new.ValorTotalFrete , 'N2','pt-br') as 'Valor' , FORMAT (new.ValorICMSFrete, 'N2','pt-br') AS 'ICMS Frete', convert(varchar(8),new.dataemissao,3) AS Emiss�o, emb.nomecolaborador AS 'Func. Emitente Subst.',
(ISNULL(new.ObsConhecto,isnull(convert(varchar(max),comp.xobs),convert(varchar(max),ctenew.infAdFisco)))+' '+ISNULL(convert(varchar(max),new.ComplementoObsICMS),'')) AS 'Observa��es CTe Substituto'
,cli.RazaoSocial as 'Nome Cliente',  IndExportacao AS 'Exporta��o'
from conhecimentossubstituidos subs
JOIN conhecimentostransporte ori on ori.sequencial = subs.seqctrcoriginal
JOIN colaboradores embori on embori.codcolaborador = ori.codusuariocriacao
JOIN Rodomaior_gse.dbo.cte cteori on cteori.sequencial = ori.sequencial
JOIN conhecimentostransporte new on new.sequencial = subs.seqctrcsubstituto
--JOIN PedidosFrete ped on ped.CodPedidoFrete = new.CodPedidoFrete --alterado pois estava trazendo numero dos pedidos dos CTes subistituidos ao inv�s dos pedidos dos CTes de origem solicitado por vanessa Bergamine 05/05/2021
JOIN PedidosFrete ped on ped.CodPedidoFrete = ori.CodPedidoFrete
JOIN FiliaisParamDespRecFilial filreg ON filreg.CodFilial = ped.CodFilialComissao
JOIN ParamDespRecFilial reg ON reg.NumCol = filreg.NumCol
JOIN Rodomaior_gse.dbo.cte ctenew on ctenew.sequencial = new.sequencial
JOIN Rodomaior_GSe.dbo.Complemento_CTe comp on comp.Sequencial = ctenew.Sequencial
JOIN colaboradores emb on emb.codcolaborador = new.codusuariocriacao
join Clientes cli on cli.CodCliente = new.CodClientePagto
WHERE  ori.DataEmissao between @DataInicio and @DataFim  and ctenew.tpcte not in (1,2) AND cteori.CFOP <> 1206 AND cteori.CFOP <> 2206 -- and new.SituacaoConhecto = 'substitu�do'
		 AND ori.SerieConhecto = '0'	
union
select  reg.titulo AS 'Regi�o', cteori.CodFilialEmitente AS 'Fil. Emit.', ped.NumeroPedidoCliente as 'N�mero do Pedido',
ori.coduf AS 'UF', ori.numconhecto AS 'CTCR', FORMAT (ori.ValorTotalFrete , 'N2','pt-br') as 'Valor' , FORMAT (ori.ValorICMSFrete, 'N2','pt-br') AS 'ICMS Frete' ,convert(varchar(8),ori.dataemissao,3) AS Emiss�o, embori.nomecolaborador AS 'Func. Emitente',
new.coduf AS 'UF', new.numconhecto AS 'CTRC', FORMAT (new.ValorTotalFrete , 'N2','pt-br') as 'Valor' , FORMAT (new.ValorICMSFrete, 'N2','pt-br') AS 'ICMS Frete', convert(varchar(8),new.dataemissao,3) AS Emiss�o, emb.nomecolaborador AS 'Func. Emitente Subst.',
(ISNULL(new.ObsConhecto,isnull(convert(varchar(max),comp.xobs),convert(varchar(max),ctenew.infAdFisco)))+' '+ISNULL(convert(varchar(max),new.ComplementoObsICMS),'')) AS 'Observa��es CTe Substituto'
,cli.RazaoSocial as 'Nome Cliente',IndExportacao AS 'Exporta��o'
from ConhecimentosComplementados subs
JOIN conhecimentostransporte ori on ori.sequencial = subs.SeqConhecimentoComplementado
JOIN colaboradores embori on embori.codcolaborador = ori.codusuariocriacao
JOIN Rodomaior_gse.dbo.cte cteori on cteori.sequencial = ori.sequencial
JOIN conhecimentostransporte new on new.sequencial = subs.SeqConhecimentoComplementar
JOIN Rodomaior_gse.dbo.cte ctenew on ctenew.sequencial = new.sequencial
--JOIN PedidosFrete ped on ped.CodPedidoFrete = new.CodPedidoFrete --alterado pois estava trazendo numero dos pedidos dos CTes subistituidos ao inv�s dos pedidos dos CTes de origem solicitado por vanessa Bergamine 05/05/2021
JOIN PedidosFrete ped on ped.CodPedidoFrete = ori.CodPedidoFrete
JOIN FiliaisParamDespRecFilial filreg ON filreg.CodFilial = ped.CodFilialComissao
JOIN ParamDespRecFilial reg ON reg.NumCol = filreg.NumCol
JOIN Rodomaior_GSe.dbo.Complemento_CTe comp on comp.Sequencial = ctenew.Sequencial
JOIN colaboradores emb on emb.codcolaborador = new.codusuariocriacao
join Clientes cli on cli.CodCliente = new.CodClientePagto
WHERE  ori.DataEmissao between @DataInicio and @DataFim and ctenew.tpcte not in (1,2) AND cteori.CFOP <> 1206 AND cteori.CFOP <> 2206 
	AND ori.SerieConhecto = '0'														--and new.SituacaoConhecto = 'substitu�do'
order�by�1,2
