--delete from Lontano_GSe.dbo.cte_log where Sequencial = 940000058615 and ID > 22378640
select * from ConhecimentosTransporte where NumConhecto = 395390 and CodUF = 'MG'
exec VerificaCTe 530000160709
select * from ConhecimentosTransporte where NumConhecto = 395392 and CodUF = 'MG'
exec VerificaCTe 530000160709
select status,* from Lontano_GSe.dbo.cte where Sequencial = 940000058615
--UPDATE Lontano_GSe.dbo.cte set status = 1 where Sequencial = 940000058615
exec VerificaCTe 940000058615



select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto IN(699428,699429,699430,699431,699432, 699433) and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 75.00  where sequencial in (730000133877,730000133878,730000133879,730000133880,730000133881,730000133882)


exec MonitoraMDFe 3183616
--Rejeição: Existe MDF-e não encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe Não Encerrada:52240111455829000367580030003709971014683109][NroProtocolo:952240000145841]
exec MonitoraMDFe 3183310


select * from veiculos where PlacaVeiculo = 'QAM3H47' --151501
select * from ConjuntosVeiculo where CodVeiculo = 3747