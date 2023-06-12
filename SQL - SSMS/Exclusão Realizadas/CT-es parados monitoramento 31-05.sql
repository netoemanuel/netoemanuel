SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
FROM Lontano_gse.dbo.CTe CTe
JOIN Lontano_GSe.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM Lontano_GSe.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735
GO
--PR	179541
--PR	179547
--MS	480963

select * from ConhecimentosComplementados where 760000054095  in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
--SeqConhecimentoComplementar	SeqConhecimentoComplementado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndComplementoPeso
--760000054095	760000053878	12692	CG	2023-05-30 08:37:05.047	NULL	NULL	NULL	N
delete from ConhecimentosComplementados where 760000054095  in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
exec VerificaCTe 470000015737

select * from LONTANO_GSe.dbo.CTe where ID = '41230311455829000790570000001745801001745805'  -- PR-174580, PR 176309, MS 478236