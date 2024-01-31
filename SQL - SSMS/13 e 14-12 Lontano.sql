use LONTANO


select * from Veiculos where CodVeiculo = 4645
select * from ConjuntosVeiculo where CodVeiculo = 4645

select * from Veiculos where PlacaVeiculo = 'RWC4E76'
select * from ConjuntosVeiculo where CodVeiculo = 4476
--UPDATE ConjuntosVeiculo set CodTipoConjunto = 2, CodVeiculoAdicional1 = 5221, CodVeiculoAdicional2 = 4613, CodVeiculoAdicional3 = 199,
--ComprimentoConjunto = 25.00, CodTipoVeicConj = 1 where CodVeiculo = 4476
-- antigo
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj	Eixos
--	4476				1				3101						3102				NULL					19.80				13281				CG				2022-07-13 08:25:44.000	NULL	NULL	NULL	1	NULL

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 17041 and CodUF = 'DF'

exec VerificaCTe 360000016822

select * from ConhecimentosTransporte where NumConhecto = 508177 and CodUF = 'MS'

exec VerificaCTe 250000078278


select * from MovimentosCaixa where CodRecDesp = 483


select Sequencial, * from InfracaoTransito where CodMovCaixa = 101593968


--Favor ajustar o ct-e SP-123651.

--Valor da mercadoria R$ 132.346,54
--Valor averbado R$ 66,17
--Valor seguro R$ 158,81

select ValorNF,SeguroAverbado,GRIS_NaoDescontado, * from ConhecimentosTransporte where NumConhecto = 123651 and CodUF = 'SP'
--UPDATE ConhecimentosTransporte set ValorNF = 132346.54 , SeguroAverbado = 66.17 , GRIS_NaoDescontado = 92.64 where Sequencial = 60000029174

--Favor ajustar o ct-e SP-123422.
--Valor da mercadoria R$ 101.411,85
--Valor averbado R$ 50,70
--Valor seguro R$ 129,80

select ValorNF,SeguroAverbado,GRIS_NaoDescontado, * from ConhecimentosTransporte where NumConhecto = 123422 and CodUF = 'SP'
--UPDATE ConhecimentosTransporte set ValorNF = 101411.85 , SeguroAverbado = 50.70 , GRIS_NaoDescontado = 79.10 where Sequencial = 60000029135


select * from ConhecimentosTransporte where NumConhecto = 697941  and CodUF = 'MT'

exec VerificaCTe 47000002664
exec MonitoraMDFe 19038064


select QuantidadeSaida, * from ConhecimentosTransporte where NumConhecto = 610073  and CodUF = 'GO'
select QuantidadeSaida2,QuantidadeSaida,* from ConhecimentosTransporte_LOG where NumConhecto = 610073  and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 38444.736  where Sequencial = 30000156743


select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto IN( 504958,504959,504960)  and CodUF = 'MS' -- 1200.00,96.00,1333.00
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 83.34 where Sequencial IN( 520000038191,520000038192,520000038193)