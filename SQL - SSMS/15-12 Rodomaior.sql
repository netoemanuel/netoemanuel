select * from RelacaoPostos where CodRelacao = 34750
SELECT COUNT(*) AS Registros FROM ItensRelacaoPostos WHERE CodRelacao IN (34570) AND SeqConhecto Is Not  Null 
SELECT* FROM ItensRelacaoPostos WHERE CodRelacao IN (34570) AND SeqConhecto Is Not  Null 
SELECT ConhecimentosTransporte.*, Veiculos.CodVeiculo, ISNULL(BaseCalculoICMS, 0) AS BaseCalculoICMS, ISNULL(AliquotaICMSFrete, 0) AS AliquotaICMSFrete FROM ConhecimentosTransporte LEFT JOIN ComplementoConhecimento ON Sequencial = NumSeqConhecto INNER JOIN Veiculos ON Veiculos.CodVeiculo = ConhecimentosTransporte.CodVeiculo WHERE (ConhecimentosTransporte.Sequencial = 40000036686) and Sequencial NOT IN (SELECT NumSeqConhecto FROM ConhecimentosRelacaoFretes WHERE (ValorConferido IS NULL or ValorConferido <> 0) and CodTipoPagamento = 2)
SELECT *FROM RelacaoPostos WHERE (CodRelacao = 34570) AND (CodRelacaoFrete IS NOT NULL)
SELECT* FROM ItensRelacaoPostos WHERE CodRelacao IN (34570)
--UPDATE ItensRelacaoPostos set Observacoes = ' ', NumDocumento = ' ' WHERE CodRelacao IN (34570) and SeqItem = 6
--UPDATE ItensRelacaoPostos set Observacoes = ' ', NumDocumento = ' ' WHERE CodRelacao IN (34570) and SeqItem = 5


select * from ConhecimentosTransporte where NumConhecto = 81618 and CodUF = 'PR'

exec VerificaCTe 410000027819

 
 select * from RODOMAIOR_GSe.dbo.cte_log where  Sequencial = 410000027819  and id BETWEEN 6812979  and 6815383 
 --delete from RODOMAIOR_GSe.dbo.cte_log where  Sequencial = 410000027819  and id BETWEEN 6812979  and 6815383
 
  select * from Veiculos where CodVeiculo = 242256
 select * from ConjuntosVeiculo where CodVeiculo = 242256



select * from Veiculos where PlacaVeiculo = 'FSV-3990'
select * from ConjuntosVeiculo where CodVeiculo = 331617

 --novo
--update ConjuntosVeiculo set CodVeiculoAdicional1 = 400782, CodVeiculoAdicional2 = 400783  where CodVeiculo = 331617

 -- antigo
-- CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Eixos
--331617	1	242258	242257	NULL	NULL	12787	LUC	2023-06-14 08:40:02.000	NULL	NULL	NULL	NULL



