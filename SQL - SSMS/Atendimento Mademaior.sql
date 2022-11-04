SELECT SituacaoVenda, * FROM Vendas where CodVenda = 100035891
SELECT DISTINCT (SituacaoVenda) FROM Vendas Cancelada
--UPDATE  Vendas SET SituacaoVenda = 'Cancelada' where CodVenda = 100035891
EXEC VerificaNFe 100035891

SELECT * from Usuarios where NomeUsuario LIKE 'Elis%'
SELECT * FROM ContasReceber where CodContasReceber = 1026599

--delete * FROM ContasReceber where CodContasReceber = 1026599

SELECT * FROM VendasVencimentos WHERE (CodContasReceber = 1026599)
--DELETe from VendasVencimentos WHERE (CodContasReceber = 1026599)