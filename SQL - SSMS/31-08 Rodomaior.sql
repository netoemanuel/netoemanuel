use RODOMAIOR

select * from ConhecimentosTransporte where NumConhecto = 101181 and CodUF = 'GO'

SELECT * FROM ConhecimentosRelFretes_Cheques CRFC where CRFC.SeqConhecto = 490000005357 and CRFC.NumeroCheque = 101181
--delete FROM ConhecimentosRelFretes_Cheques where SeqConhecto = 490000005357  and NumeroCheque = 101181
--Sequencial	SeqCheque	CodFilial	CodContaBancaria	NumeroCheque	CodRelacaoFrete	SeqConhecto	CodTipoPagamento	ValorCheque	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--10000061007	10000086316	CG	9	101181	49000908	490000005357	7	838.76	12740	CG	2023-08-28 15:49:10.000	NULL	NULL	NULL

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--select PlacaVeiculo,* from veiculos where PlacaVeiculo in ('RWJ9C00','RWJ9D00' , 'RWJ9E00' ,'NRN8008' , 'QAP-1400' , 'QAW0A24')

select * from ConjuntosVeiculo where CodVeiculo =1400 -- Já tem conjunto
select * from ConjuntosVeiculo where CodVeiculo = 24
--insert into ConjuntosVeiculo
--(CodVeiculo,CodTipoConjunto,CodVeiculoAdicional1,CodVeiculoAdicional2,CodVeiculoAdicional3,ComprimentoConjunto,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,Eixos)
--select
--24,	3,	310879,	NULL,	NULL,	NULL,	12451,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	NULL
select * from ConjuntosVeiculo where CodVeiculo = 9200
--insert into ConjuntosVeiculo
--(CodVeiculo,CodTipoConjunto,CodVeiculoAdicional1,CodVeiculoAdicional2,CodVeiculoAdicional3,ComprimentoConjunto,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,Eixos)
--select
--9200,	3,	310879,	NULL,	NULL,	NULL,	12451,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	NULL
select * from ConjuntosVeiculo where CodVeiculo = 9300
--insert into ConjuntosVeiculo
--(CodVeiculo,CodTipoConjunto,CodVeiculoAdicional1,CodVeiculoAdicional2,CodVeiculoAdicional3,ComprimentoConjunto,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,Eixos)
--select
--9300,	3,	310879,	NULL,	NULL,	NULL,	12451,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	NULL
select * from ConjuntosVeiculo where CodVeiculo = 9400
--insert into ConjuntosVeiculo
--(CodVeiculo,CodTipoConjunto,CodVeiculoAdicional1,CodVeiculoAdicional2,CodVeiculoAdicional3,ComprimentoConjunto,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,Eixos)
--select
--9400,	3,	310879,	NULL,	NULL,	NULL,	12451,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	NULL

select * from ConjuntosVeiculo where CodVeiculo = 808
--insert into ConjuntosVeiculo
--(CodVeiculo,CodTipoConjunto,CodVeiculoAdicional1,CodVeiculoAdicional2,CodVeiculoAdicional3,ComprimentoConjunto,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,Eixos)
--select
--808,	3,	310879,	NULL,	NULL,	NULL,	12451,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	NULL

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
exec MonitoraMDFe 70001852

select * from ConhecimentosTransporte where CodOrdemEmbarque = 70001852

select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 700000001832
delete from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 700000001832
--UPDATE RODOMAIOR_GSe.dbo.CTe set Status = Status where Sequencial =700000001832

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
