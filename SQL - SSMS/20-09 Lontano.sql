use LONTANO



exec lontano_gse.dbo.MonitorarNFSe_RO_GO '5218805'
-- para enviar as NFSe paradas mudar a tabela NfseRondonopolisEnvioLote para 3 reabrir o GSe
select * from LONTANO_GSe.dbo.tblThreads 
--UPDATE LONTANO_GSe.dbo.tblThreads set NfseRondonopolisEnvioLote = 3 where id = 14

select TotalFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 61120 and CodUF = 'GO' and SerieConhecto = '2'
select TotalFreteMotorista,* from ConhecimentosTransporte_log where NumConhecto = 61120 and CodUF = 'GO' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set TotalFreteMotorista = 0.00, TarifaFreteMotorista = 571152.00 where Sequencial = 30000154643 -- 571152.00



Select * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1530607