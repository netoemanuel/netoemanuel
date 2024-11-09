select * FROM MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 57005563

EXEC MonitoraMDFe 57005563

select * from ConhecimentosTransporte where NumConhecto IN (64791,64793,64794,64795) and CodUF = 'MT'

EXEC VerificaCTe 570000005093
EXEC VerificaCTe 570000005094
EXEC VerificaCTe 570000005095
EXEC VerificaCTe 570000005096


DECLARE @NumOrdemEmbarque AS DECIMAL SET @NumOrdemEmbarque = 57005563 
;WITH LogMDFe (Tipo, Status, dhLog, Mensagem, ID, ChaveMDFe) AS ( SELECT TOP (1) 
CASE WHEN L.codLog IN (40, 41, 42) THEN 'Cancelamento' ELSE 'Encerramento' END AS 'Tipo', EV.Status, L.dhLog, CASE WHEN MDFe.Status = 2 THEN l.xMotivo ELSE NULL END AS 'Mensagem', L.ID, MDFe.Id

FROM Rodomaior_GSe.dbo.MDFe MDFe INNER JOIN MDFeViagem_OrdemEmbarque OE ON OE.SeqViagem = MDFe.CodManifestoCarga INNER JOIN Rodomaior_GSe.dbo.Eventos_MDFe EV ON EV.Sequencial_MDFe = MDFe.Sequencial 
INNER JOIN Rodomaior_GSe.DBO.MDFe_LOG L ON L.CodManifestoCarga = MDFe.CodManifestoCarga 
WHERE OE.NumOrdemEmbarque = @NumOrdemEmbarque AND L.codLog IN (40, 41, 42, 50, 51, 52) 
ORDER BY L.ID DESC UNION SELECT TOP (1) 'Autorização' AS 'Tipo', MDFe.Status, L.dhLog,CASE WHEN MDFe.Status = 2 THEN L.xMotivo
ELSE NULL END AS 'Mensagem', L.ID, MDFe.Id FROM Rodomaior_GSe.dbo.MDFe MDFe
INNER JOIN MDFeViagem_OrdemEmbarque OE ON OE.SeqViagem = MDFe.CodManifestoCarga
INNER JOIN Rodomaior_GSe.DBO.MDFe_LOG L ON L.CodManifestoCarga = MDFe.CodManifestoCarga WHERE OE.NumOrdemEmbarque = @NumOrdemEmbarque 
AND L.codLog IN (20, 21, 22, 30, 31, 32) ORDER BY L.ID DESC UNION SELECT TOP (1) 'Processando' AS 'Tipo', MDFe.Status, L.dhLog, CASE WHEN MDFe.Status = 2 THEN l.xMotivo
ELSE NULL END AS 'Mensagem', L.ID, MDFe.Id FROM Rodomaior_GSe.dbo.MDFe MDFe INNER JOIN MDFeViagem_OrdemEmbarque OE ON OE.SeqViagem = MDFe.CodManifestoCarga 
INNER JOIN Rodomaior_GSe.DBO.MDFe_LOG L ON L.CodManifestoCarga = MDFe.CodManifestoCarga WHERE OE.NumOrdemEmbarque = @NumOrdemEmbarque
AND L.codLog IN (10, 11)  ORDER BY L.ID DESC ) SELECT TOP (1) *, CASE WHEN Status = 1 THEN 'Autorizado em ' ELSE CASE WHEN Status = 2 THEN 'Rejeitado em ' ELSE CASE WHEN Status = 5 THEN 'Cancelado em '
ELSE CASE WHEN Status = 9 THEN 'Encerrado em ' END END END END AS Label FROM LogMDFe ORDER BY ID DESC


SELECT TOP 1 Enc.DataCriacao AS Encerramento, Enc.CodFilialCriacao AS FilialEnc, (CONVERT(VARCHAR(6), uEnc.CodUsuario) + ' - ' + uEnc.NomeUsuario) AS Encerrador FROM Rodomaior_GSe.dbo.MDFe MDFe INNER JOIN MDFeViagem_OrdemEmbarque MOE ON MOE.SeqViagem = MDFe.CodManifestoCarga LEFT OUTER JOIN Rodomaior_GSe.dbo.Eventos_MDFe Enc ON Enc.Sequencial_MDFe = MDFe.Sequencial AND Enc.tpEvento = 110112 AND Enc.Status = 9 LEFT OUTER JOIN Usuarios uEnc ON uEnc.CodUsuario = Enc.CodUsuarioCriacao WHERE MOE.NumOrdemEmbarque = 57005563 AND Enc.DataCriacao IS NOT NULL ORDER BY Enc.DataCriacao DESC



select SituacaoConhecto,SerieConhecto,* from ConhecimentosTransporte where SituacaoConhecto = 'Complemento' ORDER by DataCriacao desc


EXEC MonitoraMDFe 97007030

SELECT NumeroCartao,* FROM OrdemEmbarque where NumOrdemEmbarque = 50001632
--UPDATE OrdemEmbarque set NumeroCartao = '756311783' where NumOrdemEmbarque = 50001632  --755234242


SELECT * from EstoqueProdutos  where CodProduto = 4740 and CodDeposito = 9  and CodFilial = 'CG' ORDER by DataCriacao desc

--Neste caso o erro esta acontecendo pois esta atingindo o limite do SaldoEstqoue que de 1 milhão e do hodômetro 999.999
--Será necessário fazer uma transferência do produto dessa bomba para outra para correção do erro e apos isso gerar a liberação.                        abaixo mostra os depósitos possíveis para isso. 


select * from CaramuruControle where ID = '6001905208'