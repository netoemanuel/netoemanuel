use LONTANO


select * from Veiculos where CodVeiculo = 378515
select PisPasep, * from Fornecedores where CodFornecedor = 40000046 -- 129.48291.38-2

--UPDATE Fornecedores set PisPasep = '116.78798.42-2' where CodFornecedor = 40000046


select * from Programas where CodPrograma = 'PermiteEmbarqueDataAnterior'


exec MonitoraMDFe 6033511

--UPDATE LONTANO_GSe.dbo.MDFe set Status = 0 where Sequencial = 1534801
blk
kill 465

select CodVeiculo, * from ConhecimentosTransporte where NumConhecto = 686611 and CodUF = 'MT'

-- antigo
select * from Veiculos where CodVeiculo = 6673
select * from ConjuntosVeiculo where CodVeiculo = 6673

--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj	Eixos
--6673	2	5578	5576	5577	25.00	10919	CG	2021-01-22 10:07:20.000	NULL	NULL	NULL	3	NULL

-- novo 
select * from Veiculos where CodVeiculo = 1685
select * from ConjuntosVeiculo where CodVeiculo = 1685
--UPDATE ConjuntosVeiculo set CodVeiculoAdicional1 = 5578, CodVeiculoAdicional2 = 5576, CodVeiculoAdicional3 = 5577, CodTipoConjunto = 2  where CodVeiculo = 1685

--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj	Eixos
--1685	2	2750	2748	2751	25.50	12647	CG	2023-09-14 14:17:23.000	NULL	NULL	NULL	3	NULL

--Sequencial_MDFe = 1534048

select * from LONTANO_GSe.dbo.Eventos_MDFe where Status = 0 

select * from LONTANO_GSe.dbo.Eventos_CTE where Status = 0

select * from LONTANO_GSe.dbo.CTE where Status = 0