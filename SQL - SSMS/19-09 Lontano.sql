use LONTANO


select * from ConhecimentosTransporte where NumConhecto = 389019  and CodUF = 'MG'
exec VerificaCTe 530000157221  
select * from LONTANO_GSe.dbo.cte_log where Sequencial = 530000157221 and id > 22093588
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 530000157221 and id > 22093588
exec VerificaCTe 630000016229  
--------------------------------------------------------------------------------------------------------------------------------------------------------

exec lontano_gse.dbo.MonitorarNFSe_RO_GO '5218805'
-- para enviar as NFSe paradas mudar a tabela NfseRondonopolisEnvioLote para 3 reabrir o GSe
select * from LONTANO_GSe.dbo.tblThreads 
--UPDATE LONTANO_GSe.dbo.tblThreads set NfseRondonopolisEnvioLote = 3 where id = 14
--------------------------------------------------------------------------------------------------------------------------------------------------------

-- 1522821
select DataLancamento, DataConciliacao, * from MovimentacaoBancaria  where CodMovBancaria = 1522821
--UPDATE MovimentacaoBancaria set DataLancamento = '2023-03-24 00:00:00', DataConciliacao = '2023-03-24 00:00:00' where CodMovBancaria = 1522821
select DataLancamento, DataConciliacao, * from MovimentacaoBancaria where CodFilial = 'cG' and CodContaBancaria = 95 order by DataMovimento desc --and SituacaoCredito <> 'Baixado'


