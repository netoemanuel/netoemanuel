select * FROM ConhecimentosTransporte where DataEmissao > '2025-01-06 00:00:00' ORDER BY DataCriacao desc



select ValorNF,SeguroAverbado,* FROM ConhecimentosTransporte where NumConhecto = 541717 and CodUF = 'MS' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte SET ValorNF = 60788.64, SeguroAverbado = 30.39 where NumConhecto = 541717 and CodUF = 'MS' and SerieConhecto = '0'



SELECT COUNT(*) AS Registros FROM Lontano_GSe.dbo.NFSe WHERE (Sequencial = 880000152621) AND (ISNULL(IndImpressao, 'N') = 'S')


SELECT DiferencaFreteAgregado,Sequencial, CodUF, NumConhecto, DataEmissao, ValorIRRFMotorista, ValorRetidoINSS, ValorRetidoSestSenat, ValorAdiantamento, Outros, Pedagio, QuantidadeSaida, QuantidadeChegada, TotalFreteMotorista, DiferencaFreteAgregado, ValorICMSFrete, IndPagtoDiferenca, UnidadeFrete, SituacaoConhecto, Veiculos.CodVeiculo, ValorQuebraDescontado, ValorNF, ConhecimentosTransporte.CodRota, ConhecimentosTransporte.ResponsavelValePedagio, Desconto, TipoConhecimento 
FROM ConhecimentosTransporte 
LEFT JOIN ComplementoConhecimento ON Sequencial = NumSeqConhecto
INNER JOIN Veiculos ON Veiculos.CodVeiculo = ConhecimentosTransporte.CodVeiculo 
WHERE (NumConhecto = 420873) AND (SituacaoConhecto <> 'Cancelado') AND ISNULL(IndPagtoDiferenca, '') <> 'Paga' AND ISNULL(IndPagtoDiferenca, '') <> 'Paga Saldo' 
AND DiferencaFreteAgregado IS NOT NULL AND Sequencial NOT IN (SELECT NumSeqConhecto FROM ConhecimentosRelacaoFretes WHERE CodTipoPagamento = 3) AND (ISNULL(ConhecimentosTransporte.TipoConhecimento, '') <> 'Substituto Contábil')


select DiferencaFreteAgregado,IndPagtoDiferenca,SituacaoConhecto,* FROM ConhecimentosTransporte where NumConhecto = 420873 and CodUF = 'MG' and SerieConhecto = '0'
--UPDATE  ConhecimentosTransporte SET IndPagtoDiferenca = null where NumConhecto = 420873 and CodUF = 'MG' and SerieConhecto = '0'  -- Paga

select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 530000172797
select * from ConhecimentosRelacaoFretes_log where NumSeqConhecto = 530000172797


select OutrasDespesas, ValorDiferenca, * FROM RelacaoFretes where CodRelacaoFrete = 1206873 