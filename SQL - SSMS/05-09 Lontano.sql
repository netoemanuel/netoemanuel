select Status,* from LONTANO_GSe.dbo.Eventos_MDFe where sequencial_mdfe = 1519478

------------------------------------------------------------------------------------------
select CodVeiculo, * from ConhecimentosTransporte where NumConhecto = 596693 and CodUF = 'GO'
select * from Veiculos where CodVeiculo = 489382
Select * from ConjuntosVeiculo where CodVeiculo = 489382
--delete from ConjuntosVeiculo where CodVeiculo = 489382
--antigo

--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj	Eixos
--489382	2	480466	480468	480467	NULL	14595	CAT	2023-09-05 09:22:44.000	NULL	NULL	NULL	NULL	NULL

--UPDATE ConjuntosVeiculo set CodVeiculoAdicional1 = , CodVeiculoAdicional2 = , CodVeiculoAdicional3 =  where CodVeiculo = 489382


select * from Veiculos where CodVeiculo = 428238
Select * from ConjuntosVeiculo where CodVeiculo = 428238


exec MonitoraMDFe 41058255  -- Rejeição: Existe MDF-e não encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe Não Encerrada:52230811455829000367580030003572611014004063][NroProtocolo:952230006303957]

select * from LONTANO_GSe.dbo.MDFe where Sequencial in (1522433,1522430)
--delete from LONTANO_GSe.dbo.MDFe where Sequencial in (1522433,1522430)
---------------------------------------------------------------------------------------------------------------------------------------------------------
