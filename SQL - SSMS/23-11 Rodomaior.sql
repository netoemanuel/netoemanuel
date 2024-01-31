use RODOMAIOR




exec MonitoraMDFe 75010341   -- Rejeição: Existe MDF-e não encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe Não Encerrada:52231111595217000531580050000990781005977890][NroProtocolo:952230009688038]

select CIOT, * from ConhecimentosTransporte where NumConhecto = 190511
--UPDATE ConhecimentosTransporte set CIOT = null where Sequencial = 60000044606
select TipoCIOT,CIOT,* from Rodomaior.dbo.CTe_Dacte where Sequencial = 60000044606
select CIOT, * from ConhecimentosTransporte where Sequencial = 40000035773
select *from CartaFrete where Sequencial = 60000044606


select CT.CIOT, * from ConhecimentosTransporte CT
JOIN OrdemEmbarque OE on OE.NumOrdemEmbarque = CT.CodOrdemEmbarque
where OE.CIOT = 'REPOM'

select * from ConhecimentosTransporte where NumConhecto = 76380 and CodUF = 'mg'

--antigo
select *from Veiculos where CodVeiculo = 354055
select * from ConjuntosVeiculo where CodVeiculo = 354055
select *from Veiculos where CodVeiculo = 354056

-- novo
select *from Veiculos where CodVeiculo = 97214
select * from ConjuntosVeiculo where CodVeiculo = 97214
--UPDATE ConjuntosVeiculo set CodVeiculoAdicional1 = 354056 where CodVeiculo = 97214  -- 126931

exec MonitoraMDFe 7018902


