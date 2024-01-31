use LONTANO


select IndPagtoDiferenca,* from ConhecimentosTransporte where NumConhecto = 611468 and CodUF = 'GO'
select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 280000177893
select * from ConhecimentosRelacaoFretes_log where NumSeqConhecto = 280000177893 order by DataLog desc



select * from ConhecimentosTransporte where NumConhecto = 195598  and CodUF = 'PR'
select * from ConhecimentosComplementados where 640000060386 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

select * from ConhecimentosSubstituidos where 640000060386 in (SeqCTRCOriginal,SeqCTRCSubstituto)
--delete from ConhecimentosSubstituidos where 640000060386 in (SeqCTRCOriginal,SeqCTRCSubstituto)
--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--640000060386	640000060434	0	12458	CAM	2023-12-15 08:34:19.000	NULL	NULL	NULL


select * from EspelhoOmnilink where PlacaVeiculo = 'QAM7213' order by DataCriacao desc

SELECT CodUF + '-' + LTRIM(NumConhecto) As CTRC, QuantidadeSaida,QuantidadeSaida2,*
FROM ConhecimentosTransporte
WHERE Sequencial IN (SELECT SeqConhecimentoComplementar FROM ConhecimentosComplementados WHERE SeqConhecimentoComplementado = 530000160412)

select QuantidadeSaida,* from ConhecimentosTransporte where Sequencial = 530000160412

(SELECT SeqConhecimentoComplementar, * FROM ConhecimentosComplementados WHERE SeqConhecimentoComplementado = 530000160412)

select QuantidadeSaida,* from ConhecimentosTransporte_log where Sequencial = 730000133663


