use RODOMAIOR


select * from ConhecimentosTransporte where CodOrdemEmbarque = 72001996
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 720000001864
----------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where CodOrdemEmbarque = 51010511
select * from Veiculos where CodVeiculo = 112004
select * from ConjuntosVeiculo where CodVeiculo = 112004
--novo veiculo
select * from Veiculos where PlacaVeiculo  = 'RAU1C47'
select * from ConjuntosVeiculo where CodVeiculo = 124028

select * from ConhecimentosTransporte where CodOrdemEmbarque = 34023611


SELECT TOP(500) * FROM RODOMAIOR_GSe.dbo.tblLog_operacao WHERE NM_Metodo = 'CteRecepcaoEvento' ORDER BY ID DESC
