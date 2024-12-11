SELECT SUM(CTRC.QuantidadeSaida) AS QuantidadeSaida,
SUM(CTRC.ValorTotalFrete) AS FreteEmpresa,
SUM(((ISNULL(CTRC.TarifaFreteMotorista, 0) + ISNULL(CTRC.DiferencaFreteAgregado, 0)) * ISNULL(CTRC.QuantidadeSaida, 0)) / CASE ISNULL(CTRC.UnidadeFrete, 1)
WHEN 1 THEN 1000
WHEN 2 THEN 60
WHEN 4 THEN 40
ELSE 1
END + ISNULL(TarifaSaque, 0) + ISNULL(TarifaTransferencia, 0)) AS FreteMotorista,
SUM(ISNULL(CTRC.ValorTotalFrete, 0) - ((ISNULL(CTRC.TarifaFreteMotorista, 0) + ISNULL(CTRC.DiferencaFreteAgregado, 0)) * ISNULL(CTRC.QuantidadeSaida, 0) / CASE ISNULL(CTRC.UnidadeFrete, 1)
WHEN 1 THEN 1000
WHEN 2 THEN 60
WHEN 4 THEN 40
ELSE 1
END + ISNULL(TarifaSaque, 0) + ISNULL(TarifaTransferencia, 0))) AS FreteBruto,
(SUM(ISNULL(CTRC.ValorTotalFrete, 0) - ((ISNULL(CTRC.TarifaFreteMotorista, 0) + ISNULL(CTRC.DiferencaFreteAgregado, 0)) * ISNULL(CTRC.QuantidadeSaida, 0) / CASE ISNULL(CTRC.UnidadeFrete, 1)
WHEN 1 THEN 1000
WHEN 2 THEN 60
WHEN 4 THEN 40
ELSE 1
END + ISNULL(TarifaSaque, 0) + ISNULL(TarifaTransferencia, 0))) / SUM (CASE
WHEN ISNULL(CTRC.ValorTotalFrete, 0) > 0 THEN CTRC.ValorTotalFrete
ELSE 1
END) * 100) AS PercFreteBruto,
SUM(ISNULL(CTRC.ValorTotalFrete, 0) - ((ISNULL(CTRC.TarifaFreteMotorista, 0) + ISNULL(CTRC.DiferencaFreteAgregado, 0)) * ISNULL(CTRC.QuantidadeSaida, 0) / CASE ISNULL(CTRC.UnidadeFrete, 1)
WHEN 1 THEN 1000
WHEN 2 THEN 60
WHEN 4 THEN 40
ELSE 1
END + ISNULL(TarifaSaque, 0) + ISNULL(TarifaTransferencia, 0)) - CASE
WHEN ISNULL(CTRC.ResponsavelValePedagio, 0) <> 0 THEN 0
ELSE ISNULL(CTRC.Pedagio, 0)
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') IN ('Puxinha', 'Mercado Interno') THEN 0
ELSE (ISNULL(CTRC_PIS_COFINS.PIS, 0) + ISNULL(CTRC_PIS_COFINS.COFINS, 0))
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') = 'Puxinha' THEN 20.00
ELSE ISNULL(CASE
WHEN CTRC.DataEmissao < '2012-07-01' THEN (CASE CTRC.SituacaoConhecto
WHEN 'Cancelado' THEN 0.01
WHEN 'Substituto' THEN 0.01
WHEN 'Complemento' THEN 0.01
ELSE ISNULL(CTRC.ValorNF, 0)
END * ((CASE
WHEN ISNULL(Rotas.IndRotaCurta, 'N') <> 'S' THEN ISNULL(Seg.Percentual, 0) - (ISNULL(Seg.Percentual, 0) * (ISNULL(Seg.Desconto, 0) / 100))
ELSE (ISNULL(Seg.PercRotaUrbana, 0) - ISNULL(Seg.IOF, 0))
END) / 100))
ELSE CTRC.SeguroAverbado
END, 0)
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') = 'Puxinha' THEN 0
ELSE ISNULL(CTRC.GRIS_NaoDescontado, 0)
END - ISNULL(CTRC.ValorICMSFrete, 0) - CASE
WHEN isnull(ctrc.TarifaSEFAZ, 0) > isnull(ctrc.ValorTotalFrete, 0)
AND isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN CASE
            WHEN isnull(Clientes_Complemento.CreditoICMS, '') <> 'S' THEN (isnull(ctrc.TarifaSEFAZ, 0) * (ISNULL(ctrc.aliquotaicmsretido, 0)/100) * 0.8)
            ELSE (isnull(ctrc.TarifaSEFAZ, 0) * (ISNULL(ctrc.aliquotaicmsretido, 0)/100))
        END
ELSE CASE when(IsNull(CTRC.ValorICMSRetido, 0) + (IsNull(CTRC.TaxaADM, 0) + (IsNull(CTRC.TarifaFreteEmpresa, 0) * (IsNull(CTRC.QuantidadeSaida, 0) / dbo.UnFrete(IsNull(CTRC.UnidadeFrete, 0)))))) = IsNull(CTRC.ValorTotalFrete, 0)
OR isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN isnull(ctrc.ValorICMSRetido, 0)
ELSE CASE when((IsNull(CTRC.ValorICMSRetido, 0) / 1.8) + (IsNull(CTRC.TaxaADM, 0) + (IsNull(CTRC.TarifaFreteEmpresa, 0) * (IsNull(CTRC.QuantidadeSaida, 0) / dbo.UnFrete(IsNull(CTRC.UnidadeFrete, 0)))))) = IsNull(CTRC.ValorTotalFrete, 0)
OR isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN isnull(ctrc.ValorICMSRetido, 0)
ELSE CASE
WHEN isnull(PedidosFrete.icmsdestacado, '') = 'P' THEN (isnull(ctrc.ValorICMSRetido, 0) / 0.8)
ELSE 0
END
END
END
END - CASE
WHEN CTRC.CodFornecedor IN (1000001, 1084818)
AND ctrc.DataEmissao >= '2024-03-01' THEN 0
WHEN CTRC.DataEmissao >= '2024-03-01'
AND isnull(ctrc.tipocalculolucro, '') = 'Puxinha' THEN CASE
                    WHEN ISNULL(CTRC.ValorRetidoINSS, 0) = 0 THEN 0
                    ELSE ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04
                END
WHEN CTRC.DataEmissao >= '2024-03-01'
AND isnull(ctrc.TipoCalculoLucro, '') = 'Mercado Interno' THEN CASE
                            WHEN Prop.ClassifFiscal = 'Física' THEN CASE
                                                                        WHEN ISNULL(CTRC.ValorRetidoINSS, 0) = 0
                                                                            AND Prop.CNPJ_CPF <> Mot.CPF
                                                                            AND ISNULL(Clientes_Complemento.IndRetencoesObrigatorias, '') <> 'S' THEN 0
                                                                        ELSE ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04
                                                                    END
                            ELSE ISNULL(CTRC.ValorTotalFrete, 0) * 0.01
                        END
ELSE CASE
WHEN CTRC.DataEmissao < '2014-01-01' THEN CASE
            WHEN ISNULL(CTRC.ValorRetidoINSS, 0) > 0 THEN (ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04)
            ELSE 0
        END
ELSE (ISNULL(CTRC.ValorTotalFrete, 0) * 0.01)
END
END - CASE
WHEN ISNULL(CTRC.CIOT, '') <> ''
AND ISNULL(OrdemEmbarque.CIOT, '') IN ('PAMCARY', 'EFRETE PAGO') THEN (ISNULL(CTRC.TotalFreteMotorista, 0) * 0.004)
ELSE 0
END - (ISNULL(CTRC.DespesaAdubo, 0) * (ISNULL(CTRC.QuantidadeSaida, 0) / CASE ISNULL(CTRC.UnidadeFrete, 1)
                                    WHEN 1 THEN 1000
                                    WHEN 2 THEN 60
                                    WHEN 4 THEN 40
                                    ELSE 1
                                END)) - (ISNULL(CTRC.DespesasRateadas, 0)) - ISNULL(CTRC.Ajuste3ReaisTonFrota, 0) - (ISNULL(CTRC.ValorTotalFrete, 0) * 0.01)) AS LucroBruto,
(SUM(ISNULL(CTRC.ValorTotalFrete, 0) - ((ISNULL(CTRC.TarifaFreteMotorista, 0) + ISNULL(CTRC.DiferencaFreteAgregado, 0)) * ISNULL(CTRC.QuantidadeSaida, 0) / CASE ISNULL(CTRC.UnidadeFrete, 1)
WHEN 1 THEN 1000
WHEN 2 THEN 60
WHEN 4 THEN 40
ELSE 1
END + ISNULL(TarifaSaque, 0) + ISNULL(TarifaTransferencia, 0)) - CASE
WHEN ISNULL(CTRC.ResponsavelValePedagio, 0) <> 0 THEN 0
ELSE ISNULL(CTRC.Pedagio, 0)
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') IN ('Puxinha', 'Mercado Interno') THEN 0
ELSE (ISNULL(CTRC_PIS_COFINS.PIS, 0) + ISNULL(CTRC_PIS_COFINS.COFINS, 0))
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') = 'Puxinha' THEN 20.00
ELSE ISNULL(CASE
WHEN CTRC.DataEmissao < '2012-07-01' THEN (CASE CTRC.SituacaoConhecto
WHEN 'Cancelado' THEN 0.01
WHEN 'Substituto' THEN 0.01
WHEN 'Complemento' THEN 0.01
ELSE ISNULL(CTRC.ValorNF, 0)
END * ((CASE
WHEN ISNULL(Rotas.IndRotaCurta, 'N') <> 'S' THEN ISNULL(Seg.Percentual, 0) - (ISNULL(Seg.Percentual, 0) * (ISNULL(Seg.Desconto, 0) / 100))
ELSE (ISNULL(Seg.PercRotaUrbana, 0) - ISNULL(Seg.IOF, 0))
END) / 100))
ELSE CTRC.SeguroAverbado
END, 0)
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') = 'Puxinha' THEN 0
ELSE ISNULL(CTRC.GRIS_NaoDescontado, 0)
END - ISNULL(CTRC.ValorICMSFrete, 0) - CASE
WHEN isnull(ctrc.TarifaSEFAZ, 0) > isnull(ctrc.ValorTotalFrete, 0)
AND isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN CASE
            WHEN isnull(Clientes_Complemento.CreditoICMS, '') <> 'S' THEN (isnull(ctrc.TarifaSEFAZ, 0) * (ISNULL(ctrc.aliquotaicmsretido, 0)/100) * 0.8)
            ELSE (isnull(ctrc.TarifaSEFAZ, 0) * (ISNULL(ctrc.aliquotaicmsretido, 0)/100))
        END
ELSE CASE when(IsNull(CTRC.ValorICMSRetido, 0) + (IsNull(CTRC.TaxaADM, 0) + (IsNull(CTRC.TarifaFreteEmpresa, 0) * (IsNull(CTRC.QuantidadeSaida, 0) / dbo.UnFrete(IsNull(CTRC.UnidadeFrete, 0)))))) = IsNull(CTRC.ValorTotalFrete, 0)
OR isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN isnull(ctrc.ValorICMSRetido, 0)
ELSE CASE when((IsNull(CTRC.ValorICMSRetido, 0) / 1.8) + (IsNull(CTRC.TaxaADM, 0) + (IsNull(CTRC.TarifaFreteEmpresa, 0) * (IsNull(CTRC.QuantidadeSaida, 0) / dbo.UnFrete(IsNull(CTRC.UnidadeFrete, 0)))))) = ISNULL (CTRC.ValorTotalFrete, 0)
OR isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN isnull(ctrc.ValorICMSRetido, 0)
ELSE CASE
WHEN isnull(PedidosFrete.icmsdestacado, '') = 'P' THEN (isnull(ctrc.ValorICMSRetido, 0) / 0.8)
ELSE 0
END
END
END
END - CASE
WHEN CTRC.CodFornecedor IN (1000001, 1084818)
AND ctrc.DataEmissao >= '2024-03-01' THEN 0
WHEN CTRC.DataEmissao >= '2024-03-01'
AND isnull(ctrc.tipocalculolucro, '') = 'Puxinha' THEN CASE
                    WHEN ISNULL(CTRC.ValorRetidoINSS, 0) = 0 THEN 0
                    ELSE ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04
                END
WHEN CTRC.DataEmissao >= '2024-03-01'
AND isnull(ctrc.TipoCalculoLucro, '') = 'Mercado Interno' THEN CASE
                            WHEN Prop.ClassifFiscal = 'Física' THEN CASE
                                                                        WHEN ISNULL(CTRC.ValorRetidoINSS, 0) = 0
                                                                            AND Prop.CNPJ_CPF <> Mot.CPF
                                                                            AND ISNULL(Clientes_Complemento.IndRetencoesObrigatorias, '') <> 'S' THEN 0
                                                                        ELSE ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04
                                                                    END
                            ELSE ISNULL(CTRC.ValorTotalFrete, 0) * 0.01
                        END
ELSE CASE
WHEN CTRC.DataEmissao < '2014-01-01' THEN CASE
            WHEN ISNULL(CTRC.ValorRetidoINSS, 0) > 0 THEN (ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04)
            ELSE 0
        END
ELSE (ISNULL(CTRC.ValorTotalFrete, 0) * 0.01)
END
END - CASE
WHEN ISNULL(CTRC.CIOT, '') <> ''
AND ISNULL(OrdemEmbarque.CIOT, '') IN ('PAMCARY', 'EFRETE PAGO') THEN (ISNULL(CTRC.TotalFreteMotorista, 0) * 0.004)
ELSE 0
END - (ISNULL(CTRC.DespesaAdubo, 0) * (ISNULL(CTRC.QuantidadeSaida, 0) / CASE ISNULL(CTRC.UnidadeFrete, 1)
                                    WHEN 1 THEN 1000
                                    WHEN 2 THEN 60
                                    WHEN 4 THEN 40
                                    ELSE 1
                                END)) - (ISNULL(CTRC.ValorTotalFrete, 0) * 0.01) - (ISNULL(CTRC.DespesasRateadas, 0)) - ISNULL(CTRC.Ajuste3ReaisTonFrota, 0)) / SUM(CASE
                                                                                                                                                                        WHEN ISNULL(CTRC.ValorTotalFrete, 0) > 0 THEN CTRC.ValorTotalFrete
                                                                                                                                                                        ELSE 1
                                                                                                                                                                    END) * 100) AS PercLucroBruto,
SUM(ISNULL(CTRC.ValorTotalFrete, 0) + ISNULL(CTRC.DescontoTaxaAdm, 0) - ((ISNULL(CTRC.TarifaFreteMotorista, 0) + ISNULL(CTRC.DiferencaFreteAgregado, 0)) * ISNULL(QuantidadeSaida, 0) / CASE ISNULL(CTRC.UnidadeFrete, 1)
WHEN 1 THEN 1000
WHEN 2 THEN 60
WHEN 4 THEN 40
ELSE 1
END + ISNULL(TarifaSaque, 0) + ISNULL(TarifaTransferencia, 0)) - CASE
WHEN ISNULL(CTRC.ResponsavelValePedagio, 0) <> 0 THEN 0
ELSE ISNULL(CTRC.Pedagio, 0)
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') IN ('Puxinha', 'Mercado Interno') THEN 0
ELSE (ISNULL(CTRC_PIS_COFINS.PIS, 0) + ISNULL(CTRC_PIS_COFINS.COFINS, 0))
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') = 'Puxinha' THEN 20.00
ELSE ISNULL(CASE
WHEN CTRC.DataEmissao < '2012-07-01' THEN (CASE CTRC.SituacaoConhecto
WHEN 'Cancelado' THEN 0.01
WHEN 'Substituto' THEN 0.01
WHEN 'Complemento' THEN 0.01
ELSE ISNULL(CTRC.ValorNF, 0)
END * ((CASE
    WHEN ISNULL(Rotas.IndRotaCurta, 'N') <> 'S' THEN ISNULL(Seg.Percentual, 0) - (ISNULL(Seg.Percentual, 0) * (ISNULL(Seg.Desconto, 0) / 100))
    ELSE (ISNULL(Seg.PercRotaUrbana, 0) - ISNULL(Seg.IOF, 0))
END) / 100))
ELSE CTRC.SeguroAverbado
END, 0)
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') = 'Puxinha' THEN 0
ELSE ISNULL(CTRC.GRIS_NaoDescontado, 0)
END - ISNULL(CTRC.ValorICMSFrete, 0) - CASE
WHEN isnull(ctrc.TarifaSEFAZ, 0) > isnull(ctrc.ValorTotalFrete, 0)
AND isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN CASE
                                        WHEN isnull(Clientes_Complemento.CreditoICMS, '') <> 'S' THEN (isnull(ctrc.TarifaSEFAZ, 0) * (ISNULL(ctrc.aliquotaicmsretido, 0)/100) * 0.8)
                                        ELSE (isnull(ctrc.TarifaSEFAZ, 0) * (ISNULL(ctrc.aliquotaicmsretido, 0)/100))
                                    END
ELSE CASE when(IsNull(CTRC.ValorICMSRetido, 0) + (IsNull(CTRC.TaxaADM, 0) + (IsNull(CTRC.TarifaFreteEmpresa, 0) * (IsNull(CTRC.QuantidadeSaida, 0) / dbo.UnFrete(IsNull(CTRC.UnidadeFrete, 0)))))) = IsNull(CTRC.ValorTotalFrete, 0)
OR isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN isnull(ctrc.ValorICMSRetido, 0)
ELSE CASE when((IsNull(CTRC.ValorICMSRetido, 0) / 1.8) + (IsNull(CTRC.TaxaADM, 0) + (IsNull(CTRC.TarifaFreteEmpresa, 0) * (IsNull(CTRC.QuantidadeSaida, 0) / dbo.UnFrete(IsNull(CTRC.UnidadeFrete, 0)))))) = IsNull(CTRC.ValorTotalFrete, 0)
OR isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN isnull(ctrc.ValorICMSRetido, 0)
ELSE CASE
    WHEN isnull(PedidosFrete.icmsdestacado, '') = 'P' THEN (isnull(ctrc.ValorICMSRetido, 0) / 0.8)
    ELSE 0
END
END
END
END - CASE
WHEN CTRC.CodFornecedor IN (1000001, 1084818)
AND ctrc.DataEmissao >= '2024-03-01' THEN 0
WHEN CTRC.DataEmissao >= '2024-03-01'
AND isnull(ctrc.tipocalculolucro, '') = 'Puxinha' THEN CASE
                                                WHEN ISNULL(CTRC.ValorRetidoINSS, 0) = 0 THEN 0
                                                ELSE ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04
                                            END
WHEN CTRC.DataEmissao >= '2024-03-01'
AND isnull(ctrc.TipoCalculoLucro, '') = 'Mercado Interno' THEN CASE
                                                        WHEN Prop.ClassifFiscal = 'Física' THEN CASE
                                                                                                    WHEN ISNULL(CTRC.ValorRetidoINSS, 0) = 0
                                                                                                        AND Prop.CNPJ_CPF <> Mot.CPF
                                                                                                        AND ISNULL(Clientes_Complemento.IndRetencoesObrigatorias, '') <> 'S' THEN 0
                                                                                                    ELSE ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04
                                                                                                END
                                                        ELSE ISNULL(CTRC.ValorTotalFrete, 0) * 0.01
                                                    END
ELSE CASE
WHEN CTRC.DataEmissao < '2014-01-01' THEN CASE
                                        WHEN ISNULL(CTRC.ValorRetidoINSS, 0) > 0 THEN (ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04)
                                        ELSE 0
                                    END
ELSE (ISNULL(CTRC.ValorTotalFrete, 0) * 0.01)
END
END - CASE
WHEN ISNULL(CTRC.CIOT, '') <> ''
AND ISNULL(OrdemEmbarque.CIOT, '') IN ('PAMCARY', 'EFRETE PAGO') THEN (ISNULL(CTRC.TotalFreteMotorista, 0) * 0.004)
ELSE 0
END - (ISNULL(CTRC.ValorTotalFrete, 0) * 0.01) - (ISNULL(CTRC.DespesasRateadas, 0)) - ISNULL(CTRC.Ajuste3ReaisTonFrota, 0) + CASE
                                                                                                                    WHEN (ISNULL(CTRC.ValorICMSFrete, 0) = 0
                                                                                                                        OR CTRC.ModeloDocumento IN ('NFS-e', 'NF Serviço')) THEN 0
                                                                                                                    ELSE (ISNULL(CTRC.ValorICMSFrete, 0) * 20 / 100)
                                                                                                                END + CASE
                                                                                                                        WHEN (ISNULL(CTRC.ValorICMSRetido, 0) = 0
                                                                                                                                OR CTRC.ModeloDocumento IN ('NFS-e', 'NF Serviço')) THEN 0
                                                                                                                        ELSE CASE
                                                                                                                                    WHEN ISNULL(PedidosFrete.ICMSDestacado, '') = 'P' THEN ((ISNULL(CTRC.ValorICMSRetido, 0) / 0.8) * 20 / 100)
                                                                                                                                    ELSE 0
                                                                                                                                END
                                                                                                                    END + ISNULL(CTRC.TaxaLimpeza, 0) + CASE
                                                                                                                                                            WHEN CTRC.DataEmissao < '2024-07-05' THEN ISNULL(CTRC.Outros, 0)
                                                                                                                                                            ELSE 0
                                                                                                                                                        END) AS LucroLiquido,
(SUM(ISNULL(CTRC.ValorTotalFrete, 0) - ((ISNULL(CTRC.TarifaFreteMotorista, 0) + ISNULL(CTRC.DiferencaFreteAgregado, 0)) * ISNULL(CTRC.QuantidadeSaida, 0) / CASE ISNULL(CTRC.UnidadeFrete, 1)
WHEN 1 THEN 1000
WHEN 2 THEN 60
WHEN 4 THEN 40
ELSE 1
END + ISNULL(TarifaSaque, 0) + ISNULL(TarifaTransferencia, 0)) - CASE
WHEN ISNULL(CTRC.ResponsavelValePedagio, 0) <> 0 THEN 0
ELSE ISNULL(CTRC.Pedagio, 0)
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') IN ('Puxinha', 'Mercado Interno') THEN 0
ELSE (ISNULL(CTRC_PIS_COFINS.PIS, 0) + ISNULL(CTRC_PIS_COFINS.COFINS, 0))
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') = 'Puxinha' THEN 20.00
ELSE ISNULL(CASE
WHEN CTRC.DataEmissao < '2012-07-01' THEN (CASE CTRC.SituacaoConhecto
WHEN 'Cancelado' THEN 0.01
WHEN 'Substituto' THEN 0.01
WHEN 'Complemento' THEN 0.01
ELSE ISNULL(CTRC.ValorNF, 0)
END * ((CASE
WHEN ISNULL(Rotas.IndRotaCurta, 'N') <> 'S' THEN ISNULL(Seg.Percentual, 0) - (ISNULL(Seg.Percentual, 0) * (ISNULL(Seg.Desconto, 0) / 100))
ELSE (ISNULL(Seg.PercRotaUrbana, 0) - ISNULL(Seg.IOF, 0))
END) / 100))
ELSE CTRC.SeguroAverbado
END, 0)
END - CASE
WHEN CTRC.DataEmissao >= '2024-03-01'
AND ISNULL(CTRC.TipoCalculoLucro, '') = 'Puxinha' THEN 0
ELSE ISNULL(CTRC.GRIS_NaoDescontado, 0)
END - ISNULL(CTRC.ValorICMSFrete, 0) - CASE
WHEN isnull(ctrc.TarifaSEFAZ, 0) > isnull(ctrc.ValorTotalFrete, 0)
AND isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN CASE
                WHEN isnull(Clientes_Complemento.CreditoICMS, '') <> 'S' THEN (isnull(ctrc.TarifaSEFAZ, 0) * (ISNULL(ctrc.aliquotaicmsretido, 0)/100) * 0.8)
                ELSE (isnull(ctrc.TarifaSEFAZ, 0) * (ISNULL(ctrc.aliquotaicmsretido, 0)/100))
            END
ELSE CASE when(IsNull(CTRC.ValorICMSRetido, 0) + (IsNull(CTRC.TaxaADM, 0) + (IsNull(CTRC.TarifaFreteEmpresa, 0) * (IsNull(CTRC.QuantidadeSaida, 0) / dbo.UnFrete(IsNull(CTRC.UnidadeFrete, 0)))))) = IsNull(CTRC.ValorTotalFrete, 0)
OR isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN isnull(ctrc.ValorICMSRetido, 0)
ELSE CASE when((IsNull(CTRC.ValorICMSRetido, 0) / 1.8) + (IsNull(CTRC.TaxaADM, 0) + (IsNull(CTRC.TarifaFreteEmpresa, 0) * (IsNull(CTRC.QuantidadeSaida, 0) / dbo.UnFrete(IsNull(CTRC.UnidadeFrete, 0)))))) = IsNull(CTRC.ValorTotalFrete, 0)
OR isnull(PedidosFrete.ICMSDestacado, '') = 'U' THEN Isnull(ctrc.ValorICMSRetido, 0)
ELSE CASE
WHEN isnull(PedidosFrete.icmsdestacado, '') = 'P' THEN (isnull(ctrc.ValorICMSRetido, 0) / 0.8)
ELSE 0
END
END
END
END - CASE
WHEN CTRC.CodFornecedor IN (1000001, 1084818)
AND ctrc.DataEmissao >= '2024-03-01' THEN 0
WHEN CTRC.DataEmissao >= '2024-03-01'
AND isnull(ctrc.tipocalculolucro, '') = 'Puxinha' THEN CASE
                    WHEN ISNULL(CTRC.ValorRetidoINSS, 0) = 0 THEN 0
                    ELSE ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04
                END
WHEN CTRC.DataEmissao >= '2024-03-01'
AND isnull(ctrc.TipoCalculoLucro, '') = 'Mercado Interno' THEN CASE
                            WHEN Prop.ClassifFiscal = 'Física' THEN CASE
                                                                        WHEN ISNULL(CTRC.ValorRetidoINSS, 0) = 0
                                                                                AND Prop.CNPJ_CPF <> Mot.CPF
                                                                                AND ISNULL(Clientes_Complemento.IndRetencoesObrigatorias, '') <> 'S' THEN 0
                                                                        ELSE ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04
                                                                    END
                            ELSE ISNULL(CTRC.ValorTotalFrete, 0) * 0.01
                        END
ELSE CASE
WHEN CTRC.DataEmissao < '2014-01-01' THEN CASE
            WHEN ISNULL(CTRC.ValorRetidoINSS, 0) > 0 THEN (ISNULL(CTRC.TotalFreteMotorista, 0) * 0.04)
            ELSE 0
        END
ELSE (ISNULL(CTRC.ValorTotalFrete, 0) * 0.01)
END
END - CASE
WHEN ISNULL(CTRC.CIOT, '') <> ''
AND ISNULL(OrdemEmbarque.CIOT, '') IN ('PAMCARY', 'EFRETE PAGO') THEN (ISNULL(CTRC.TotalFreteMotorista, 0) * 0.004)
ELSE 0
END - (ISNULL(CTRC.ValorTotalFrete, 0) * 0.01) - (ISNULL(CTRC.DespesasRateadas, 0)) - ISNULL(CTRC.Ajuste3ReaisTonFrota, 0) + CASE
                                                                                        WHEN (ISNULL(CTRC.ValorICMSFrete, 0) = 0
                                                                                                OR CTRC.ModeloDocumento IN ('NFS-e', 'NF Serviço')) THEN 0
                                                                                        ELSE (ISNULL(CTRC.ValorICMSFrete, 0) * 20 / 100)
                                                                                    END + CASE
                                                                                                WHEN (ISNULL(CTRC.ValorICMSRetido, 0) = 0
                                                                                                    OR CTRC.ModeloDocumento IN ('NFS-e', 'NF Serviço')) THEN 0
                                                                                                ELSE CASE
                                                                                                        WHEN ISNULL(PedidosFrete.ICMSDestacado, '') = 'P' THEN ((ISNULL(CTRC.ValorICMSRetido, 0) / 0.8) * 20 / 100)
                                                                                                        ELSE 0
                                                                                                    END
                                                                                            END + ISNULL(CTRC.TaxaLimpeza, 0) + CASE
                                                                                                                                    WHEN CTRC.DataEmissao < '2024-07-05' THEN ISNULL(CTRC.Outros, 0)
                                                                                                                                    ELSE 0
                                                                                                                                END) / SUM(CASE
                                                                                                                                            WHEN ISNULL(CTRC.ValorTotalFrete, 0) > 0 THEN CTRC.ValorTotalFrete
                                                                                                                                            ELSE 1
                                                                                                                                        END) * 100) AS PercLucroLiquido
FROM ConhecimentosTransporte CTRC
INNER JOIN CTRC_PIS_COFINS ON CTRC_PIS_COFINS.Sequencial = CTRC.Sequencial
INNER JOIN PedidosFrete ON PedidosFrete.CodPedidoFrete = CTRC.CodPedidoFrete
INNER JOIN Clientes ON Clientes.CodCliente = CTRC.CodClientePagto
INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = Clientes.CodCliente
INNER JOIN Clientes Clientes1 ON Clientes1.CodCliente = Clientes_Complemento.CodClienteMatriz
INNER JOIN Rotas ON Rotas.CodRota = CTRC.CodRota
INNER JOIN Cidades ON Cidades.CodCidade = Rotas.CodCidadeOrigem
INNER JOIN Cidades Cidades1 ON Cidades1.CodCidade = Rotas.CodCidadeDestino
LEFT OUTER JOIN OrdemEmbarque ON OrdemEmbarque.NumOrdemEmbarque = CTRC.CodOrdemEmbarque
INNER JOIN SeguroTranspCargas Seg ON Seg.UFOrigem = Cidades.CodUF
AND Seg.UFDestino = Cidades1.CodUF
INNER JOIN Veiculos ON Veiculos.CodVeiculo = CTRC.CodVeiculo
INNER JOIN Fornecedores Prop ON Prop.CodFornecedor = CTRC.CodFornecedor
INNER JOIN Motoristas Mot ON Mot.CodMotorista = CTRC.CodMotorista
INNER JOIN ParamDespRecFilial Reg ON Reg.NumCol = CTRC.CodRegiao
LEFT OUTER JOIN LONTANO_GSe.dbo.CTe CTe ON CTe.Sequencial = CTRC.Sequencial
LEFT OUTER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = CTRC.CodNaturezaCarga
WHERE (CTRC.DataEmissao BETWEEN '04/01/2024 00:00:00' AND '04/30/2024 23:59:29')
AND (Reg.NumCol = '1')
AND (CTRC.SituacaoConhecto = 'Emitido'
OR CTRC.SituacaoConhecto = 'Faturado')
AND (ISNULL(CTRC.IndComissaoComplemento, 'S') <> 'N')
AND (ISNULL(CTRC.TipoConhecimento, '') <> 'Substituto Contábil')
AND (ISNULL(CTRC.TipoConhecimento, '') <> 'Substituído'
OR (ISNULL(CTRC.TipoConhecimento, '') = 'Substituído'
AND CTRC.SituacaoConhecto = 'Faturado'))
AND (CTe.Sequencial IS NULL
OR CTe.Status = 1)