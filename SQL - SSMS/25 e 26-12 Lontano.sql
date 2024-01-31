use LONTANO


select * from Usuarios where NomeUsuario like '%Andressa%'

SELECT CodColaborador,* FROM Motoristas WHERE CodMotorista = 1000039
--UPDATE Motoristas set CodColaborador = NULL WHERE CodMotorista = 1000039
SELECT CodColaborador,* FROM Motoristas_Log WHERE CodMotorista = 1000039 order by DataLog desc

select * from Colaboradores where CodColaborador = 10049

select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 821536 and CodUF = 'MT'
--update ConhecimentosTransporte set TarifaFreteMotorista = 1019.90 where sequencial = 120000023904

select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 821537 and CodUF = 'MT'
--update ConhecimentosTransporte set TarifaFreteMotorista = 1019.90 where sequencial = 120000023905



select * from veiculos where PlacaVeiculo = 'qnp8d03'
select * from ConjuntosVeiculo where CodVeiculo  = 466556

select * from veiculos where PlacaVeiculo = 'QBK9G88'
select * from ConjuntosVeiculo where CodVeiculo  = 502140
--UPDATE ConjuntosVeiculo set CodVeiculoAdicional1 = 236532, CodVeiculoAdicional2 = 246667, CodVeiculoAdicional3 =246987  where CodVeiculo  = 502140
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj	Eixos
--502140	2	246677	246678	246676	NULL	10797	UBL	2023-12-21 13:19:10.000	NULL	NULL	NULL	1	NULL


--Favor ajustar o ct-e GO-610581.

--Valor da mercadoria R$ 69.147,00
--Valor averbado (guia 4) R$ 34,57
--Valor seguro (guia 5) R$ 69,14

select ValorNF,SeguroAverbado, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 610581 and CodUF = 'GO'
--update ConhecimentosTransporte set ValorNF = 69147.00 , SeguroAverbado = 34.57 , GRIS_NaoDescontado =  34.57 where sequencial = 310000095787

select ValorNF,SeguroAverbado, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 609809 and CodUF = 'GO'
--update ConhecimentosTransporte set ValorNF = 112857.81 , SeguroAverbado = 56.42 , GRIS_NaoDescontado =  88.02 where sequencial = 230000042568


select TarifaFreteMotorista, * from ConhecimentosTransporte where NumConhecto = 611207  and CodUF = 'GO'
--update ConhecimentosTransporte set TarifaFreteMotorista = 50  where sequencial = 530000160546

SELECT TOP(50)* FROM LONTANO_GSe.dbo.NFSeDistribuicao ORDER BY DataCriacao DESC

select CodigoCFOP,* from ConhecimentosTransporte where NumConhecto = 698294 and CodUF = 'MT'
select CodigoCFOP,* from ConhecimentosTransporte_log where NumConhecto = 698294 and CodUF = 'MT'
select CodigoCFOPTributacao,* from PedidosFrete where CodPedidoFrete = 2025762
select CodigoCFOPTributacao,* from PedidosFrete_log where CodPedidoFrete = 2025762

SELECT CodTipoComplemento, DebitoCredito From TiposValores 
SELECT ClassifDespesa FROM PlanoContasDespesa
SELECT ValoresRelacaoFretes.*, ValoresRelacaoFretes.ValorPago - ValoresRelacaoFretes.ValorConferido AS Diferenca, TiposValores.DescTipoValor, TiposValores.DebitoCredito  & _
                FROM ValoresRelacaoFretes INNER JOIN TiposValores ON ValoresRelacaoFretes.CodTipoValorTiposValores
				WHERE ValoresRelacaoFretes.CodRelacaoFrete =  & txtCodRelacaoFrete
            
select * from TiposValores