use LONTANO

select QuantidadeSaida, TarifaFreteEmpresa, TarifaFreteMotorista, ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto = 703229 and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.00, TarifaFreteMotorista = 8216.08 , TarifaFreteEmpresa = 12993.61 where Sequencial = 20000151611

select * from Veiculos where PlacaVeiculo = 'HTP-0863'