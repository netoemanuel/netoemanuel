use RODOMAIOR


SELECT TipoConhecimento ,* FROM ConhecimentosTransporte where NumConhecto = 22251 and SerieConhecto = 'NE'
SELECT TipoConhecimento ,* FROM ConhecimentosTransporte_log where NumConhecto = 220215  and SerieConhecto = 'NE'

select * from NotasFiscaisConhecimento where SequencialConhecimento = 550000003157
select * from NotasFiscaisConhecimento where SequencialConhecimento = 550000003160
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe  = '51220661156501009293550030002679231552893197', CodModelo = 55, CodigoCFOP = '5101', SerieNF = 3, NumeroNF = '267923',  
-- DataEmissaoNF = '2022-06-15 00:00:00', ValorNF = 83852.31, ValorProdutos = 2266.2786, ValorICMS = 838.19 , BaseCalculoICMS = 4930.51, PesoNF = 37000.000 where SequencialConhecimento = 550000003160

SELECT 'EXEC MonitoraMDFe ' + CONVERT(VARCHAR,mvoe.NumOrdemEmbarque) AS SQL1, E.descEvento, E.Sequencial_MDFe, E.Origem
FROM RODOMAIOR_GSe.dbo.mdfe M
JOIN RODOMAIOR_GSe.dbo.Eventos_MDFe E ON  E.Sequencial_MDFe = M.Sequencial
JOIN MDFeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = M.CodManifestoCarga
WHERE (E.Status = 9 and M.Status <> 9) OR (E.Status = 5 and M.Status <> 5)


exec MonitoraMDFe 34024515


select * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 550959