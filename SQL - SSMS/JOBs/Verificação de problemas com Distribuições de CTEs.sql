--Verificação de problemas com Distribuições de CTEs não enviadas, conforme monitoramento automático.

-- SELECT COUNT(*), MIN(DataCriacao), MAX(DataCriacao) FROM RODOMAIOR_GSe.dbo.CTeDistribuicao WHERE ISNULL(SituacaoDistribuicao, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCancelamento, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCCe, '') IN ('Pendente','Falha')
-- SELECT * FROM RODOMAIOR_GSe.dbo.CTeDistribuicao WHERE ISNULL(SituacaoDistribuicao, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCancelamento, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCCe, '') IN ('Pendente','Falha')
-- exec VerificaCTe 40000039603
-- select * FROM RODOMAIOR_GSe.dbo.CTeDistribuicao where Sequencial in (40000039603)
-- update RODOMAIOR_GSe.dbo.CTeDistribuicao set SituacaoCancelamento = 'Pendente' where Sequencial in (40000039603)
-- SELECT status, XML_Enviado, XML_Retorno, NO_Protocolo, DT_Alteracao, * from RODOMAIOR_GSe.dbo.CTe where Sequencial IN (40000039603)
-- SELECT * from RODOMAIOR_GSe.dbo.CTeDistribuicao_Contatos where Sequencial IN (40000039603)
-- select * from RODOMAIOR_GSe.dbo.ContatosCTe(40000039603)
-- delete from RODOMAIOR_GSe.dbo.CTeDistribuicao where Sequencial IN (40000039603)
-- update rodomaior_gse.dbo.cte set status = status where sequencial IN (40000039603)


-- CASO tenha que regravar usar os INSERTs abaixo.

-- INSERT INTO CTeDistribuicao (Sequencial, DataCriacao, Conteudo, SituacaoDistribuicao)
-- SELECT TOP(1) CTe.Sequencial, GETDATE(), RODOMAIOR_GSe.dbo.ConteudoDistribuicao(CTe.Sequencial), 'Pendente'
-- FROM CTe
-- LEFT OUTER JOIN CTeDistribuicao Dist ON CTe.Sequencial = Dist.Sequencial
-- CROSS APPLY RODOMAIOR_GSe.dbo.ContatosCTe(cte.Sequencial) AS C
-- WHERE cte.Sequencial = 40000039603 AND Dist.Sequencial IS NULL AND (C.Remetente+C.Destinatario+C.Pagamento+C.Consignatario+C.Transportador) > 0
-- -- Insere registros na tabela CTeDistribuicao_Contatos, para cada e-mail relacionado aos clientes do CTe
-- INSERT INTO CTeDistribuicao_Contatos
-- SELECT C.* 
-- FROM CTe
-- CROSS APPLY RODOMAIOR_GSe.dbo.ContatosCTe(cte.Sequencial) AS C
-- LEFT OUTER JOIN CTeDistribuicao_Contatos Cont ON Cont.Sequencial = cte.Sequencial AND C.Email = C.Email
-- WHERE cte.Sequencial = 40000039603 AND (C.Remetente+C.Destinatario+C.Pagamento+C.Consignatario+C.Transportador) > 0 AND Cont.Sequencial IS NULL