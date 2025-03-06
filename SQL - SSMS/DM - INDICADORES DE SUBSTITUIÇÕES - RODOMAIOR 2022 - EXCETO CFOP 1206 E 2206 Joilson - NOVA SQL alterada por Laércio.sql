Declare @DataInicio as varchar(25) set @DataInicio = '2024-01-01 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2024-12-31 23:59:29'

select  reg.titulo AS 'Região', cteori.CodFilialEmitente AS 'Fil. Emit.', ped.NumeroPedidoCliente as 'Número do Pedido',
ori.coduf AS 'UF', ori.numconhecto AS 'CTCR', FORMAT (ori.ValorTotalFrete , 'N2','pt-br') as 'Valor' , convert(varchar(8),ori.dataemissao,3) AS Emissão, embori.nomecolaborador AS 'Func. Emitente',
new.coduf AS 'UF', new.numconhecto AS 'CTRC', convert(varchar(8),new.dataemissao,3) AS Emissão, emb.nomecolaborador AS 'Func. Emitente Subst.',
(ISNULL(new.ObsConhecto,isnull(convert(varchar(max),comp.xobs),convert(varchar(max),ctenew.infAdFisco)))+' '+ISNULL(convert(varchar(max),new.ComplementoObsICMS),'')) AS 'Observações CTe Substituto'
,cli.RazaoSocial as 'Nome Cliente', ISNULL(FORMAT ( new.ValorICMSFrete , 'N2','pt-br'), 0.00) AS 'Valor ICMS', IndExportacao as 'Indicador Exportação'
from conhecimentossubstituidos subs
JOIN conhecimentostransporte ori on ori.sequencial = subs.seqctrcoriginal
JOIN colaboradores embori on embori.codcolaborador = ori.codusuariocriacao
JOIN Rodomaior_GSe.dbo.cte cteori on cteori.sequencial = ori.sequencial
JOIN conhecimentostransporte new on new.sequencial = subs.seqctrcsubstituto
--JOIN PedidosFrete ped on ped.CodPedidoFrete = new.CodPedidoFrete --alterado pois estava trazendo numero dos pedidos dos CTes subistituidos ao invés dos pedidos dos CTes de origem solicitado por vanessa Bergamine 05/05/2021
JOIN PedidosFrete ped on ped.CodPedidoFrete = ori.CodPedidoFrete
JOIN ParamDespRecFilial reg ON reg.NumCol = ori.CodRegiao
JOIN Rodomaior_GSe.dbo.cte ctenew on ctenew.sequencial = new.sequencial
JOIN Rodomaior_GSe.dbo.Complemento_CTe comp on comp.Sequencial = ctenew.Sequencial
JOIN colaboradores emb on emb.codcolaborador = new.codusuariocriacao
join Clientes cli on cli.CodCliente = new.CodClientePagto
WHERE  ori.DataEmissao between @DataInicio and @DataFim and ctenew.tpcte not in (1,2) AND cteori.CFOP <> 1206 AND cteori.CFOP <> 2206 AND IndExportacao = 'N'-- and new.SituacaoConhecto = 'substituído'
union
select  reg.titulo AS 'Região', cteori.CodFilialEmitente AS 'Fil. Emit.', ped.NumeroPedidoCliente as 'Número do Pedido',
ori.coduf AS 'UF', ori.numconhecto AS 'CTCR', FORMAT (ori.ValorTotalFrete , 'N2','pt-br') as 'Valor', convert(varchar(8),ori.dataemissao,3) AS Emissão, embori.nomecolaborador AS 'Func. Emitente',
new.coduf AS 'UF', new.numconhecto AS 'CTRC', convert(varchar(8),new.dataemissao,3) AS Emissão, emb.nomecolaborador AS 'Func. Emitente Subst.',
(ISNULL(new.ObsConhecto,isnull(convert(varchar(max),comp.xobs),convert(varchar(max),ctenew.infAdFisco)))+' '+ISNULL(convert(varchar(max),new.ComplementoObsICMS),'')) AS 'Observações CTe Substituto'
,cli.RazaoSocial as 'Nome Cliente' ,ISNULL(FORMAT ( new.ValorICMSFrete , 'N2','pt-br'), 0.00) AS 'Valor ICMS', IndExportacao as 'Indicador Exportação'
from ConhecimentosComplementados subs
JOIN conhecimentostransporte ori on ori.sequencial = subs.SeqConhecimentoComplementado
JOIN colaboradores embori on embori.codcolaborador = ori.codusuariocriacao
JOIN Rodomaior_GSe.dbo.cte cteori on cteori.sequencial = ori.sequencial
JOIN conhecimentostransporte new on new.sequencial = subs.SeqConhecimentoComplementar
JOIN Rodomaior_GSe.dbo.cte ctenew on ctenew.sequencial = new.sequencial
--JOIN PedidosFrete ped on ped.CodPedidoFrete = new.CodPedidoFrete --alterado pois estava trazendo numero dos pedidos dos CTes subistituidos ao invés dos pedidos dos CTes de origem solicitado por vanessa Bergamine 05/05/2021
JOIN PedidosFrete ped on ped.CodPedidoFrete = ori.CodPedidoFrete
JOIN ParamDespRecFilial reg ON reg.NumCol = ori.CodRegiao
JOIN Rodomaior_GSe.dbo.Complemento_CTe comp on comp.Sequencial = ctenew.Sequencial
JOIN colaboradores emb on emb.codcolaborador = new.codusuariocriacao
join Clientes cli on cli.CodCliente = new.CodClientePagto
WHERE  ori.DataEmissao between @DataInicio and @DataFim and ctenew.tpcte not in (1,2) AND cteori.CFOP <> 1206 AND cteori.CFOP <> 2206 AND IndExportacao = 'N' --and new.SituacaoConhecto = 'substituído'
order by 1,2
