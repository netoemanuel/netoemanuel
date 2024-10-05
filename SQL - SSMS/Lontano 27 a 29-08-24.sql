select CodMotorista, * from ConhecimentosTerceiros where NumConhecto IN ( '450441','450443','87792','87841','88074','88072','88210','88311','88452','88590')
--UPDATE ConhecimentosTerceiros SET CodMotorista = 1106169 where NumConhecto IN ( '450441','450443','87792','87841','88074','88072','88210','88311','88452','88590')  --1106286

select CodMotorista, * from ConhecimentosTerceiros where NumConhecto IN (  '450637','450521','88189')
--UPDATE ConhecimentosTerceiros SET CodMotorista = 36001018 where NumConhecto IN (  '450637','450521','88189')  --1106308

SELECT * FROM AgendaDocumentos order BY DataCriacao desc
SELECT * FROM AgendaDocumentos WHERE (SequencialTabela =  1000157)
--UPDATE AgendaDocumentos SET Situacao = 'Previsto' WHERE (SequencialTabela =  1000157)
SELECT * FROM AgendaDocumentos_Log WHERE (SequencialTabela =  1000157)


SELECT * FROM NFSe_ConhecimentosTransporte where Sequencial IN (720000033933,830000068972)
DELETE FROM NFSe_ConhecimentosTransporte where Sequencial IN (720000033933,830000068972)

EXEC VerificaCTe 580000017241
SELECT * FROM LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 580000017241

EXEC VerificaCTe 430000009986
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 430000009986

EXEC VerificaCTe 910000049196

SELECT * from Usuarios where CodUsuario = 13215
select CodUsuarioAlteracao,* from ConhecimentosTransporte where NumConhecto = 705211 and CodUF = 'MT'
select NumFormulario,* from ConhecimentosTransporte_log where NumConhecto = 705211 and CodUF = 'MT'  AND SerieConhecto = '0' --AND DataLog > '2024-03-27 08:33:25.000'        ORDER BY DataLog desc
--UPDATE ConhecimentosTransporte_log set CodUsuarioLog = 13215 where NumConhecto = 705211 and CodUF = 'MT'  AND SerieConhecto = '0' AND DataLog > '2024-03-27 08:33:25.000'  -- orginal 14663
--SELECT * from RegistroAcessosSistema where CodUsuario = 14663 and DataAcesso BETWEEN '2024-03-27 08:00:25.000' and '2024-03-27 08:42:27.000'


--#20137 - ligaçao cte Substituido
SELECT * FROM ConhecimentosSubstituidos where 410000053151 in (SeqCTRCOriginal,SeqCTRCSubstituto) 
SELECT * FROM ConhecimentosSubstituidos where 410000053151 in (SeqCTRCOriginal,SeqCTRCSubstituto) and DataCriacao = '2024-06-24 09:13:23.000'

SELECT * FROM ConhecimentosSubstituidos where 410000053153  in (SeqCTRCOriginal,SeqCTRCSubstituto)

--GO-629297
--GO-630215
EXEC VerificaCTe 410000053070

select CodUsuarioAlteracao,* from ConhecimentosTransporte where NumConhecto = 413882  and CodUF = 'MG'	
EXEC VerificaCTe 880000145623
--exec Grava_CTe 880000145623

select * from dbo.ConhecimentosCliente where SequencialConhecimento = 880000145623


SELECT CTRC.Sequencial, CASE WHEN ISNULL(sub.nDoc,'') = '' THEN CONVERT(DECIMAL(9,0),SUBSTRING(sub.chave,26,9)) ELSE sub.nDoc END
	, 1, CTRC.CodUsuarioCriacao, CTRC.CodFilialCriacao, CTRC.DataCriacao
FROM ConhecimentosTransporte ctrc
JOIN Clientes_Complemento cli on cli.CodCliente = ctrc.CodClientePagto
JOIN LONTANO_GSe.dbo.DoctoSubcontratacao_CTe sub ON sub.Sequencial = ctrc.Sequencial
-- WHERE ctrc.Sequencial = 50000019211
WHERE ctrc.DataEmissao >= '2024-01-01'
	AND cli.CodClienteMatriz = 53003771 --> Aliança Transportes
	AND (sub.nDoc IS NOT NULL OR (sub.nDoc IS NULL AND sub.chave IS NOT NULL))
	AND ctrc.Sequencial NOT IN (SELECT SequencialConhecimento FROM ConhecimentosCliente)


	exec MASTER.dbo.ProcuraObjetos 'lontano_GSe', 'VendasVencimentos', 'Tudo'



