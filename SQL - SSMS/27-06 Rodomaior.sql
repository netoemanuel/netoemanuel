use RODOMAIOR
--RODOMAIOR -> CTEs com Problemas !!!

select * from ConhecimentosComplementados where 10000022847 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

--SeqConhecimentoComplementar	SeqConhecimentoComplementado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndComplementoPeso
--10000022847	200000009867	12622	CG	2023-06-26 14:28:25.000	NULL	NULL	NULL	N

--delete from ConhecimentosComplementados where 10000022847 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

----------------------------------------------------------------------------------------------------------------------------
--Erro ao cadastrar proprietario (motorista aguardando)

select PisPasep, * from Fornecedores order by DataCadastro desc
--update Fornecedores set PisPasep = '121.32825.61-2' where CodFornecedor = 2004059

----------------------------------------------------------------------------------------------------------------------------

select * from conhecimentostransporte where NumConhecto = 69283 and CodUF = 'MG'

exec VerificaCTe 660000019361

--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial = 660000019361

SELECT TOP(1000) * FROM RODOMAIOR_GSe.dbo.tblLog_operacao where NM_Metodo = 'CTeRetRecepcaoWebService' ORDER BY DT_Hs DESC