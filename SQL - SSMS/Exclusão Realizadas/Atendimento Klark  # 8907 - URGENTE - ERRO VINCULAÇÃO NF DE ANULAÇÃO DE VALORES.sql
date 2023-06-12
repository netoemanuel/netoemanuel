
--INSERT INTO ConhecimentosSubstituidos
SELECT Velho.Sequencial, Novo.Sequencial, Nota.Sequencial, 14102, 'CG', '05/31/2023 14:54:04', NULL, NULL, NULL 
FROM ConhecimentosTransporte Velho
JOIN ConhecimentosTransporte Novo ON Novo.CodUF = 'PR' 
AND Novo.NumConhecto = 162573 and novo.SerieConhecto = '0' 
JOIN SubstituicaoConhecimentosTransporte Nota ON Nota.Sequencial = 1005405
WHERE (Velho.SerieConhecto = '0') AND (Velho.CodUF = 'PR') 
AND (Velho.NumConhecto = 157354)  -- 162573



select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 920000002535 
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 920000002535
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--920000002535	920000002563	1004998	10277	CG	2022-09-30 16:19:59.000	NULL	NULL	NULL

select * from ConhecimentosTransporte where NumConhecto = 157354 and CodUF = 'PR'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 390000007916 
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 390000007916
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--390000007916	390000008074	1004998	10277	CG	2022-09-30 16:14:51.000	NULL	NULL	NULL

select * from ConhecimentosTransporte where NumConhecto = 153626 and CodUF = 'PR'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 390000007918 
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 390000007918
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--390000007918	390000008075	1004998	10277	CG	2022-09-30 16:19:01.000	NULL	NULL	NULL

select * from ConhecimentosTransporte where NumConhecto = 153626 and CodUF = 'PR'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 390000007918 
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 390000007918