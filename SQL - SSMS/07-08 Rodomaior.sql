use RODOMAIOR

select * from ConhecimentosComplementados where 10000023391 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

--SeqConhecimentoComplementar	SeqConhecimentoComplementado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndComplementoPeso
--10000023391	500000001311	12852	CG	2023-08-04 13:57:54.000	NULL	NULL	NULL	N

--delete from ConhecimentosComplementados where 10000023391 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--ALTERAÇÃO DE CAVALO MDF-E CTE 182024 UF: MS
--antigo
select * from Veiculos where CodVeiculo = 295820
select * from ConjuntosVeiculo where CodVeiculo = 295820
--novo
select * from Veiculos where CodVeiculo = 115003
select * from ConjuntosVeiculo where CodVeiculo = 115003
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Eixos
--115003	3	102270	NULL	NULL	NULL	12269	DOU	2023-08-07 08:43:19.000	NULL	NULL	NULL	NULL
--delete from ConjuntosVeiculo where CodVeiculo = 115003

--insert INTO ConjuntosVeiculo(CodVeiculo,CodTipoConjunto,CodVeiculoAdicional1,CodVeiculoAdicional2,CodVeiculoAdicional3,ComprimentoConjunto,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,Eixos)
--select 115003,3,102270,NULL,NULL,NULL,12269,'DOU','2023-08-07 08:43:19.00',NULL,NULL,NULL,NULL

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from Veiculos where CodVeiculo = 295820
select * from ConjuntosVeiculo where CodVeiculo = 295820
--novo
select * from Veiculos where CodVeiculo = 115003
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from Veiculos where CodVeiculo = 42315
select * from ConjuntosVeiculo where CodVeiculo = 42315
--Conjunto Original
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Eixos
--42315	2	42321	42318	42317	NULL	11576	UBA	2023-05-09 09:37:33.000	12508	SGS	2023-07-20 13:00:53.000	NULL
select * from Veiculos where PlacaVeiculo in ('EXR5J75' , 'EJB2F55' , 'FYA9D75')

--update ConjuntosVeiculo set CodVeiculoAdicional1 = 46241, CodVeiculoAdicional2 = 46248 , CodVeiculoAdicional3 = 46252 where CodVeiculo = 42315

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------