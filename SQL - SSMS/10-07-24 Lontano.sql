 SELECT * from ConhecimentosTransporte where NumConhecto = 207837 and CodUF = 'PR'
 EXEC MonitoraMDFe 91061209
 
 --UPDATE LONTANO_GSe.dbo.MDFe set Status = 0 where Sequencial = 1684225

 SELECT TipoConhecimento,* from ConhecimentosTransporte where  NumConhecto = 55803 and CodUF = 'MG' AND SerieConhecto  = '2'
 --UPDATE ConhecimentosTransporte SET SituacaoConhecto = 'Faturado', TipoConhecimento = 'Substituído' where  NumConhecto = 55803 and CodUF = 'MG' AND SerieConhecto  = '2'
 EXEC MonitoraMDFe 91061209
 select * from CaramuruControle where ID LIKE 'AUT-0000213064'
 SELECT CodControleCaramuru,* from PedidosFrete where CodPedidoFrete = 19003430
 --UPDATE  PedidosFrete set CodControleCaramuru = 'AUT-0000213064' where CodPedidoFrete = 19003430
 
 
 	SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
	INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
	INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
	inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
	LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
	WHERE CTRC.SerieConhecto = '2' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 65209                                 
	ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC  -- REPOMFRETE: DOCUMENTO TIPO: NFSE /CÓDIGO: 632333 /SÉRIE: 2 /FILIAL:RVD NÃO INFORMADO.


SELECT TipoConhecimento,* from ConhecimentosTransporte where Sequencial = 30000160930
SELECT TipoConhecimento,* from ConhecimentosTransporte where  NumConhecto = 65209 and CodUF = 'GO' AND SerieConhecto  = '2'
--UPDATE ConhecimentosTransporte SET NumConhecto = 65209  where Sequencial = 30000160930
 
 
 SELECT DISTINCT "RelEmbarqueUFFilial_Cidades"."DataEmissao", "RelEmbarqueUFFilial_Cidades"."CodUF", "RelEmbarqueUFFilial_Cidades"."NumConhecto", "RelEmbarqueUFFilial_Cidades"."QuantidadeSaida", "RelEmbarqueUFFilial_Cidades"."CodUnidadeMedida", "RelEmbarqueUFFilial_Cidades"."TarifaFreteEmpresa", "RelEmbarqueUFFilial_Cidades"."ValorTotalFrete", "RelEmbarqueUFFilial_Cidades"."ValorICMSRetido", "RelEmbarqueUFFilial_Cidades"."TarifaFreteMotorista", "RelEmbarqueUFFilial_Cidades"."TarifaSaque", "RelEmbarqueUFFilial_Cidades"."TarifaTransferencia", "RelEmbarqueUFFilial_Cidades"."Pedagio", "RelEmbarqueUFFilial_Cidades"."ResponsavelValePedagio", "RelEmbarqueUFFilial_Cidades"."ValorNF", "RelEmbarqueUFFilial_Cidades"."SituacaoConhecto", "RelEmbarqueUFFilial_Cidades"."SeguroAverbado", "RelEmbarqueUFFilial_Cidades"."ValorICMSFrete", "RelEmbarqueUFFilial_Cidades"."TarifaSEFAZ", "RelEmbarqueUFFilial_Cidades"."AliquotaICMSRetido", "RelEmbarqueUFFilial_Cidades"."DespesaAdubo", "RelEmbarqueUFFilial_Cidades"."DespesasRateadas", "RelEmbarqueUFFilial_Cidades"."DescontoTaxaAdm", "RelEmbarqueUFFilial_Cidades"."DescUF", "RelEmbarqueUFFilial_Cidades"."CodClientePagto", "RelEmbarqueUFFilial_Cidades"."RazaoSocial", "RelEmbarqueUFFilial_Cidades"."CodFilialEmitente", "RelEmbarqueUFFilial_Cidades"."NomeFilial", "RelEmbarqueUFFilial_Cidades"."CodRota", "RelEmbarqueUFFilial_Cidades"."DescricaoRota", "RelEmbarqueUFFilial_Cidades"."Sequencial", "RelEmbarqueUFFilial_Cidades"."IndRotaCurta", "RelEmbarqueUFFilial_Cidades"."Percentual", "RelEmbarqueUFFilial_Cidades"."Desconto", "RelEmbarqueUFFilial_Cidades"."IOF", "RelEmbarqueUFFilial_Cidades"."PercRotaUrbana", "RelEmbarqueUFFilial_Cidades"."DiferencaFreteAgregado", "RelEmbarqueUFFilial_Cidades"."ICMSDestacado", "RelEmbarqueUFFilial_Cidades"."TotalFreteMotorista", "RelEmbarqueUFFilial_Cidades"."ValorRetidoINSS", "RelEmbarqueUFFilial_Cidades"."PIS", "RelEmbarqueUFFilial_Cidades"."CodOrdemEmbarque", "RelEmbarqueUFFilial_Cidades"."CIOT", "RelEmbarqueUFFilial_Cidades"."UnidadeFrete", "RelEmbarqueUFFilial_Cidades"."GRIS_NaoDescontado", "RelEmbarqueUFFilial_Cidades"."Ajuste3ReaisTonFrota", "RelEmbarqueUFFilial_Cidades"."CodCidade_Subor_Cidades", "RelEmbarqueUFFilial_Cidades"."CodCidadeCidades", "RelEmbarqueUFFilial_Cidades"."CodCidade_Subor_Cidades1", "RelEmbarqueUFFilial_Cidades"."CodCidadeCidades1", "RelEmbarqueUFFilial_Cidades"."DistanciaGoogleMaps", "RelEmbarqueUFFilial_Cidades"."KmAsfalto", "RelEmbarqueUFFilial_Cidades"."KmTerra", "RelEmbarqueUFFilial_Cidades"."IndExportacao", "RelEmbarqueUFFilial_Cidades"."ClassifFiscal", "RelEmbarqueUFFilial_Cidades"."COFINS", "RelEmbarqueUFFilial_Cidades"."TipoConhecimento", "RelEmbarqueUFFilial_Cidades"."CPF", "RelEmbarqueUFFilial_Cidades"."CNPJ_CPF", "RelEmbarqueUFFilial_Cidades"."IndRetencoesObrigatorias", "RelEmbarqueUFFilial_Cidades"."ModeloDocumento", "RelEmbarqueUFFilial_Cidades"."Propriedade", "RelEmbarqueUFFilial_Cidades"."Outros"
 FROM   "LONTANO"."dbo"."RelEmbarqueUFFilial_Cidades" "RelEmbarqueUFFilial_Cidades"
 where
RelEmbarqueUFFilial_Cidades.DataEmissao >= ('09/07/2024 00:00:00') And RelEmbarqueUFFilial_Cidades.DataEmissao <= ('10/07/2024 23:59:29')
AND (RelEmbarqueUFFilial_Cidades.SituacaoConhecto = 'Emitido' OR RelEmbarqueUFFilial_Cidades.SituacaoConhecto = 'Faturado')
AND (RelEmbarqueUFFilial_Cidades.CodCidadeOrigem = 40207) AND (RelEmbarqueUFFilial_Cidades.CodCidadeDestino = 40207) AND RelEmbarqueUFFilial_Cidades.Propriedade = 'Próprio'
 ORDER BY "RelEmbarqueUFFilial_Cidades"."CodUF", "RelEmbarqueUFFilial_Cidades"."CodFilialEmitente", "RelEmbarqueUFFilial_Cidades"."CodClientePagto", "RelEmbarqueUFFilial_Cidades"."CodRota"


where
RelEmbarqueUFFilial_Cidades.DataEmissao >= Cdate('09/07/2024 00:00:00') And RelEmbarqueUFFilial_Cidades.DataEmissao <= Cdate('10/07/2024 23:59:29')
AND (ConhecimentosTransporte.SituacaoConhecto = 'Emitido' OR ConhecimentosTransporte.SituacaoConhecto = 'Faturado')
AND (RelEmbarqueUFFilial_Cidades.CodCidadeOrigem = 40207) AND (RelEmbarqueUFFilial_Cidades.CodCidadeDestino = 40207) AND RelEmbarqueUFFilial_Cidades.Propriedade = 'Próprio'


