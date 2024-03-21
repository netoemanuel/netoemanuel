use RODOMAIOR


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 191817                                  
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select CIOT,* from ConhecimentosTransporte where NumConhecto = 191817 and CodUF = 'SP' --0240363749070555
--UPDATE ConhecimentosTransporte SET CIOT = 0240363749070555 where Sequencial = 200000011145
select CIOT,* from ConhecimentosTransporte_log where NumConhecto = 191817 and CodUF = 'SP' and AcaoLog = 'A'
--delete from ConhecimentosTransporte_log where NumConhecto = 191817 and CodUF = 'SP' and AcaoLog = 'A'

--4 / 86791548
--0	2024-03-04 09:13:00	Emitido	PAMCARY	0240363749070555	Pamcary	1558	20011207	200000011145	SP-191817	0240363749070555	952554	4	1	2024-03-04 09:13:34.963	11963	BDR	CADASTRO FRETE	<?xml version=1.0 encoding=utf-16?>  <ArrayOfFieldTO xmlns:xsi=http://www.w3.org/2001/XMLSchema-instance xmlns:xsd=http://www.w3.org/2001/XMLSchema>    <fieldTO>      <key>mensagem.codigo</key>      <value>0</value>    </fieldTO>    <fieldTO>      <key>mensagem.descricao</key>      <value>Operação realizada com sucesso</value>    </fieldTO>    <fieldTO>      <key>viagem.antt.ciot.numero</key>      <value>024036374907</value>    </fieldTO>    <fieldTO>      <key>viagem.antt.ciot.protocolo</key>      <value>0555</value>    </fieldTO>    <fieldTO>      <key>viagem.digito</key>      <value>6</value>    </fieldTO>    <fieldTO>      <key>viagem.id</key>      <value>86791548</value>    </fieldTO>    <fieldTO>      <key>viagem.pedagio.km</key>      <value>81.00</value>    </fieldTO>    <fieldTO>      <key>viagem.pedagio.qtde</key>      <value>1</value>    </fieldTO>    <fieldTO>      <key>viagem.pedagio.tempo.percurso</key>      <value>1 h 37 m</value>    </fieldTO>    <fieldTO>      <key>viagem.pedagio.valor</key>      <value>247.10</value>    </fieldTO>  </ArrayOfFieldTO>	SUCESSO	0 - OPERAÇÃO REALIZADA COM SUCESSO	1	4	NULL	86791548


SELECT C.Sequencial, C.CodUF, C.NumConhecto, C.DataEmissao, C.SituacaoConhecto, C.CodFilialEmitente, C.CodClienteEmitente, C.CodClienteDestinatario, C.CodRota,
C.Pedagio, C.CodOrdemEmbarque, Cli.RazaoSocial AS Emitente, Cli1.RazaoSocial AS Destinatario, Rotas.DescricaoRota AS Rota, C.CodOrdemEmbarque, OE.NumCartaoValePedagio,
OE.TipoDispositivoValePedagio, C.CodPedidoFrete, OE.CodVeiculo
FROM ConhecimentosTransporte C 
INNER JOIN Rotas ON Rotas.CodRota = C.CodRota 
INNER JOIN Clientes Cli ON Cli.CodCliente = C.CodClienteEmitente 
INNER JOIN Clientes Cli1 ON Cli1.CodCliente = C.CodClienteDestinatario 
LEFT OUTER JOIN OrdemEmbarque OE ON OE.NumOrdemEmbarque = C.CodOrdemEmbarque WHERE (C.NumConhecto = 191817)

select * from ConhecimentosTransporte C
INNER JOIN OrdemEmbarque OE ON OE.NumOrdemEmbarque = C.CodOrdemEmbarque 
WHERE --ISNULL(OE.CIOT, '') <> 'PAMCARY' AND 
C.Sequencial = 200000011145
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select CTe.Status,RL.CodTipoPagamento,CTe.CIOT,* from RODOMAIOR_GSe.dbo.cte CTe
--inner join RODOMAIOR_GSe.dbo.cte CTe on CTe.Sequencial = CT.Sequencial
inner join ConhecimentosRelacaoFretes RL on RL.NumSeqConhecto = CTe.Sequencial
where CTe.Status <> 1 and RL.CodTipoPagamento is not NULL order by CTe.DataCriacao desc

select OrdemEmbarque.CIOT,* from ConhecimentosTransporte
inner join OrdemEmbarque on NumOrdemEmbarque = CodOrdemEmbarque
where Sequencial in (70000017871,760000019487,60000045134,220000021587,340000025954,410000027728,410000027728,410000027706,410000027372,410000027339,
410000027339,410000026839,410000026797,50000024377,870000000569,410000025554,410000023550,410000023550,410000023504,410000023504,
740000002828,410000020301,680000015899,90000015010,90000015010,680000009735,210000009519,280000001311,250000002693,250000002693,
440000005528,370000003332,260000002770,440000004995,250000002473,250000002473,480000002372,20000003845,50000008584,190000004125,
80000002008,340000000776,340000000776) order by ConhecimentosTransporte.DataCriacao desc

select SUM(RL.ValorPago) from RODOMAIOR_GSe.dbo.cte CTe
--inner join RODOMAIOR_GSe.dbo.cte CTe on CTe.Sequencial = CT.Sequencial
inner join ConhecimentosRelacaoFretes RL on RL.NumSeqConhecto = CTe.Sequencial
where CTe.Status <> 1 and RL.CodTipoPagamento is not NULL
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


SELECT PIS, Cofins FROM ParametrosGerais WHERE (CodFilial = 'CST')

-- SELECT DISTINCT
--		 FiliaisAgencias.NomeFilial, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.UnidadeFrete, ConhecimentosTransporte.TarifaFreteMotorista, 
--		 ConhecimentosTransporte.ValorICMSFrete, ConhecimentosTransporte.Pedagio, ConhecimentosTransporte.DespesaAdubo, ConhecimentosTransporte.ValorNF, ConhecimentosTransporte.DiferencaFreteAgregado,
--		 ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.IndComissaoComplemento, ConhectosXSeguro.Percentual, ConhecimentosTransporte.ValorTotalFrete,
--		 ICMSConhecimento.Faturado, ConhecimentosTransporte.Outros, PedidosFrete.ICMSDestacado, ConhecimentosTransporte.ValorICMSRetido, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.DataEmissao,
--		 PedidosFrete.CodFilialComissao, CTRC_PIS_COFINS.COFINS, CTRC_PIS_COFINS.PIS, Cidades.CodCidade_Subor, Cidades1.CodCidade_Subor, Rotas.CodCidadeOrigem, Rotas.CodCidadeDestino, ConhecimentosTransporte.CIOT,
--		 ConhecimentosTransporte.CodOrdemEmbarque, OrdemEmbarque.CIOT, ConhecimentosTransporte.TotalFreteMotorista, ParametrosGerais.PercDespFinanceira, ConhecimentosTransporte.BaseCalcICMSRetido,
--		 ConhecimentosTransporte.AliquotaICMSRetido, Clientes_Complemento.CodClienteMatriz, ConhecimentosTransporte.CodUF, ConhecimentosTransporte.ResponsavelValePedagio, ConhecimentosTransporte.TarifaSEFAZ,
--		 PedidosFrete.CodUFTributacao, ConhecimentosTransporte.ValorRetidoINSS, ConhecimentosTransporte.SeguroAverbado

-- FROM   
--		 (((((((((((RODOMAIOR.dbo.ConhecimentosTransporte ConhecimentosTransporte 
--		 INNER JOIN RODOMAIOR.dbo.Clientes Clientes ON ConhecimentosTransporte.CodClientePagto=Clientes.CodCliente) 
--		 INNER JOIN RODOMAIOR.dbo.Rotas Rotas ON ConhecimentosTransporte.CodRota=Rotas.CodRota) 
--		 INNER JOIN RODOMAIOR.dbo.ConhectosXSeguro ConhectosXSeguro ON ConhecimentosTransporte.Sequencial=ConhectosXSeguro.Sequencial) 
--		 INNER JOIN RODOMAIOR.dbo.PedidosFrete PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete=PedidosFrete.CodPedidoFrete) 
--		 INNER JOIN RODOMAIOR.dbo.ICMSConhecimento ICMSConhecimento ON ConhecimentosTransporte.Sequencial=ICMSConhecimento.Sequencial)
--		 INNER JOIN RODOMAIOR.dbo.CTRC_PIS_COFINS CTRC_PIS_COFINS ON ConhecimentosTransporte.Sequencial=CTRC_PIS_COFINS.Sequencial) 
--		 INNER JOIN RODOMAIOR.dbo.ParametrosGerais ParametrosGerais ON ConhecimentosTransporte.CodFilialEmitente=ParametrosGerais.CodFilial) 
--		 LEFT OUTER JOIN RODOMAIOR.dbo.OrdemEmbarque OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque=OrdemEmbarque.NumOrdemEmbarque) 
--		 INNER JOIN RODOMAIOR.dbo.Clientes_Complemento Clientes_Complemento ON Clientes.CodCliente=Clientes_Complemento.CodCliente) 
--		 INNER JOIN RODOMAIOR.dbo.FiliaisAgencias FiliaisAgencias ON PedidosFrete.CodFilialComissao=FiliaisAgencias.CodFilial) 
--		 INNER JOIN RODOMAIOR.dbo.Cidades Cidades ON Rotas.CodCidadeOrigem=Cidades.CodCidade) 
--		 INNER JOIN RODOMAIOR.dbo.Cidades Cidades1 ON Rotas.CodCidadeDestino=Cidades1.CodCidade
--WHERE 
--	IIF(ISNULL(ConhecimentosTransporte.TipoConhecimento), '',	ConhecimentosTransporte.TipoConhecimento) <> 'Substituído' 
--	AND IIF(ISNULL(ConhecimentosTransporte.TipoConhecimento), '', ConhecimentosTransporte.TipoConhecimento) <> 'Substituto Contábil' 
--	AND ConhecimentosTransporte.DataEmissao BETWEEN ('01/01/2024 00:00:00') And  ('31/01/2024 23:59:29')
--	AND NOT (IIF(ISNULL(ConhecimentosTransporte.TipoServico), 0, ConhecimentosTransporte.TipoServico) = 1 	AND Veiculos.Propriedade = 'Próprio' 
--	AND (Clientes_Complemento.CodClienteMatriz <> 1001683 AND Clientes_Complemento.CodClienteMatriz <> 1021505))
-- ORDER BY 
--		 PedidosFrete.CodFilialComissao

--
--IIF(ISNULL(ConhecimentosTransporte.TipoConhecimento), '',	ConhecimentosTransporte.TipoConhecimento) <> 'Substituído' 
--AND IIF(ISNULL(ConhecimentosTransporte.TipoConhecimento), '', ConhecimentosTransporte.TipoConhecimento) <> 'Substituto Contábil' 
--AND ConhecimentosTransporte.DataEmissao >= Cdate('01/01/2024 00:00:00') And ConhecimentosTransporte.DataEmissao <= Cdate('31/01/2024 23:59:29')
--AND NOT (IIF(ISNULL(ConhecimentosTransporte.TipoServico), 0, ConhecimentosTransporte.TipoServico) = 1 
--AND Veiculos.Propriedade = 'Próprio' 
--AND (Clientes_Complemento.CodClienteMatriz <> 1001683 AND Clientes_Complemento.CodClienteMatriz <> 1021505))

SELECT PIS, Cofins FROM ParametrosGerais WHERE (CodFilial = 'CG')

--SELECT CONVERT(DECIMAL(15,2),(CASE WHEN (Rotas.CodCidadeOrigem = Rotas.CodCidadeDestino OR ISNULL(Cidades.CodCidade_Subor,Cidades.CodCidade) = ISNULL(Cidades1.CodCidade_Subor,Cidades1.CodCidade)) THEN 0.01 ELSE CASE ' & rsGrava!SituacaoConhecto & ' WHEN 'Cancelado' THEN 0.01 WHEN 'Substituto' THEN 0.01 WHEN 'Complemento' THEN 0.01  
--            ELSE CASE WHEN = 'Complemento' THEN 0.01 ELSE CASE WHEN Ped.ResponsavelSeguro <> 4 THEN 0.01  
--            ELSE CONVERT(DECIMAL(14, 2),( & TrocaCaracter(CCur(txtValorTotal.Text),  .) & )) END END END END *  
--            (SeguroTranspCargas.Percentual + (SeguroTranspCargas.Percentual * IOF/100)) / 100)) AS SeguroAverbado  
--            FROM Pedidosfrete PED  
--            JOIN Rotas ON PED.CodRota = Rotas.CodRota  
--            JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade  
--            JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade  
--            JOIN SeguroTranspCargas ON Cidades.CodUF = SeguroTranspCargas.UFOrigem AND Cidades1.CodUF = SeguroTranspCargas.UFDestino  
--            WHERE (PED.CodPedidoFrete =  & rsGrava!CodPedidoFrete & ) AND (Rotas.CodRota =  & rsGrava!CodRota & )


SELECT ResponsavelSeguro, * FROM PEDIDOSFRETE  PF INNER JOIN ROTAS R ON PF.CODROTA = R.CODROTA
	WHERE PF.CodFilialCriacao = 'CST' -- R.CodCidadeOrigem = 54887 ORDER BY PF.DATACRIACAO DESC



--\GS2000\Relatorios\Financeiro\RelResumoUFFilial.rpt   

--	//LNC/EMANUEL - 04/04/2023 -> Ajuste do Seguro, conforme está na guia 5 do CTRC
--if {@Rota_InterMunicipal} <> "True" then
--    IF {ConhecimentosTransporte.DataEmissao} < CDate("01/01/2018 00:00:00") THEN
--        {ConhecimentosTransporte.ValorNF} * ({ConhectosXSeguro.Percentual} / 100)
--    else
--        If Not IsNull({ConhecimentosTransporte.SeguroAverbado}) Then {ConhecimentosTransporte.SeguroAverbado} ELSE 0
--else
--    0


select SeguroAverbado, DataEmissao, Sequencial from ConhecimentosTransporte where CodFilialEmitente = 'CST' order by DataCriacao desc

select PercDescSeguro, * from ParametrosGerais_Log where CodFilial = 'CST' order by DataLog desc


select * from SeguroTranspCargas where IOF = 0 and UFOrigem = 'PR'