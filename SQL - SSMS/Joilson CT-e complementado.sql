select * from ConhecimentosTransporte where Sequencial = 310000008469-- NumConhecto = 5237 and CodUF = 'GO' --10000020752

select * from ComplementoConhecimento where NumSeqConhecto = 10000020752
select * from ConhecimentosComplementados where 10000020752 in (SeqConhecimentoComplementar, SeqConhecimentoComplementado)  10000000098
MS-4501

--SELECT CodUF + '-' + LTRIM(NumConhecto) As CTRC, * 
--FROM ConhecimentosTransporte 
--WHERE Sequencial 
--IN (SELECT SeqConhecimentoComplementado FROM ConhecimentosComplementados WHERE SeqConhecimentoComplementar  = 10000020752) 

SELECT CodUF + '-' + LTRIM(NumConhecto) As CTRC, *
FROM ConhecimentosTransporte
WHERE Sequencial IN
(SELECT SeqConhecimentoComplementar FROM ConhecimentosComplementados )

SELECT CodUF + '-' + LTRIM(NumConhecto) As CTRC, * FROM ConhecimentosTransporte WHERE Sequencial IN (SELECT SeqConhecimentoComplementar FROM ConhecimentosComplementados WHERE SeqConhecimentoComplementado = 10000020752)


--verificar com joilson quala  forma de lançamento do s ctes, pode estar invertida. 