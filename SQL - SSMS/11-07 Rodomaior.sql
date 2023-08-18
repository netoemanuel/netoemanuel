use RODOMAIOR


select * from ConhecimentosTransporte where NumConhecto = 38738 and CodUF = 'MT'
exec VerificaCTe 810000004016
--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial = 810000004016
--delete FROM RODOMAIOR_GSe.dbo.cte  where Sequencial = 810000004016
SELECT * FROM RODOMAIOR_GSe.dbo.cte  where Sequencial = 810000004016
--EXEC Grava_CTe 810000004016

select * from ConhecimentosComplementados where 10000022986 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
--SeqConhecimentoComplementar	SeqConhecimentoComplementado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndComplementoPeso
--10000022986	310000011913	12622	CG	2023-07-06 10:11:46.000	NULL	NULL	NULL	N
--delete from ConhecimentosComplementados where 10000022986 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)


select * from ConhecimentosTransporte where NumConhecto = 2746 and CodUF = 'pa'
exec VerificaCTe 810000004016

SELECT * FROM ConhecimentosSubstituidos WHERE SeqCTRCSubstituto = 970000002946
--DELETE FROM ConhecimentosSubstituidos WHERE SeqCTRCSubstituto = 970000002946

--SeqCTRCOriginal	SeqCTRCSubstituto	SeqSubstituicao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--970000002883	970000002946	0	12663	STR	2023-07-11 14:14:40.000	NULL	NULL	NULL


---------------------------------------------------------------------------------------------------------------
--ERRO NA EMISSÃO DE CT-E SUBSTITUTO  - 15:40

		select * from RODOMAIOR_GSe.dbo.NFe where nNF = 1804340
		select * from RODOMAIOR_GSe.dbo.NFe where nNF = 1804339

SELECT Sequencial, CodClienteEmitente, CodClienteDestinatario, CodClientePagto
FROM ConhecimentosTransporte 
WHERE (CodUF = 'PR') AND (SerieConhecto = '0') 
AND (NumConhecto = 76258) AND (SituacaoConhecto = 'Emitido' or SituacaoConhecto = 'Complemento')
AND (TipoConhecimento = 'Normal' or TipoConhecimento = 'Complemento')

select * from  ConhecimentosTransporte where NumConhecto = 76258 and CodUF = 'PR'

SELECT Sequencial, CodClienteEmitente, CodClienteDestinatario, CodClientePagto FROM ConhecimentosTransporte WHERE (CodUF = 'PR') AND (SerieConhecto = '0') AND (NumConhecto = 76258) AND (SituacaoConhecto = 'Emitido' or SituacaoConhecto = 'Complemento')


--'11/07/2023 - Emanuel - Conforme Definido por Laércio para tirar o TIPO CTe
--        rsC.Open "SELECT Sequencial FROM ConhecimentosTransporte WHERE (CodUF = '" & txtUFConhecimento.Text & "') AND (SerieConhecto = '" & txtSerieConhecto.Text & "') AND (NumConhecto = " & txtNumCTeSubstituto.Text & ") " & _
--            "AND (SituacaoConhecto = 'Emitido')", frmPrincipal.db, adOpenForwardOnly, adLockReadOnly

--			'LNC-26/06/2023
--			        '11/07/2023 - Emanuel - Conforme Definido por Laércio para tirar o TIPO CTe
--        rsC.Open "SELECT Sequencial FROM ConhecimentosTransporte WHERE (CodUF = '" & txtUFConhecimento.Text & "') AND (SerieConhecto = '" & txtSerieConhecto.Text & "') AND (NumConhecto = " & txtNumCTeSubstituto.Text & ") " & _
--            "AND (SituacaoConhecto = 'Emitido')", frmPrincipal.db, adOpenForwardOnly, adLockReadOnly

---------------------------------------------------------------------------------------------------------------
--MDF-E COM PESO DUPLICADO - PA - 2747 E 2748  / 97002644

select * from ConhecimentosTransporte where NumConhecto = 2725	 and CodUF = 'pa'
select Status, * from RODOMAIOR_GSe.dbo.cte where Sequencial = 970000002922
--update RODOMAIOR_GSe.dbo.cte set Status = 1 where Sequencial = 970000002922 -- voltar para 1 

select * from ConhecimentosTransporte where NumConhecto = 2726	 and CodUF = 'pa'
select Status, * from RODOMAIOR_GSe.dbo.cte where Sequencial = 970000002923
--update RODOMAIOR_GSe.dbo.cte set Status = 1 where Sequencial = 970000002923 -- voltar para 1 