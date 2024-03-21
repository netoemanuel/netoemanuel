exec VerificaCTe 120000024410 -- excluido.


select QuantidadeSaida, TarifaFreteEmpresa, TarifaFreteMotorista, ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto = 701661 and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, TarifaFreteMotorista = 2636.98 , TarifaFreteEmpresa = 3196.33 where Sequencial = 20000151330

select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 61203  and CodUF = 'GO'  --Emitido
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Faturado' where Sequencial = 510000030028   

select ValorNF,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 513136  and CodUF = 'MS' 

select QuantidadeSaida, TarifaFreteEmpresa, TarifaFreteMotorista, ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto = 126495 and CodUF = 'SP'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, TarifaFreteMotorista = 3148.33 , TarifaFreteEmpresa = ValorTotalFrete where Sequencial = 10000023701

select QuantidadeSaida, TarifaFreteEmpresa, TarifaFreteMotorista, ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto = 693602 and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, TarifaFreteMotorista = 2906.15, TarifaFreteEmpresa = ValorTotalFrete where Sequencial = 20000149287

select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 190717 and CodUF = 'PR'
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 7077.28 where Sequencial = 640000058410