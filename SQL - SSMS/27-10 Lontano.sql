use lontano

select * from ConhecimentosTransporte where NumConhecto = 391378 and CodUF = 'MG'
-- novo
select * from Veiculos where CodVeiculo = 489382
select * from ConjuntosVeiculo where CodVeiculo = 489382

--insert into ConjuntosVeiculo (CodVeiculo,	CodTipoConjunto,	CodVeiculoAdicional1,	CodVeiculoAdicional2,	CodVeiculoAdicional3,	ComprimentoConjunto,	CodUsuarioCriacao,	CodFilialCriacao,	DataCriacao,	CodUsuarioAlteracao,	CodFilialAlteracao,	DataAlteracao,	CodTipoVeicConj,	Eixos)
--select 489382,	2,	246764,	246991,	236691,	NULL,	14102,	'CG',	getdate(),	NULL,	NULL,	NULL,	3,	NULL

--antigo
select * from Veiculos where CodVeiculo = 493373
select * from ConjuntosVeiculo where CodVeiculo = 493373

exec MonitoraMDFe 5017982
--delete LONTANO_GSe.dbo.MDFe where Sequencial = 1556384
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--select * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1554760
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select TarifaFreteEmpresa, * from ConhecimentosTransporte where NumConhecto = 500649  and CodUF = 'MS' --5450.0000
 --UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 418.6510 where Sequencial = 250000077122
 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--BLK

--KILL 235

--SELECT CodVeiculo, MesAno FROM OrigemDadosItensAcerto INNER JOIN AcertoViagem on Sequencial = SeqAcerto WHERE CodOrigemDados = 2563600 and (CodTipoMovAcerto = 15 or CodTipoMovAcerto = 18 or CodTipoMovAcerto = 34 or CodTipoMovAcerto = 10 or CodTipoMovAcerto = 9) and Marcador = 'X'

select  * from ConhecimentosTerceiros where NumConhecto = '362690'

select  CodCliente,* from FretesTerceiros where CodFreteTerceiro = 2016812

 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select CodUsuarioCriacao,* from OrdemEmbarque where NumOrdemEmbarque = 41058945
select TipoDispositivoValePedagio,* from OrdemEmbarque_log where NumOrdemEmbarque = 41058945

select * from Usuarios where CodUsuario = 14524


select * from LONTANO_NFe.dbo.tblEmitentes