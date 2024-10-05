SELECT * from ContasReceber where CodContasReceber = 1573401
SELECT Desconto,* from ContasRecebidas where CodContasReceber = 1573401

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--#20137 - ligaçao cte Substituido
SELECT * FROM ConhecimentosSubstituidos where 410000053151 in (SeqCTRCOriginal,SeqCTRCSubstituto) 
SELECT * FROM ConhecimentosSubstituidos where 410000053151 in (SeqCTRCOriginal,SeqCTRCSubstituto) and DataCriacao = '2024-06-24 10:10:35.000'
--delete FROM  ConhecimentosSubstituidos where 410000053151 in (SeqCTRCOriginal,SeqCTRCSubstituto) and DataCriacao = '2024-06-24 10:10:35.000'

--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--410000053151	410000053152	0	11990	CAT	2024-06-24 10:10:35.000	NULL	NULL	NULL

SELECT SituacaoConhecto,TipoConhecimento,* from ConhecimentosTransporte where NumConhecto = 630215 and CodUF = 'GO' and SerieConhecto = '0'  -- Emitido
--UPDATE ConhecimentosTransporte SET SituacaoConhecto = 'Substituído', TipoConhecimento = 'Substituído' where NumConhecto = 630215 and CodUF = 'GO' and SerieConhecto = '0'
SELECT * FROM ConhecimentosSubstituidos where 410000053153  in (SeqCTRCOriginal,SeqCTRCSubstituto)

--GO-629297
--GO-630215
--GO-630232
EXEC VerificaCTe 410000053151
EXEC VerificaCTe 410000053153
--INSERT INTO ConhecimentosSubstituidos VALUES (410000053151,410000053153,0,	11990,	'CAT',	'2024-06-24 10:10:35.000',	NULL,	NULL,	NULL)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from Programas where CodUsuarioCriacao = 12563
select * from Usuarios where CodUsuario IN (10002,10277,10477,13865,14102)
SELECT * FROM Programas WHERE (CodPrograma = 'frmRelFretesPropriosNFaturados') 
--INSERT INTO Programas VALUES ('frmRelFreteTerceirosNFaturados','Fretes Terceiros não Faturados Até a Data',	7,	6,	'Novo',	'Relatório',	'frmRelFreteTerceirosNFaturados',	'Em Desenvolvimento',	14102,	NULL,	NULL,	NULL,	14102,	'CG','2024-08-08 12:24:21.000',	14102,	'CG',	'2024-08-08 12:24:59.000',	NULL,	NULL,	NULL,	NULL,	NULL)