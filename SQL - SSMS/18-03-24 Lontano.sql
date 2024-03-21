use lontano

select TipoConhecimento,* from ConhecimentosTransporte where Sequencial = 190000037799
select tpEmis,* from LONTANO_GSe.dbo.cte where Sequencial = 190000037799
exec VerificaCTe 190000037799
--delete  from LONTANO_GSe.dbo.cte where Sequencial = 190000037799
--exec Grava_CTe 190000037799
--delete  from LONTANO_GSe.dbo.cte where Sequencial = 190000037800
--exec Grava_CTe 190000037800
exec VerificaCTe 190000037800
--delete  from LONTANO_GSe.dbo.cte where Sequencial = 190000037801
--exec Grava_CTe 190000037801
exec VerificaCTe 190000037801
--delete  from LONTANO_GSe.dbo.cte where Sequencial = 190000037803
--exec Grava_CTe 190000037803
exec VerificaCTe 190000037803
exec VerificaCTe 190000037801
--delete  from LONTANO_GSe.dbo.cte where Sequencial = 190000037804
--exec Grava_CTe 190000037804
exec VerificaCTe 190000037804
--delete  from LONTANO_GSe.dbo.cte where Sequencial = 190000037811
--exec Grava_CTe 190000037811
exec VerificaCTe 190000037811
--delete  from LONTANO_GSe.dbo.cte where Sequencial = 20000152135
--exec Grava_CTe 20000152135
exec VerificaCTe 260000023882


SELECT DISTINCT ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC,
ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, 
ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, 
ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, 
CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  
dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
FROM ConhecimentosTransporte
INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota 
INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade 
LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento
LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete
LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol
LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto
INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente 
INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga
WHERE ConhecimentosTransporte.SerieConhecto = 'RF' 
AND ConhecimentosTransporte.DataEmissao 
BETWEEN '02/01/2024 00:00:00' AND '02/29/2024 23:59:29'
AND ConhecimentosTransporte.CodRota = 93628 ORDER BY ConhecimentosTransporte.Sequencial
select * from ConhecimentosTransporte where ModeloDocumento not in ('Recibo')
 SELECT DISTINCT  ConhecimentosTransporte.CodFilialEmitente, ConhecimentosTransporte.TipoConhecimento,ConhecimentosTransporte.ModeloDocumento ,ConhecimentosTransporte.SerieConhecto , ConhecimentosTransporte.CodUF, FiliaisAgencias.NomeFilial, ConhecimentosTransporte.QuantidadeSaida, 
 ConhecimentosTransporte.CodUnidadeMedida, ConhecimentosTransporte.UnidadeFrete, ConhecimentosTransporte.TarifaFreteMotorista, 
 ConhecimentosTransporte.CodClientePagto, Clientes.RazaoSocial, ConhecimentosTransporte.ValorICMSFrete, ConhecimentosTransporte.Pedagio,
 ConhecimentosTransporte.DespesaAdubo, ConhecimentosTransporte.DiferencaFreteAgregado, ConhecimentosTransporte.NumConhecto, Clientes.NomeCliente,
 ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.IndComissaoComplemento, ConhecimentosTransporte.ValorTotalFrete, PedidosFrete.ICMSDestacado, 
 ConhecimentosTransporte.ValorICMSRetido, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.DataEmissao, CTRC_PIS_COFINS.COFINS, CTRC_PIS_COFINS.PIS, 
 ConhecimentosTransporte.CIOT, ConhecimentosTransporte.CodOrdemEmbarque, OrdemEmbarque.CIOT, ConhecimentosTransporte.TotalFreteMotorista, ConhecimentosTransporte.ValorRetidoINSS,
 ParamDespRecFilial.Titulo, ConhecimentosTransporte.ResponsavelValePedagio, DespesasPerdasDanosRegiao.FretesNaoRecebidos, DespesasPerdasDanosRegiao.PerdasDanos,
 ConhecimentosTransporte.ValorNF, ConhecimentosTransporte.SeguroAverbado, Rotas.IndRotaCurta, SeguroTranspCargas.Percentual, SeguroTranspCargas.Desconto,
 SeguroTranspCargas.PercRotaUrbana, SeguroTranspCargas.IOF, ConhecimentosTransporte.DespesasRateadas, DespesasPerdasDanosRegiao.ImpostosSinistros,
 DespesasPerdasDanosRegiao.FranquiaSeguros, ConhecimentosTransporte.DescontoTaxaAdm, ConhecimentosTransporte.TarifaSEFAZ, ConhecimentosTransporte.AliquotaICMSRetido, 
 DespesasPerdasDanosRegiao.LimpezaCarretas, ConhecimentosTransporte.TarifaSaque, ConhecimentosTransporte.TarifaTransferencia, DespesasPerdasDanosRegiao.PerdasDiversas,
 Clientes_Complemento.CreditoICMS, ConhecimentosTransporte.GRIS_NaoDescontado, ConhecimentosTransporte.Ajuste3ReaisTonFrota
 FROM   (((((((((((LONTANO.dbo.ConhecimentosTransporte ConhecimentosTransporte
 INNER JOIN LONTANO.dbo.ParamDespRecFilial ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao=ParamDespRecFilial.NumCol) 
 INNER JOIN LONTANO.dbo.Clientes Clientes ON ConhecimentosTransporte.CodClientePagto=Clientes.CodCliente) 
 INNER JOIN LONTANO.dbo.FiliaisAgencias FiliaisAgencias ON ConhecimentosTransporte.CodFilialEmitente=FiliaisAgencias.CodFilial) 
 INNER JOIN LONTANO.dbo.Rotas Rotas ON ConhecimentosTransporte.CodRota=Rotas.CodRota) 
 INNER JOIN LONTANO.dbo.PedidosFrete PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete=PedidosFrete.CodPedidoFrete)
 INNER JOIN LONTANO.dbo.CTRC_PIS_COFINS CTRC_PIS_COFINS ON ConhecimentosTransporte.Sequencial=CTRC_PIS_COFINS.Sequencial)
 LEFT OUTER JOIN LONTANO.dbo.OrdemEmbarque OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque=OrdemEmbarque.NumOrdemEmbarque) 
 INNER JOIN LONTANO.dbo.Clientes_Complemento Clientes_Complemento ON Clientes.CodCliente=Clientes_Complemento.CodCliente)
 INNER JOIN LONTANO.dbo.Cidades Cidades ON Rotas.CodCidadeOrigem=Cidades.CodCidade)
 INNER JOIN LONTANO.dbo.Cidades Cidades1 ON Rotas.CodCidadeDestino=Cidades1.CodCidade) 
 INNER JOIN LONTANO.dbo.SeguroTranspCargas SeguroTranspCargas ON (Cidades1.CodUF=SeguroTranspCargas.UFDestino) AND (Cidades.CodUF=SeguroTranspCargas.UFOrigem))
 LEFT OUTER JOIN LONTANO.dbo.DespesasPerdasDanosRegiao DespesasPerdasDanosRegiao ON ParamDespRecFilial.NumCol=DespesasPerdasDanosRegiao.Regiao

 WHERE
 CASE WHEN (ConhecimentosTransporte.TipoConhecimento IS NULL) THEN ''ELSE ConhecimentosTransporte.TipoConhecimento END  <> 'Substituído'
AND CASE WHEN (ConhecimentosTransporte.TipoConhecimento IS NULL) THEN ''ELSE ConhecimentosTransporte.TipoConhecimento END <> 'Substituto Contábil' 
AND ConhecimentosTransporte.DataEmissao >= ('2024/02/01') And ConhecimentosTransporte.DataEmissao <= ('2024/02/29 23:59:29') 
AND ConhecimentosTransporte.CodRota = 57805 
AND ConhecimentosTransporte.ModeloDocumento <> 'Recibo' 
AND DespesasPerdasDanosRegiao.Data >=('2024/02/01 00:00:00') 
AND DespesasPerdasDanosRegiao.Data <= ('2024/02/29 23:59:29')


 ORDER BY ParamDespRecFilial.Titulo, ConhecimentosTransporte.CodFilialEmitente, ConhecimentosTransporte.CodClientePagto



select ModeloDocumento,* from ConhecimentosTransporte where SerieConhecto = 'RF' and ModeloDocumento <> 'Recibo' order by DataCriacao desc

select ModeloDocumento,* from ConhecimentosTransporte where Sequencial in (220000073087,520000038673,520000038674,690000013236,690000013237,690000013238,690000013239,690000013240,760000057129,760000057130,760000057131)
--UPDATE ConhecimentosTransporte set ModeloDocumento = 'Recibo' where Sequencial in (220000073087,520000038673,520000038674,690000013236,690000013237,690000013238,690000013239,690000013240,760000057129,760000057130,760000057131)

