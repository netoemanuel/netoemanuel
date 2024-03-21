use LONTANO


select * from MovimentacaoBancaria where CodMovBancaria = 1564282
--UPDATE MovimentacaoBancaria set Gerado = 'N' where CodMovBancaria = 1564282

select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 699405 and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 303.71 where Sequencial = 730000133876


select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 511903 and CodUF = 'MS' -- 116.95
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 81.13 where Sequencial = 730000134394


select CodContasPagar,* from RelacaoFretes where CodRelacaoFrete = 28015121
select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 28015121 and ValorPago <> ValorConferido

select * from ContasPagar where CodContasPagar = 28015124

select * from ContasPagas where CodContasPagar = 28015124


select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 700009  and CodUF = 'MT' -- 130.00
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 110.00 where Sequencial = 730000133965
select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 700011   and CodUF = 'MT' -- 130.00
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 110.00 where Sequencial = 730000133967
select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 700008   and CodUF = 'MT' -- 130.00
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 110.00 where Sequencial = 730000133964
select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 700013    and CodUF = 'MT' -- 130.04
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 110.04 where Sequencial = 730000133969
select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 700007    and CodUF = 'MT' -- 130.00
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 110.00 where Sequencial = 730000133963
select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 700010   and CodUF = 'MT' -- 130.00
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 110.00 where Sequencial = 730000133966
select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 700012    and CodUF = 'MT' -- 130.14
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 110.14 where Sequencial = 730000133968
select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 700006    and CodUF = 'MT' -- 130.14
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 102.95 where Sequencial = 730000133962
select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 700005    and CodUF = 'MT' -- 117.95
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 102.95 where Sequencial = 730000133961