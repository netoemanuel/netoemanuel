use RODOMAIOR


select * from ConhecimentosTransporte where NumConhecto = 99071 and CodUF = 'GO'
select * from ConhecimentosTransporte where NumConhecto = 99073 and CodUF = 'GO'
--
exec VerificaCTe 50000023999
exec VerificaCTe 50000024000
--
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe in (50000023999,50000024000)

exec MonitoraMDFe 5023447
exec MonitoraMDFe 5023441
----------------------------------------------------------------------------------------------------------------
--31/07 
select * from ConhecimentosTransporte where NumConhecto = 39499 and CodUF = 'MT' 
--
select * from Veiculos where CodVeiculo = 292488
select * from ConjuntosVeiculo where CodVeiculo = 292488
select * from ConjuntosVeiculo where CodVeiculo = 112890
--2
select * from Veiculos where PlacaVeiculo = 'LYI6H99'
select * from ConjuntosVeiculo where CodVeiculo = 112890 --antigo conjunto 111151
--UPDATE ConjuntosVeiculo set CodVeiculoAdicional1 = 111139, CodVeiculoAdicional2 = Null, CodVeiculoAdicional3 = 111154 where CodVeiculo = 112890
----------------------------------------------------------------------------------------------------------------

