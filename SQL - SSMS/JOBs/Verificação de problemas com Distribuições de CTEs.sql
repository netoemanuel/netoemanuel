--Verificação de problemas com Distribuições de CTEs não enviadas, conforme monitoramento automático.

 SELECT COUNT(*), MIN(DataCriacao), MAX(DataCriacao) FROM LONTANO_GSe.dbo.CTeDistribuicao WHERE ISNULL(SituacaoDistribuicao, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCancelamento, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCCe, '') IN ('Pendente','Falha')
 SELECT * FROM LONTANO_GSe.dbo.CTeDistribuicao WHERE ISNULL(SituacaoDistribuicao, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCancelamento, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCCe, '') IN ('Pendente','Falha')
 exec VerificaCTe 730000136438
 select * FROM LONTANO_GSe.dbo.CTeDistribuicao where Sequencial in (730000136438)
 --delete FROM LONTANO_GSe.dbo.CTeDistribuicao where Sequencial in (730000136438)-- Caso precise inserir na tabela de novo.
 --update LONTANO_GSe.dbo.CTeDistribuicao set SituacaoCancelamento = 'Enviado' where Sequencial in (20000157184) -- Forçar o reenvio
 SELECT status, XML_Enviado, XML_Retorno, NO_Protocolo, DT_Alteracao, * from LONTANO_GSe.dbo.CTe where Sequencial IN (570000005069)
 SELECT status, * from LONTANO_GSe.dbo.CTe_LOG where Sequencial IN (20000157184)
 SELECT NumConhecto,CodUF,* from ConhecimentosTransporte where Sequencial IN (20000157184)
 select * from LONTANO_GSe.dbo.ContatosCTe(570000005069)
 select * from LONTANO_GSe.dbo.CTeDistribuicao_Contatos where Sequencial = 100000002762 and Destinatario = '1'
 --UPDATE LONTANO_GSe.dbo.CTeDistribuicao_Contatos set Email = 'fabiomedeiros@lontano.com.br' where Sequencial = 350000006059 and Destinatario = '1'
 --DELETE from LONTANO_GSe.dbo.CTeDistribuicao_Contatos where Sequencial = 570000005069  -- Caso precise inserir na tabela de novo.
 --delete from LONTANO_GSe.dbo.CTeDistribuicao where Sequencial IN (570000005069) 
 --update LONTANO_GSe.dbo.cte set status = status where sequencial IN (730000136438)

select * from LONTANO_GSe.dbo.cte where Sequencial = 20000157184
select TOP (1)* from LONTANO_GSe.dbo.cte where Status = 5 ORDER BY DataCriacao desc
exec VerificaCTe 530000170708
 -- MT-733895

-- CASO tenha que regravar usar os INSERTs abaixo.

 --INSERT INTO CTeDistribuicao (Sequencial, DataCriacao, Conteudo, SituacaoDistribuicao)
 SELECT TOP(1) CTe.Sequencial, GETDATE(), LONTANO_GSe.dbo.ConteudoDistribuicao(CTe.Sequencial), 'Pendente'
 FROM LONTANO_GSe.dbo.CTe
 LEFT OUTER JOIN LONTANO_GSe.dbo.CTeDistribuicao Dist ON CTe.Sequencial = Dist.Sequencial
 CROSS APPLY LONTANO_GSe.dbo.ContatosCTe(cte.Sequencial) AS C
 WHERE cte.Sequencial = 730000136438 AND Dist.Sequencial IS NULL AND (C.Remetente+C.Destinatario+C.Pagamento+C.Consignatario+C.Transportador) > 0


  --Insere registros na tabela CTeDistribuicao_Contatos, para cada e-mail relacionado aos clientes do CTe

 --INSERT INTO CTeDistribuicao_Contatos
 --SELECT C.* 
 --FROM CTe
 --CROSS APPLY LONTANO_GSe.dbo.ContatosCTe(cte.Sequencial) AS C
 --LEFT OUTER JOIN CTeDistribuicao_Contatos Cont ON Cont.Sequencial = cte.Sequencial AND C.Email = C.Email
 --WHERE cte.Sequencial in (350000006059) AND (C.Remetente+C.Destinatario+C.Pagamento+C.Consignatario+C.Transportador) > 0 AND Cont.Sequencial IS NULL