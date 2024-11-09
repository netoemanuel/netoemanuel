SELECT * from TransferenciaProdutos where CodTransferencia = 1000315
SELECT * from TransferenciaProdutos_Log where CodTransferencia = 1000315
select * from TransferenciaProdutos where CodUsuarioCriacao = 14378 ORDER by DataCriacao desc

--SELECT * from ItensTransferenciaProdutos where CodTransferencia = 1000315
--SELECT * from ItensTransferenciaProdutos_Log where CodTransferencia = 1000315

SELECT Sequencial, DataMovimento, NumDoc, CodTipoMovEstoque, QtdeMovimento, EntradaSaida
FROM MovimentoEstoque 
WHERE (Situacao = 'Normal') AND (CodFilial = 'CG') AND (CodDeposito = 2) AND (CodProduto = 148555) AND (DataMovimento >= '01/01/2024 00:00:00' AND DataMovimento <= '10/16/2024 23:59:29')
ORDER BY DataMovimento, EntradaSaida
SELECT Sequencial, DataMovimento, NumDoc, CodTipoMovEstoque, QtdeMovimento, EntradaSaida
FROM MovimentoEstoque 
WHERE (Situacao = 'Normal') AND (CodFilial = 'CG') AND (CodDeposito = 8) AND (CodProduto = 148555) AND (DataMovimento >= '01/01/2024 00:00:00' AND DataMovimento <= '10/16/2024 23:59:29')
ORDER BY DataMovimento, EntradaSaida
SELECT *  FROM MovimentoEstoque where Sequencial =  858149  -- 8
--UPDATE MovimentoEstoque set CodDeposito =8 where Sequencial =  858149
SELECT * from TransferenciaProdutos where CodTransferencia = 1000357


SELECT * from ConhecimentosTransporte where NumConhecto = 735109 and CodUF = 'MT'
exec VerificaCTe 47000003493
SELECT * from LONTANO_GSe.dbo.cte_log where Sequencial = 47000003493 and ID = 23044568
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 47000003493 and ID = 23044568

SELECT * from ConhecimentosTransporte where NumConhecto = 735176  and CodUF = 'MT'
exec VerificaCTe 650000024616
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 650000024616 and ID = 23045490

SELECT * from ConhecimentosTransporte where NumConhecto = 735177  and CodUF = 'MT'
exec VerificaCTe 20000157403
--update LONTANO_GSe.dbo.cte set Status =0 where Sequencial = 20000157403 --and ID = 23045490
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 20000157403 and ID = 23045812

SELECT ValorTotalFrete,QuantidadeSaida,* from ConhecimentosTransporte where NumConhecto = 215508  and CodUF = 'PR' AND SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set ValorTotalFrete = 4.04 where NumConhecto = 215508  and CodUF = 'PR' AND SerieConhecto = '0'
exec VerificaCTe 640000067970


EXEC Grava_CTe 640000067970