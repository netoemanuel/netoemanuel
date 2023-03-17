USE Lontano
EXEC COPAS_NFe.dbo.ListarNFeDistribuicao
EXEC Lontano_GSe.dbo.ListarDFePorDemanda_Pendente
SELECT GETDATE() AS Início
GO
exec VerificaCTe 280000166784 
SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
FROM Lontano_gse.dbo.CTe CTe
JOIN Lontano_GSe.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM Lontano_GSe.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735
GO

SELECT Tipo, Sequencial, Filial, TipoCTe, UF, NumConhecto, DataEmissao, Cliente, Funcionario, Valor, Status, CodStatus, DataHoraAutorizacao, TempoEspera, Ambiente, TipoCTe, Servidor FROM LONTANO_GSe.dbo.ConsultaCTeNova WHERE (DataEmissao BETWEEN '02/01/2023 00:00:00' AND '02/02/2023 23:59:29') AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) ORDER BY DataEmissao DESC




SELECT 'EVENTO DE CTe COM PROBLEMA' as PROBLEMA, ev.Sequencial_CTe, ev.status, cte.uf, cte.nct, dhEvento, ev.xJust, ev.tpEvento, canc.cStat, canc.xMotivo 
FROM Lontano_gse.dbo.Eventos_CTe ev WITH (NOLOCK) 
JOIN Lontano_gse.dbo.cte cte WITH (NOLOCK) ON cte.Sequencial = ev.Sequencial_CTe 
LEFT JOIN Lontano_GSe.dbo.CTe_LOG canc WITH (NOLOCK) ON canc.Sequencial = ev.Sequencial_CTe AND canc.codLog = 32 AND canc.ID = (SELECT MAX(ult.ID) FROM Lontano_GSe.dbo.CTe_LOG ult WITH (NOLOCK) WHERE ult.Sequencial = canc.Sequencial AND ult.codLog = 32)
WHERE ev.status IN (0,7,2) AND cte.dhemi >= GETDATE()-1 AND (canc.ID IS NULL OR ISNULL(canc.cStat,0) <> 528)
GO

SELECT 'EVENTO DE CTe REENVIANDO...' as PROBLEMA, ev.Sequencial_CTe, ev.status, cte.uf, cte.nct, dhEvento, ev.xJust, ev.tpEvento, canc.cStat, canc.xMotivo 
FROM Lontano_gse.dbo.Eventos_CTe ev 
JOIN Lontano_gse.dbo.cte cte ON cte.Sequencial = ev.Sequencial_CTe 
LEFT JOIN Lontano_GSe.dbo.CTe_LOG canc ON canc.Sequencial = ev.Sequencial_CTe AND canc.codLog = 32 AND canc.ID = (SELECT MAX(ult.ID) FROM Lontano_GSe.dbo.CTe_LOG ult WITH (NOLOCK) WHERE ult.Sequencial = canc.Sequencial AND ult.codLog = 32)
WHERE ev.status IN (0,7)
GO

--SELECT 'MDFe COM PROBLEMA' as PROBLEMA, mvoe.NumOrdemEmbarque, MDFe.dhEmi, MDFe.status, ult.dhLog, ult.CodLog, ult.tpLog, ult.cStat, ult.xMotivo, MDFe.Sequencial, MDFe.CodManifestoCarga, 'UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = ' + CONVERT(VARCHAR(12),MDFe.Sequencial) AS SQL1
--FROM Rodomaior_gse.dbo.MDFe MDFe 
--JOIN MdfeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = MDFe.CodManifestoCarga 
--JOIN Rodomaior_gse.dbo.mdfe_log ult ON ult.Sequencial = MDFe.Sequencial AND ult.ID = (SELECT MAX(UltLog.ID) FROM Rodomaior_gse.dbo.mdfe_log UltLog WHERE UltLog.Sequencial = ult.Sequencial)
--JOIN OrdemEmbarque oe ON oe.NumOrdemEmbarque = mvoe.NumOrdemEmbarque
--LEFT JOIN MDFeViagem_OrdemEmbarque mvout on mvout.NumOrdemEmbarque = mvoe.NumOrdemEmbarque AND mvout.SeqViagem <> mvoe.SeqViagem
--LEFT JOIN Rodomaior_GSe.dbo.MDFe outro ON outro.CodManifestoCarga = mvout.SeqViagem AND outro.Status = 1
--where MDFe.dhemi >= GETDATE()-2 and MDFe.status not in (1,5,9) AND outro.Sequencial IS NULL AND oe.Situacao in (1,2)
--		AND ult.cStat NOT IN (611)  --> COMENTAR AQUI CASO QUEIRA VER ESSES PROBLEMAS (NORMALMENTE NÃO RESOLVIDOS NA GS)
--GO

SELECT 'MDFe REENVIANDO...' as PROBLEMA, mdfe.Status, mvoe.NumOrdemEmbarque, MDFe.dhEmi, MDFe.status, ult.dhLog, ult.CodLog, ult.tpLog, ult.cStat, ult.xMotivo, MDFe.Sequencial, MDFe.CodManifestoCarga, 'UPDATE Rodomaior_gse.dbo.MDFe SET Status = 0 where sequencial = ' + CONVERT(VARCHAR(12),MDFe.Sequencial) AS SQL1
FROM Rodomaior_gse.dbo.MDFe MDFe WITH (NOLOCK) 
JOIN Rodomaior_gse.dbo.mdfe_log ult WITH (NOLOCK) ON ult.Sequencial = MDFe.Sequencial AND ult.ID = (SELECT MAX(UltLog.ID) FROM Rodomaior_gse.dbo.mdfe_log UltLog WITH (NOLOCK) WHERE UltLog.Sequencial = ult.Sequencial)
LEFT JOIN MdfeViagem_OrdemEmbarque mvoe WITH (NOLOCK) ON mvoe.SeqViagem = MDFe.CodManifestoCarga 
LEFT JOIN OrdemEmbarque oe ON oe.NumOrdemEmbarque = mvoe.NumOrdemEmbarque
LEFT JOIN MDFeViagem_OrdemEmbarque mvout on mvout.NumOrdemEmbarque = mvoe.NumOrdemEmbarque AND mvout.SeqViagem <> mvoe.SeqViagem
LEFT JOIN Rodomaior_GSe.dbo.MDFe outro ON outro.CodManifestoCarga = mvout.SeqViagem AND outro.Status = 1
where MDFe.status not in (1,2,5,9) 
GO

--update Rodomaior_GSe.dbo.Eventos_MDFe set status = 0 
SELECT 'EVENTO DE MDFe COM PROBLEMA' as PROBLEMA, mvoe.NumOrdemEmbarque, MDFe.Status Status_MDFe, Ev.status Status_EVENTO, ult.cStat, ult.xMotivo, Ev.* 
FROM Rodomaior_gse.dbo.Eventos_MDFe Ev 
JOIN Rodomaior_gse.dbo.MDFe MDFe ON MDFe.Sequencial = Ev.Sequencial_MDFe 
JOIN MdfeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = MDFe.CodManifestoCarga 
JOIN Rodomaior_gse.dbo.mdfe_log ult ON ult.Sequencial = ev.Sequencial_MDFe AND ult.ID = (SELECT MAX(UltLog.ID) FROM Rodomaior_gse.dbo.mdfe_log UltLog WITH (NOLOCK) WHERE UltLog.Sequencial = Ev.Sequencial_MDFe)
where MDFe.status in (1,2) AND Ev.Status IN (0,2)
--and dhEvento >= GETDATE()-1
and dhemi >= GETDATE()-2
AND ult.cStat NOT IN (219)  --> COMENTAR AQUI CASO QUEIRA VER ESSES PROBLEMAS (NORMALMENTE NÃO RESOLVIDOS NA GS)
order by mvoe.NumOrdemEmbarque, dhEvento DESC
GO

SELECT 'EVENTO DE MDFe REENVIANDO...' as PROBLEMA, mvoe.NumOrdemEmbarque, MDFe.Status Status_MDFe, Ev.status Status_EVENTO, Ev.* 
FROM Rodomaior_gse.dbo.Eventos_MDFe Ev WITH (NOLOCK) 
JOIN Rodomaior_gse.dbo.MDFe MDFe WITH (NOLOCK) ON MDFe.Sequencial = Ev.Sequencial_MDFe 
LEFT JOIN MdfeViagem_OrdemEmbarque mvoe WITH (NOLOCK) ON mvoe.SeqViagem = MDFe.CodManifestoCarga 
where Ev.Status IN (0,7)
order by mvoe.NumOrdemEmbarque, dhEvento DESC
GO

;WITH mdfes AS
(
	SELECT ctrc.CodUF, ctrc.NumConhecto, ctrc.DataEmissao, oe.NumOrdemEmbarque, Rotas.DescricaoRota, ctrc.NumFormulario, dbo.GeraMDFeEmbarque(oe.NumOrdemEmbarque) AS GeracaoMDFe, cte.IndImpressao, ctrc.TipoConhecimento, ctrc.SituacaoConhecto, cte.tpCTe, cte.tpServ
	FROM ConhecimentosTransporte ctrc (NOLOCK)
	JOIN Rotas (NOLOCK) ON Rotas.CodRota = ctrc.CodRota
	JOIN OrdemEmbarque oe (NOLOCK) ON oe.NumOrdemEmbarque = ctrc.CodOrdemEmbarque
	JOIN Rodomaior_GSe.dbo.CTe cte (NOLOCK) ON cte.Sequencial = ctrc.Sequencial
	WHERE ctrc.DataEmissao >= GETDATE()-1 AND cte.Status = 1 AND ctrc.SituacaoConhecto <> 'Cancelado' AND ctrc.NumFormulario IS NOT NULL AND ctrc.TipoConhecimento <> 'Substituto'
	--AND oe.NumOrdemEmbarque NOT IN (23025845,64018602,79004286,94024635,42006279,51017514,64021503,24038918)
	AND oe.NumOrdemEmbarque NOT IN (64028388,7033225,79004286,94024635,24038918,64026212,25072491,72034160,64026719,25072489,55029585,55029587,6014903,30047603,19024343,91018038,27051611,51020597,10053479,91018043,3120602)
)
SELECT 'MDFEs ainda não gerados ou Rejeitados' AS PROBLEMA, CodUF, NumConhecto, DataEmissao, NumOrdemEmbarque, DescricaoRota, NumFormulario, GeracaoMDFe, IndImpressao, TipoConhecimento, SituacaoConhecto, tpCTe, tpServ
FROM mdfes
WHERE GeracaoMDFe IN ('Gerar','Rejeitado') AND ISNULL(NumFormulario,0) > 0
ORDER BY DataEmissao
GO

--Verificação e ajuste de Eventos de CTEs que ficaram com problemas no log.
--select 'MDFe' AS REVER, Status, mvoe.NumOrdemEmbarque, mdfe.* from Rodomaior_gse.dbo.MDFe mdfe JOIN MDFeViagem_OrdemEmbarque mvoe on mvoe.SeqViagem = mdfe.CodManifestoCarga where mdfe.dhEmi >= GETDATE()-1 and isnull(mdfe.status,0) IN (0,2,7,8)
--select 'MDFe Eventos' AS REVER, ev.Status, mvoe.NumOrdemEmbarque, ev.* from Rodomaior_gse.dbo.Eventos_MDFe ev JOIN Rodomaior_GSe.dbo.MDFe mdfe on mdfe.Sequencial = ev.Sequencial_MDFe JOIN MDFeViagem_OrdemEmbarque mvoe on mvoe.SeqViagem = mdfe.CodManifestoCarga where ev.dhEvento >= getdate()-5 and isnull(ev.status,0) IN (0,2,7,8) order by mdfe.status
--select 'CTe' AS REVER, Status, * from Rodomaior_gse.dbo.CTe where dhEmi >= GETDATE()-1 and isnull(status,0) IN (0,2,8)
--select 'CTe Eventos' AS REVER, Status, * from Rodomaior_gse.dbo.eventos_cte where dhEvento >= GETDATE()-1 and isnull(status,0) IN (0,2,7,8)
--exec verificacte 30000113437
--select status, * from Rodomaior_gse.dbo.eventos_cte where sequencial_cte = 510000017424
--delete from Rodomaior_gse.dbo.eventos_cte where sequencial_cte = 640000028775 and status = 0
--update Rodomaior_gse.dbo.CTe set Status = 0 where dhEmi >= GETDATE()-1 and isnull(status,0) IN (0,2,8)
--update Rodomaior_gse.dbo.Eventos_CTe set Status = 0 where sequencial = 65753
--update Rodomaior_GSe.dbo.CTe set Status = 0 where Sequencial = 270000055343
--select * from Rodomaior_GSe.dbo.MDFe where Sequencial = 584455
--select status, * from Rodomaior_GSe.dbo.eventos_MDFe where Sequencial_mdfe = 584455
--select * from MDFeViagem_OrdemEmbarque where SeqViagem = 534149
--exec MonitoraMDFe 79010242
--select 'exec Encerra_MDFe ' + convert(varchar(8),mvoe.NumOrdemEmbarque) + ' , 0, '' + REPLACE((CONVERT(varchar(10),GETDATE(),102)+' '+CONVERT(varchar(10),GETDATE(),108)),'.','-') + '', ' + LEFT(convert(varchar(7),d.cMunDescarga),2) + ', ' + convert(varchar(7),d.cMunDescarga) AS 'Statement'
----select mvoe.NumOrdemEmbarque, pago.*, naopago.*
--from Rodomaior_GSe.dbo.MDFe mdfe
--JOIN MDFeViagem_OrdemEmbarque mvoe on mvoe.SeqViagem = mdfe.CodManifestoCarga
--JOIN (select ctrc.CodOrdemEmbarque, ctrc.Sequencial, crf.datacriacao from ConhecimentosTransporte ctrc JOIN ConhecimentosRelacaoFretes crf on crf.NumSeqConhecto = ctrc.Sequencial and crf.CodTipoPagamento = 2) pago on pago.CodOrdemEmbarque = mvoe.NumOrdemEmbarque
--LEFT JOIN (select ct1.CodOrdemEmbarque, ct1.Sequencial from ConhecimentosTransporte ct1 LEFT JOIN ConhecimentosRelacaoFretes crf1 on crf1.NumSeqConhecto = ct1.Sequencial and crf1.CodTipoPagamento = 2 where ct1.SituacaoConhecto <> 'Cancelado' and crf1.CodRelacaoFrete is null) naopago on naopago.CodOrdemEmbarque = mvoe.NumOrdemEmbarque and naopago.Sequencial <> pago.Sequencial 
--JOIN Rodomaior_GSe.dbo.Descarga_MDFe d on d.Sequencial = mdfe.Sequencial and d.SeqDescarga = (select MAX(ultd.SeqDescarga) from Rodomaior_GSe.dbo.Descarga_MDFe ultd WHERE ultd.Sequencial = mdfe.Sequencial)
--JOIN Rodomaior_gse.dbo.mdfe_log aut on aut.codLog IN (22,32) and aut.status = 1 and aut.dhLog = (SELECT MAX(Ult.dhLog) FROM Rodomaior_gse.dbo.mdfe_log Ult WHERE Ult.Sequencial = mdfe.Sequencial and Ult.codLog IN (22,32))
--where mdfe.sequencial = 584455 and mdfe.Status = 1 

IF 1 = 1 BEGIN
	GOTO FIM
END


/*
--exec stpBusca_Rastreamento_Correios @Ds_Rastreamento = 'PE207175695BR'

--Verificar bloqueios e planos de execução de processos em andamento:
sp_who4
blk
wtf 307
kill 307
KILL 307 with statusonly
exec UsoCPU
sp_who2
sp_whoisactive @get_plans = 2, @get_outer_command = 1, @get_transaction_info = 1, @find_block_leaders = 1, @get_locks = 1
--KILL xx WITH STATUSONLY;
select * from master.dbo.WhoIs WHERE LEFT(duration,2) > '00' --Transacoes durando mais de 24hs
select * from master.dbo.WhoIs WHERE status <> 'sleeping' AND (sql_text IS NOT NULL OR sql_command IS NOT NULL)
select * from master.dbo.WhoIs WHERE status <> 'sleeping' AND Duration > '00 01:00:' and (sql_text IS NOT NULL OR sql_command IS NOT NULL) order by duration desc	--> mais de 1h
select * from master.dbo.WhoIs WHERE status <> 'sleeping' AND Duration > '00 00:01:' and (sql_text IS NOT NULL OR sql_command IS NOT NULL) order by duration desc	--> mais de 1 min
select * from master.dbo.WhoIs where blocked_session_count > 0
select * from master.dbo.WhoIs WHERE session_id = 307
select * from master.dbo.ActiveTrans
select * from master.dbo.OpenSections
wtf 289
sp_who2

SELECT MAX(DataNotaEntrada) AS DataMaxima, ValorTotalNotaEntrada FROM NotaEntrada WHERE (CodFornecedor = 25000601) GROUP BY ValorTotalNotaEntrada


--Procurar obbjetos no banco de dados:

exec ProcuraTrigger 
	@TrgName = ''	--> Nome da Trigger (default='' -> todas)
  , @TabName = ''	--> Nome da Tabela (dafault ='' -> todas)
  , @TrgStat = 0	--> Status: -1=Qualquer um / 0=Habilitadas / 1=Desabilitadas

exec MASTER.dbo.ProcuraObjetos 'Rodomaior', 'outros', 'Tudo'
--exec MASTER.dbo.ProcuraObjetos 'ZDA', 'Rodomaior', 'Objetos'
--exec MASTER.dbo.ProcuraObjetos 'ZDA', 'COPAS', 'Objetos'
--exec MASTER.dbo.ProcuraObjetos 'ZDA_GSe', 'Rodomaior', 'Objetos'
--exec MASTER.dbo.ProcuraObjetos 'ZDA_GSe', 'COPAS', 'Objetos'
--exec MASTER.dbo.ProcuraObjetos 'ZDA_NFe', 'Rodomaior', 'Objetos'
--exec MASTER.dbo.ProcuraObjetos 'ZDA_NFe', 'COPAS', 'Objetos'
--exec MASTER.dbo.ProcuraObjetos 'ZDA_Participacoes', 'Rodomaior', 'Objetos'
--exec MASTER.dbo.ProcuraObjetos 'ZDA_Participacoes', 'COPAS', 'Objetos'
exec MASTER.dbo.ProcuraObjetos 'ZDA_Participacoes_GSe', 'Rodomaior', 'Objetos'
exec MASTER.dbo.ProcuraObjetos 'ZDA_Participacoes_GSe', 'COPAS', 'Objetos'
exec MASTER.dbo.ProcuraObjetos 'ZDA_Participacoes_NFe', 'Rodomaior', 'Objetos'
exec MASTER.dbo.ProcuraObjetos 'ZDA_Participacoes_NFe', 'COPAS', 'Objetos'
exec MASTER.dbo.ProcuraObjetos 'COPAS', 'xped', 'Tudo'
exec MASTER.dbo.ProcuraObjetos 'TRACES', 'Error_Log_Result', 'Tudo'
exec MASTER.dbo.ProcuraObjetos 'ZDA', 'victor', 'Tudo'
-->pr_inserirRetornoRepomContratoViagem
-->pr_inserirOcorrenciaCartaFrete
-->pr_cancelaCiotCartaFrdeiete
-->InserirFatura_eFrete_Itens
exec stpSecurity_Checklist 'pt'

--Procurar campo pelo nome em todo o banco:
SELECT T.name AS Tabela, C.name AS Coluna
FROM sys.sysobjects AS T (NOLOCK) 
INNER JOIN sys.all_columns AS C (NOLOCK) ON T.id = C.object_id AND T.XTYPE = 'U' 
WHERE C.NAME LIKE '%CND%' 
ORDER BY T.name ASC


select program_name()
select APP_NAME()
*/

