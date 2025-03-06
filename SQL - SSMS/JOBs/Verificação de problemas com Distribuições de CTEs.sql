--Verificação de problemas com Distribuições de CTEs não enviadas, conforme monitoramento automático.

 SELECT COUNT(*), MIN(DataCriacao), MAX(DataCriacao) FROM Lontano_GSe.dbo.CTeDistribuicao WHERE ISNULL(SituacaoDistribuicao, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCancelamento, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCCe, '') IN ('Pendente','Falha')
 SELECT * FROM Lontano_GSe.dbo.CTeDistribuicao WHERE ISNULL(SituacaoDistribuicao, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCancelamento, '') IN ('Pendente','Falha') OR ISNULL(SituacaoCCe, '') IN ('Pendente','Falha')
 exec VerificaCTe 47000003721  --MT-745022
 select * FROM Lontano_GSe.dbo.CTeDistribuicao where Sequencial in (47000003721)
 --delete FROM Lontano_GSe.dbo.CTeDistribuicao where Sequencial in (10000026228)-- Caso precise inserir na tabela de novo.
 --update Lontano_GSe.dbo.CTeDistribuicao set SituacaoDistribuicao = 'Enviado' where Sequencial in (340000029509) -- Forçar o reenvio
 SELECT status, XML_Enviado, XML_Retorno, NO_Protocolo, DT_Alteracao, * from Lontano_GSe.dbo.CTe where Sequencial IN (47000003721)
 --UPDATE Lontano_GSe.dbo.CTe SET Status = 5 where Sequencial IN (47000003721)
  SELECT status, XML_Enviado, XML_Retorno, NO_Protocolo, DT_Alteracao, * from Lontano_GSe.dbo.CTe  order by DataCriacao desc
 SELECT status, * from Lontano_GSe.dbo.CTe_LOG where Sequencial IN (47000003721)
 SELECT NumConhecto,CodUF,* from ConhecimentosTransporte where Sequencial IN (47000003721)
 select * from Lontano_GSe.dbo.ContatosCTe(47000003721)
 select * from Lontano_GSe.dbo.CTeDistribuicao_Contatos where Sequencial = 47000003721 and Destinatario = '1'
 --UPDATE Lontano_GSe.dbo.CTeDistribuicao_Contatos set Email = 'fabiomedeiros@lontano.com.br' where Sequencial = 350000006059 and Destinatario = '1'
 --DELETE from Lontano_GSe.dbo.CTeDistribuicao_Contatos where Sequencial = 47000003721  -- Caso precise inserir na tabela de novo.
 --delete from Lontano_GSe.dbo.CTeDistribuicao where Sequencial IN (47000003721) 
 --update Lontano_GSe.dbo.cte set status = status where sequencial IN (730000136438)

select * from Lontano_GSe.dbo.cte where Sequencial = 47000003721
select * from Lontano_GSe.dbo.cte_log where Sequencial = 340000029509 AND ID > 7251169
--DELETE from Lontano_GSe.dbo.cte_log where Sequencial = 340000029509 AND ID > 7251169
exec VerificaCTe 47000003721
 -- MT-733895

-- CASO tenha que regravar usar os INSERTs abaixo.

 --INSERT INTO CTeDistribuicao (Sequencial, DataCriacao, Conteudo, SituacaoDistribuicao)
 --SELECT TOP(1) CTe.Sequencial, GETDATE(), Lontano_GSe.dbo.ConteudoDistribuicao(CTe.Sequencial), 'Pendente'
 --FROM Lontano_GSe.dbo.CTe
 --LEFT OUTER JOIN Lontano_GSe.dbo.CTeDistribuicao Dist ON CTe.Sequencial = Dist.Sequencial
 --CROSS APPLY Lontano_GSe.dbo.ContatosCTe(cte.Sequencial) AS C
 --WHERE cte.Sequencial = 47000003721 AND Dist.Sequencial IS NULL AND (C.Remetente+C.Destinatario+C.Pagamento+C.Consignatario+C.Transportador) > 0


 -- --Insere registros na tabela CTeDistribuicao_Contatos, para cada e-mail relacionado aos clientes do CTe

 --INSERT INTO CTeDistribuicao_Contatos
 --SELECT C.* 
 --FROM CTe
 --CROSS APPLY Lontano_GSe.dbo.ContatosCTe(cte.Sequencial) AS C
 --LEFT OUTER JOIN CTeDistribuicao_Contatos Cont ON Cont.Sequencial = cte.Sequencial AND C.Email = C.Email
 --WHERE cte.Sequencial in (47000003721) AND (C.Remetente+C.Destinatario+C.Pagamento+C.Consignatario+C.Transportador) > 0 AND Cont.Sequencial IS NULL