use RODOMAIOR

exec MonitoraMDFe 95004226
exec MonitoraMDFe 69012035

select Status,* from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe =  530184
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe =  530184

-----------------------------------------------------------------------------------------------------------------------------------------------------------
exec VerificaCTe 10000024358
-----------------------------------------------------------------------------------------------------------------------------------------------------------

exec MonitoraMDFe 6051151
exec MonitoraMDFe 69012035

select Status,* from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe =  530177
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe =  530177
-----------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto = 105700  and CodUF = 'GO'

select * from Veiculos where CodVeiculo = 20762
select * from ConjuntosVeiculo where CodVeiculo = 20762

select * from Veiculos where PlacaVeiculo = 'AEU8A19'
select * from ConjuntosVeiculo where CodVeiculo = 334698
-----------------------------------------------------------------------------------------------------------------------------------------------------------

select TipoDispositivoValePedagio, * from PedidosFrete where CodPedidoFrete = 53000549