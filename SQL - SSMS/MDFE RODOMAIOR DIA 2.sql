USE RODOMAIOR

--25/10/2022

exec MonitoraMDFe	18009832
exec MonitoraMDFe  51006280
exec rodomaior_gse.dbo.geramdfeviagem 51006280,�10005,�'CG'



--22/10/2022 - Plant�o  -- 
--exec MonitoraMDFe 18009908
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 407972
--exec rodomaior_gse.dbo.geramdfeviagem 18009908,�10005,�'CG'

--exec MonitoraMDFe 51006238  --             41221011595217000370580020000358541004150151 outra placa rejei��o 41221011595217000370580020000359081004159178 35854
----update RODOMAIOR_GSe.dbo.MDFe set Id = '41221011595217000370580020000358541004150151', cDV = 1, nMDF = 35854, cMDF = '00415015' where Sequencial = 408408
--------RODOMAIOR_GSe.dbo.MDFe set Id = '50221011595217000108580000000855111004149840', cDV = 0, nMDF = 85511, cMDF = '0414984' where Sequencial = 407715 
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 408405
--exec rodomaior_gse.dbo.geramdfeviagem 51006238,�10005,�'CG'
--UPDATE RODOMAIOR_GSe.dbo.MDFe SET Status = 0 WHERE CodManifestoCarga = 415321

--exec rodomaior_gse.dbo.geramdfeviagem 34019781,�10005,�'CG'
--exec MonitoraMDFe 34019781  --rhl8d82
----update RODOMAIOR_GSe.dbo.MDFe set Id = '41221011595217000370580020000359081004159178', cDV = 8, nMDF = 35908, cMDF = '00415917' where Sequencial = 407883
----UPDATE RODOMAIOR_GSe.dbo.MDFe SET Status = 0 WHERE CodManifestoCarga = 415321
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 407883

--exec MonitoraMDFe 3021631 --50221011595217000108580000000855201004150863  --Rejeicao: Duplicidade de MDF-e, com diferen�a na Chave de Acesso  [chMDFe:35221011595217000450580010000577111004149596][nProt:935220027881644][dhAut:2022-10-20T15:34:48-03:00]
--select * from RODOMAIOR_GSe.dbo.MDFe where Id in ('50221011595217000108580000000855091004148926','50221011595217000108580000000855101004149761','50221011595217000108580000000855111004149840','50221011595217000108580000000855131004149968','50221011595217000108580000000855151004150189','50221011595217000108580000000855141004151021','50221011595217000108580000000855171004151384','50221011595217000108580000000855181004151462')
----50221011595217000108580000000855111004149840
--update RODOMAIOR_GSe.dbo.MDFe set Id = '35221011595217000450580010000577111004149596', cDV = 0, nMDF = 57711, cMDF = '0414959' where Sequencial = 407786
--	-- RODOMAIOR_GSe.dbo.MDFe set Id = '50221011595217000108580000000855111004149840', cDV = 0, nMDF = 85511, cMDF = '0414984' where Sequencial = 407715 -- exemplo!
--update RODOMAIOR_GSe.dbo.MDFe_LOG set cStat = 204 where�ID�=�5202026

--exec MonitoraMDFe 18009898  
--exec MonitoraMDFe�18009897

--ORDEM COM 611: 50221011595217000108580000000855151004150189
--exec MonitoraMDFe 7014841	--Rejei��o: Existe MDF-e n�o encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe N�o Encerrada:50221011595217000108580000000855151004150189][NroProtocolo:950220007925517]
--update RODOMAIOR_GSe.dbo.MDFe set Id = '50221011595217000108580000000855151004150189', cDV = 0, nMDF = 85515, cMDF = '0415018' where Sequencial = 407764
---------RODOMAIOR_GSe.dbo.MDFe set Id = '50221011595217000108580000000855111004149840', cDV = 0, nMDF = 85511, cMDF = '0414984' where Sequencial = 407715 -- exemplo!
--update RODOMAIOR_GSe.dbo.MDFe_LOG set cStat = 204 where ID = 5201860
----ORDEM COM MDFE ERRADO!
--exec MonitoraMDFe 2039431
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 407680
--exec rodomaior_gse.dbo.geramdfeviagem 2039431,�10005,�'CG'

--ORDEM COM 611: 50221011595217000108580000000855151004150189
--exec MonitoraMDFe 5020544 	--Rejei��o: --Existe MDF-e n�o encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe N�o Encerrada:35221011595217000450580010000577131004150025][NroProtocolo:935220027885768]
--update RODOMAIOR_GSe.dbo.MDFe set Id = '35221011595217000450580010000577131004150025', cDV = 0, nMDF = 57713, cMDF = '0415002' where Sequencial = 408094
-------RODOMAIOR_GSe.dbo.MDFe set Id = '50221011595217000108580000000855111004149840', cDV = 0, nMDF = 85511, cMDF = '0414984' where Sequencial = 407715 -- exemplo!
--update RODOMAIOR_GSe.dbo.MDFe_LOG set cStat = 204 where ID = 5208950
--ORDEM COM MDFE ERRADO!


	SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
	FROM Rodomaior_gse.dbo.CTe CTe
	JOIN Rodomaior_gse.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM Rodomaior_gse.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
	where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735
	GO

	SELECT 'EVENTO DE CTe COM PROBLEMA' as PROBLEMA, ev.Sequencial_CTe, ev.status, cte.uf, cte.nct, dhEvento, ev.xJust, ev.tpEvento, canc.cStat, canc.xMotivo 
	FROM Rodomaior_gse.dbo.Eventos_CTe ev WITH (NOLOCK) 
	JOIN Rodomaior_gse.dbo.cte cte WITH (NOLOCK) ON cte.Sequencial = ev.Sequencial_CTe 
	LEFT JOIN Rodomaior_gse.dbo.CTe_LOG canc WITH (NOLOCK) ON canc.Sequencial = ev.Sequencial_CTe AND canc.codLog = 32 AND canc.ID = (SELECT MAX(ult.ID) FROM Rodomaior_gse.dbo.CTe_LOG ult WITH (NOLOCK) WHERE ult.Sequencial = canc.Sequencial AND ult.codLog = 32)
	WHERE ev.status IN (0,7,2) AND cte.dhemi >= GETDATE()-1 AND (canc.ID IS NULL OR ISNULL(canc.cStat,0) <> 528)
	GO

	SELECT 'EVENTO DE CTe REENVIANDO...' as PROBLEMA, ev.Sequencial_CTe, ev.status, cte.uf, cte.nct, dhEvento, ev.xJust, ev.tpEvento, canc.cStat, canc.xMotivo 
	FROM Rodomaior_gse.dbo.Eventos_CTe ev 
	JOIN Rodomaior_gse.dbo.cte cte ON cte.Sequencial = ev.Sequencial_CTe 
	LEFT JOIN Rodomaior_gse.dbo.CTe_LOG canc ON canc.Sequencial = ev.Sequencial_CTe AND canc.codLog = 32 AND canc.ID = (SELECT MAX(ult.ID) FROM Rodomaior_gse.dbo.CTe_LOG ult WITH (NOLOCK) WHERE ult.Sequencial = canc.Sequencial AND ult.codLog = 32)
	WHERE ev.status IN (0,7)
	GO
