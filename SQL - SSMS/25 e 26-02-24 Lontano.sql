use LONTANO

select * from Patrimonio where Sequencial IN( 1003133,1003132)

select * from Patrimonio where Sequencial = 3431 


select * from Usuarios where CodUsuario = 14870

SELECT TarifaFreteMotorista, ValorAdiantamento, FretePesoVolume,TarifaFreteEmpresa, * FROM ConhecimentosTransporte WHERE Sequencial = 730000134670

select * from Veiculos where PlacaVeiculo = 'AAA-0000'
select CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 63115 and CodUF = 'GO' and SerieConhecto = '2' --73715
--UPDATE ConhecimentosTransporte set CodVeiculo = 114593 where NumConhecto = 63115 and CodUF = 'GO' and SerieConhecto = '2'
 
select CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 63103 and CodUF = 'GO' and SerieConhecto = '2' -- 7002
--UPDATE ConhecimentosTransporte set CodVeiculo = 114593 where NumConhecto = 63103 and CodUF = 'GO' and SerieConhecto = '2'

select CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 63076 and CodUF = 'GO' and SerieConhecto = '2' -- 73715
--UPDATE ConhecimentosTransporte set CodVeiculo = 114593 where NumConhecto = 63076 and CodUF = 'GO' and SerieConhecto = '2'

select CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 63056 and CodUF = 'GO' and SerieConhecto = '2' -- 4492
--UPDATE ConhecimentosTransporte set CodVeiculo = 114593 where NumConhecto = 63056 and CodUF = 'GO' and SerieConhecto = '2'

select CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 63053 and CodUF = 'GO' and SerieConhecto = '2' -- 4492
--UPDATE ConhecimentosTransporte set CodVeiculo = 114593 where NumConhecto = 63053 and CodUF = 'GO' and SerieConhecto = '2'

select CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 63050 and CodUF = 'GO' and SerieConhecto = '2' -- 4492
--UPDATE ConhecimentosTransporte set CodVeiculo = 114593 where NumConhecto = 63050 and CodUF = 'GO' and SerieConhecto = '2'

select CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 63151 and CodUF = 'GO' and SerieConhecto = '2' -- 73715
--UPDATE ConhecimentosTransporte set CodVeiculo = 114593 where NumConhecto = 63151 and CodUF = 'GO' and SerieConhecto = '2'

select CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 63147 and CodUF = 'GO' and SerieConhecto = '2' -- 7002
--UPDATE ConhecimentosTransporte set CodVeiculo = 114593 where NumConhecto = 63147 and CodUF = 'GO' and SerieConhecto = '2'


select CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 513850 and CodUF = 'MS' 

select * from NotasFiscaisConhecimento where SequencialConhecimento = 250000079188
select * from LONTANO_GSe.dbo.NFe where ID in ('50240247902283000120550010001618801149049148','50240247902283000120550010001618811338275827')
select * from LONTANO_GSe.dbo.CTe where Sequencial = 250000079188

select CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 513850 and CodUF = 'MS' 

--conhecimento
select * from ConhecimentosTransporte where NumConhecto = 61849 and CodUF = 'GO' 
--SQL estadia
SELECT ComplementoConhecimento.IndFaturaEstadia,ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.QuantChegFaturamento, ComplementoConhecimento.DataEntradaDesembarque, 
ComplementoConhecimento.DataSaidaDesembarque, ComplementoConhecimento.ToleranciaEstadia, ComplementoConhecimento.TempoEstadiaACobrar, 
ComplementoConhecimento.ValorEstadia, ComplementoConhecimento.IndFaturaEstadia, ComplementoConhecimento.IndQtdeEstadia, ComplementoConhecimento.IndPagtoEstadia,
ConhecimentosTransporte.CodUF, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodClientePagto, ConhecimentosTransporte.CodPedidoFrete,
ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.CodRota, ConhecimentosTransporte.CodNaturezaCarga
FROM	ConhecimentosTransporte
LEFT OUTER JOIN ComplementoConhecimento ON ConhecimentosTransporte.Sequencial = ComplementoConhecimento.NumSeqConhecto WHERE Sequencial IN( 280000157108,730000132794)

select * from ConhecimentosComplementados where 730000132794 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

select * from ConhecimentosTransporte where Sequencial = 280000157108


-- 60293 - GO