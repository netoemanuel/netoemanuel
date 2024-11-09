
SELECT CodFilial,CodDeposito, * from NotaEntrada where CodNotaEntrada = 1023397  --CG
--UPDATE NotaEntrada set CodFilial = 'RO' where CodNotaEntrada = 1023397

SELECT Sequencial, DataMovimento, NumDoc, CodTipoMovEstoque, QtdeMovimento, EntradaSaida 
FROM MovimentoEstoque
WHERE (Situacao = 'Normal') AND (CodFilial = 'CG') AND (CodProduto = 4740) AND (DataMovimento >= '08/25/2024 00:00:00' AND DataMovimento <= '09/24/2024 23:59:29') 
ORDER BY DataMovimento, EntradaSaida

SELECT * FROM MovimentoEstoque where Sequencial = 328659
--DELETE from MovimentoEstoque where Sequencial = 328659
--CodMovEstoque	CodFilial	CodDeposito	CodProduto	DataMovimento	CodTipoMovEstoque	NumDoc	QtdeMovimento	ValorMovimento	ValorMovtoInd	EntradaSaida	Situacao	TipoMovimento	Sequencial	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
 --INSERT INTO MovimentoEstoque VALUES( 100316627,'CG',3,4740,'2024-08-27 00:00:00',9,1023397,5000.000,27990.00,NULL,'Entrada','Normal','C',328659,12949,'CG','2024-08-27 16:09:10.000',NULL,NULL,NULL)

SELECT * FROM MovimentoEstoque where Sequencial = 329488
--DELETE from MovimentoEstoque where Sequencial = 329488
--CodMovEstoque	CodFilial	CodDeposito	CodProduto	DataMovimento	CodTipoMovEstoque	NumDoc	QtdeMovimento	ValorMovimento	ValorMovtoInd	EntradaSaida	Situacao	TipoMovimento	Sequencial	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--INSERT INTO MovimentoEstoque VALUES(100317377,'CG',3,4740,'2024-08-27 00:00:00',4,1000700,5000.000,27300.00,NULL,'Saída','Normal','C',329488,11803,'CG','2024-09-06 14:08:43.000',NULL,NULL,NULL)


SELECT * FROM MovimentoEstoque where Sequencial = 328727
SELECT * FROM MovimentoEstoque where Sequencial = 329489

SELECT Sequencial, DataMovimento, NumDoc, CodTipoMovEstoque, QtdeMovimento, EntradaSaida 
FROM MovimentoEstoque
WHERE (Situacao = 'Normal') AND (CodFilial = 'RO') AND (CodProduto = 4740) AND (DataMovimento >= '08/25/2024 00:00:00' AND DataMovimento <= '09/24/2024 23:59:29') 
ORDER BY DataMovimento, EntradaSaida

SELECT Sequencial, DataMovimento, NumDoc, CodTipoMovEstoque, QtdeMovimento, EntradaSaida 
FROM MovimentoEstoque
WHERE (Situacao = 'Normal') AND (CodFilial = 'CG') AND (CodProduto = 4740) AND (DataMovimento >= '08/25/2024 00:00:00' AND DataMovimento <= '09/24/2024 23:59:29') 
ORDER BY DataMovimento, EntradaSaida


SELECT * FROM MovimentoEstoque where Sequencial = 328819  --Entrada / Saída
--UPDATE movimentoEstoque SET EntradaSaida = 'Entrada' where Sequencial = 328819

select * from TransferenciaProdutos where CodTransferencia = 1000700

select * from RODOMAIOR_GSe.dbo.NFe where ID = '51240800579990000164550010001227921618685314'



SELECT ItensRequisicaoProdutos.CodProduto, ItensRequisicaoProdutos.QuantRequisitada, ItensRequisicaoProdutos.ValorApropriacao, CombustivelLubrificante.TipoCombustivel, RequisicaoProdutos.CodRequisicao, RequisicaoProdutos.CodFilial, RequisicaoProdutos.CodDeposito, RequisicaoProdutos.TipoRequisicao, RequisicaoProdutos.DataRequisicao, RequisicaoProdutos.NumDocumento, RequisicaoProdutos.KmVeiculo, RequisicaoProdutos.OdometroFinal, DepositosFilial.DescResumida, Veiculos.PlacaVeiculo, Veiculos.Propriedade, Veiculos.Propriedade_CTe FROM ItensRequisicaoProdutos INNER JOIN RequisicaoProdutos ON ItensRequisicaoProdutos.CodRequisicao = RequisicaoProdutos.CodRequisicao LEFT OUTER JOIN CombustivelLubrificante ON ItensRequisicaoProdutos.CodProduto = CombustivelLubrificante.CodProduto LEFT OUTER JOIN DepositosFilial ON RequisicaoProdutos.CodFilial = DepositosFilial.CodFilial AND RequisicaoProdutos.CodDeposito = DepositosFilial.CodDeposito LEFT OUTER JOIN Veiculos ON RequisicaoProdutos.CodVeiculo = Veiculos.CodVeiculo WHERE
 (RequisicaoProdutos.DataRequisicao BETWEEN '08/24/2024 00:00:00' AND '08/26/2024 23:59:29') 
 AND (RequisicaoProdutos.CodFilial = 'CG') AND (RequisicaoProdutos.CodDeposito <> 27) 
 AND (RequisicaoProdutos.TipoRequisicao = 'Combustível/Lubrificante') 
 ORDER BY RequisicaoProdutos.CodFilial, RequisicaoProdutos.CodDeposito, RequisicaoProdutos.DataRequisicao, RequisicaoProdutos.OdometroFinal


 SELECT CodFilial, CodDeposito,* FROM RequisicaoProdutos WHERE (DataRequisicao BETWEEN '08/24/2024 00:00:00' AND '08/26/2024 23:59:29') AND (CodFilial = 'CG') AND (CodDeposito <> 27) AND (TipoRequisicao = 'Combustível/Lubrificante') ORDER BY CodFilial, CodDeposito
 SELECT Sequencial, DataMovimento, NumDoc, CodTipoMovEstoque, QtdeMovimento, EntradaSaida, MovimentoEstoque.CodProduto, ValorMovimento ,*FROM MovimentoEstoque INNER JOIN CombustivelLubrificante ON MovimentoEstoque.CodProduto = CombustivelLubrificante.CodProduto WHERE (CodFilial = 'CG') AND (CodDeposito <> 27) AND (CombustivelLubrificante.TipoCombustivel IN ('Combustível', 'Aditivo', 'Lubrificante')) AND (Situacao = 'Normal') AND (DataMovimento BETWEEN '08/24/2024 00:00:00' AND '08/26/2024 23:59:29') ORDER BY DataMovimento, CodMovEstoque
 SELECT SUM(QuantRequisitada) AS TotalQuantidade ,*FROM ItensRequisicaoProdutos INNER JOIN RequisicaoProdutos ON ItensRequisicaoProdutos.CodRequisicao = RequisicaoProdutos.CodRequisicao INNER JOIN CombustivelLubrificante ON ItensRequisicaoProdutos.CodProduto = CombustivelLubrificante.CodProduto LEFT OUTER JOIN Veiculos ON RequisicaoProdutos.CodVeiculo = Veiculos.CodVeiculo WHERE (RequisicaoProdutos.DataRequisicao BETWEEN '08/24/2024 00:00:00' AND '08/26/2024 23:59:29') AND (RequisicaoProdutos.CodFilial = 'CG') AND (RequisicaoProdutos.CodDeposito <> 27) AND (RequisicaoProdutos.TipoRequisicao = 'Combustível/Lubrificante') AND (CombustivelLubrificante.TipoCombustivel = 'Combustível') AND (Veiculos.Propriedade = 'Próprio') AND (RequisicaoProdutos.CodVeiculo IS NOT NULL)
 SELECT Veiculos.CodFornecTerceiro FROM ItensRequisicaoProdutos INNER JOIN RequisicaoProdutos ON ItensRequisicaoProdutos.CodRequisicao = RequisicaoProdutos.CodRequisicao INNER JOIN CombustivelLubrificante ON ItensRequisicaoProdutos.CodProduto = CombustivelLubrificante.CodProduto LEFT OUTER JOIN Veiculos ON RequisicaoProdutos.CodVeiculo = Veiculos.CodVeiculo WHERE (RequisicaoProdutos.DataRequisicao BETWEEN '08/24/2024 00:00:00' AND '08/26/2024 23:59:29') AND (RequisicaoProdutos.CodFilial = 'CG') AND (RequisicaoProdutos.CodDeposito <> 27) AND (RequisicaoProdutos.TipoRequisicao = 'Combustível/Lubrificante') AND (CombustivelLubrificante.TipoCombustivel = 'Combustível') AND (Veiculos.Propriedade <> 'Próprio')ORDER BY Veiculos.CodFornecTerceiro



 SELECT CodFilial,CodDeposito, * from NotaEntrada where CodNotaEntrada = 1000700