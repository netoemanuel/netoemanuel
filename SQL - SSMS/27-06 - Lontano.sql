use LONTANO

--LONTANO -> CTEs com Problemas !!!

exec VerificaCTe 980000026810

----------------------------------------------------------------------------------------------------------------------------

--#9480 - Carta correção
select * from conhecimentostransporte where NumConhecto = 176964 and CodUF = 'PR'
exec VerificaCTe 430000004910

----------------------------------------------------------------------------------------------------------------------------

--#9499 - Fatura Liquidada "Situação Confirmada" CG-404710.

select Situacao, * from ContasReceber where CodContasReceber = 1449456  -- Liquidada / Confirmada
--UPDATE ContasReceber SET Situacao = 'Liquidada' where CodContasReceber = 1449456 

----------------------------------------------------------------------------------------------------------------------------

--Atendimentos à usuário(a): Clovis solicitado no WhatsApp referente à: "Verificar erro ao inserir acerto".

SELECT MIN(DataInicial) AS DataInicial FROM AcertoViagem WHERE CodVeiculo = 939666

SELECT * FROM AcertoViagem WHERE CodVeiculo = 939666

----------------------------------------------------------------------------------------------------------------------------

--Melhoria no projeto: "ComprasEstoque - Ajuste mascara PISPASEP".

select PisPasep,* from Fornecedores order by DataCriacao

----------------------------------------------------------------------------------------------------------------------------

--#9520 - Desvincular ligações

select * from conhecimentostransporte where NumConhecto = 653219 and CodUF = 'MT'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017624
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017624
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--110000017624	110000018002	11000008	14660	CPV	2023-03-27 13:53:14.000	NULL	NULL	NULL

select * from conhecimentostransporte where NumConhecto = 653284 and CodUF = 'MT'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017627
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017627
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--110000017627	110000018003	11000008	14660	CPV	2023-03-27 13:47:19.000	NULL	NULL	NULL

select * from conhecimentostransporte where NumConhecto = 653211 and CodUF = 'MT'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017623
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017623
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--110000017623	110000018004	11000008	14660	CPV	2023-03-27 13:47:42.000	NULL	NULL	NULL

select * from conhecimentostransporte where NumConhecto = 653267 and CodUF = 'MT'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017625
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017625
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--110000017625	110000018005	11000008	14660	CPV	2023-03-27 13:49:14.000	NULL	NULL	NULL

select * from conhecimentostransporte where NumConhecto = 653103 and CodUF = 'MT'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017613
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017613
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--110000017613	110000018006	11000008	14660	CPV	2023-03-27 13:49:35.000	NULL	NULL	NULL

select * from conhecimentostransporte where NumConhecto = 653060 and CodUF = 'MT'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017610
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017610
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--110000017610	110000018007	11000008	14660	CPV	2023-03-27 13:51:15.000	NULL	NULL	NULL

select * from conhecimentostransporte where NumConhecto = 653070 and CodUF = 'MT'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017611
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017611
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--110000017611	110000018008	11000008	14660	CPV	2023-03-27 13:51:32.000	NULL	NULL	NULL

select * from conhecimentostransporte where NumConhecto = 653285 and CodUF = 'MT'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017628
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017628
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--110000017628	110000018009	11000008	14660	CPV	2023-03-27 13:52:16.000	NULL	NULL	NULL

select * from conhecimentostransporte where NumConhecto = 653190 and CodUF = 'MT'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017619
--delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017619
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--110000017619	110000018010	11000008	14660	CPV	2023-03-27 13:52:31.000	NULL	NULL	NULL

select * from conhecimentostransporte where NumConhecto = 653194 and CodUF = 'MT'
select * from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017620
delete from ConhecimentosSubstituidos where SeqCTRCOriginal = 110000017620
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--110000017620	110000018011	11000008	14660	CPV	2023-03-27 13:52:45.000	NULL	NULL	NULL

----------------------------------------------------------------------------------------------------------------------------


select * from conhecimentostransporte where NumConhecto = 382085 and CodUF = 'MG'

exec VerificaCTe 130000005567


SELECT TOP(1000) * FROM LONTANO_GSe.dbo.tblLog_operacao where NM_Metodo = 'CTeRetRecepcaoWebService' ORDER BY DT_Hs DESC