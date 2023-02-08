select * from Vendas where CodVenda = 100039582
select * from matriztributaria where codtipooperacao = 1
select * from dbo.usamatriztributaria(100039582)
select * from dbo.usamatriztributaria(100039582)


SELECT * FROM VendasVencimentos WHERE (CodVenda = 100039582) AND (CodContasReceber IS NOT NULL OR CodMovCaixa IS NOT NULL OR CodContasPagar IS NOT NULL)
--update VendasVencimentos set Valor = 17.99 where Sequencial = 100030421
--delete  from VendasVencimentos where Sequencial > 100030421
select * from ContasReceber where CodContasReceber = 1029434
--update ContasReceber set ValorReceber = 17.99 where CodContasReceber = 1029434
--delete from ContasReceber where CodContasReceber > 1029438
