EXEC VerificaCTe 730000136986

SELECT  *FROM Lontano_GSe.dbo.CTeDistribuicao WHERE ISNULL(SituacaoDistribuicao, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCancelamento, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCCe, '') IN ('Pendente','Falha')
--update Lontano_GSe.dbo.CTeDistribuicao set SituacaoDistribuicao = 'Pendente' where Sequencial in ( SELECT Sequencial FROM Lontano_GSe.dbo.CTeDistribuicao WHERE ISNULL(SituacaoDistribuicao, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCancelamento, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCCe, '') IN ('Pendente','Falha')) -- Forçar o reenvio
--update Lontano_GSe.dbo.CTeDistribuicao set SituacaoCCe = 'Pendente' where Sequencial in (SELECT Sequencial FROM Lontano_GSe.dbo.CTeDistribuicao WHERE SituacaoCCe = 'Falha')
--update Lontano_GSe.dbo.CTeDistribuicao set SituacaoCancelamento = 'Pendente' where Sequencial in (SELECT Sequencial FROM Lontano_GSe.dbo.CTeDistribuicao WHERE SituacaoCancelamento = 'Falha')
SELECT Sequencial FROM Lontano_GSe.dbo.CTeDistribuicao WHERE SituacaoCCe = 'Falha' 

--update Lontano_GSe.dbo.CTeDistribuicao set SituacaoDistribuicao = 'Enviado' where Sequencial in (300000056451)

--Message: Falha na transação. A resposta do servidor foi: 5.2.2 Mailbox full. Visit https://aka.ms/mailboxfull for more information.; STOREDRV.Submission.Exception:QuotaExceededException.MapiExceptionQuotaExceeded; Failed to process message due to a permanent exception with message [BeginDiagnosticData]Cannot submit message. 1.84300:01000000, 1.84300:0B000000, 1.84300:0A000000, 1.84300:0A000000, 1.84300:0E000000, 1.84300:32000000, 0.117068:15000000, 1.79180:0B000000, 1.79180:0A000000, 1.79180:0A000000, 1.79180:0E000000, 1.79180:32000000, 1.79180:FA000000, 0.73100:07000000, 5.95292:670000003130330074654D61, 8.111356:8F5F19C9441AE441A6536B31ED2F214B8F5F19C9, 0.38698:A6536B31, 1.41134:86000000, 1.41134:86000000, 1.41134:86000000, 1.41134:46000000, 0.37692:00000000, 0.33596:73706F72, 5.29818:0000000030613065363335622D396461392D343438652D393938652D61643438666362333034663100000000, 5.55446:00000000323A300000000000, 7.29828:4ED617600C00000073706F72, 7.29832:000000600C00000005000780, 4.45884:D9040000, 4.29880:D9040000, 1.52492:02000000, 4.29888:D9040000, 7.40748:01000000... | StackTrace:    em System.Net.Mail.DataStopCommand.CheckResponse(SmtpStatusCode statusCode, String serverResponse)     em System.Net.Mail.DataStopCommand.Send(SmtpConnection conn)     em System.Net.Mail.SmtpConnection.OnClose(Object sender, EventArgs args)     em System.Net.ClosableStream.Close()     em System.Net.Mail.MailWriter.Close()     em System.Net.Mail.SmtpClient.Send(MailMessage message)     em GS2000.Business.Email.Email.EnviarEmail(Email email) | [System.Net.Mail.SmtpException: Falha na transação. A resposta do servidor foi: 5.2.2 Mailbox full. Visit https://aka.ms/mailboxfull for more information.; STOREDRV.Submission.Exception:QuotaExceededException.MapiExceptionQuotaExceeded; Failed to process message due to a permanent exception with message [BeginDiagnosticData]Cannot submit message. 1.84300:01000000, 1.84300:0B000000, 1.84300:0A000000, 1.84300:0A000000, 1.84300:0E000000, 1.84300:32000000, 0.117068:15000000, 1.79180:0B000000, 1.79180:0A000000, 1.79180:0A000000, 1.79180:0E000000, 1.79180:32000000, 1.79180:FA000000, 0.73100:07000000, 5.95292:670000003130330074654D61, 8.111356:8F5F19C9441AE441A6536B31ED2F214B8F5F19C9, 0.38698:A6536B31, 1.41134:86000000, 1.41134:86000000, 1.41134:86000000, 1.41134:46000000, 0.37692:00000000, 0.33596:73706F72, 5.29818:0000000030613065363335622D396461392D343438652D393938652D61643438666362333034663100000000, 5.55446:00000000323A300000000000, 7.29828:4ED617600C00000073706F72, 7.29832:000000600C00000005000780, 4.45884:D9040000, 4.29880:D9040000, 1.52492:02000000, 4.29888:D9040000, 7.40748:01000000...     em System.Net.Mail.DataStopCommand.CheckResponse(SmtpStatusCode statusCode, String serverResponse)     em System.Net.Mail.DataStopCommand.Send(SmtpConnection conn)     em System.Net.Mail.SmtpConnection.OnClose(Object sender, EventArgs args)     em System.Net.ClosableStream.Close()     em System.Net.Mail.MailWriter.Close()     em System.Net.Mail.SmtpClient.Send(MailMessage message)     em GS2000.Business.Email.Email.EnviarEmail(Email email)]
--0010857440004

SELECT * FROM ConhecimentosTransporte WHERE Sequencial = 530000173255
SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 99000112
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114602
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114599   -- autorizada.
--DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114602
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 114602
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 114602

SELECT COUNT(*) AS Registros FROM Lontano_GSe.dbo.NFSe WHERE Sequencial = 530000173267 AND Status = 1



EXEC VerificaCTe 810000012997

select top (500) * FROM LONTANO_GSe.dbo.tblLog_operacao order by DT_Hs desc



SELECT * FROM ConhecimentosTransporte WHERE NumConhecto = 742512 and CodUF = 'MT'
EXEC VerificaCTe 20000159133
SELECT * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 20000159133 and ID > 23150468
--delete from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 20000159133 and ID > 23150468





SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 741753                                      
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from CartaFrete_Ocorrencia where IdCartaFrete = 1725486 and NumSeq = 20
--UPDATE CartaFrete_Ocorrencia SET tipoOcorrencia = 'SUCESSO' where IdCartaFrete = 1725486 and NumSeq = 20  -- SUCESSO

select * from CartaFrete_Ocorrencia where IdCartaFrete = 1725486 and NumSeq = 19
--UPDATE CartaFrete_Ocorrencia SET tipoOcorrencia = 'ENVIO' where IdCartaFrete = 1725486 and NumSeq = 19  -- ENVIO

select * from CartaFrete_Ocorrencia where IdCartaFrete = 1725486 and NumSeq = 20
--UPDATE CartaFrete_Ocorrencia SET tipoOcorrencia = 'SUCESSO' where IdCartaFrete = 1725486 and NumSeq = 18  -- SUCESSO