SELECT TOP(1) AdmPagamentoFrete.Descricao FROM Fornecedores_AdmPagamentoFrete INNER JOIN AdmPagamentoFrete ON AdmPagamentoFrete.CodAdmFrete = Fornecedores_AdmPagamentoFrete.CodAdmFrete WHERE Fornecedores_AdmPagamentoFrete.CodFornecedor = 41000283 ORDER BY Fornecedores_AdmPagamentoFrete.DataAlteracao DESC

SELECT Descricao FROM AdmPagamentoFrete WHERE Descricao <> 'Repom' AND SituacaoConsulta = 'S' ORDER BY CodAdmFrete

SELECT * FROM AdmPagamentoFrete where   SituacaoConsulta = 'S'
--UPDATE AdmPagamentoFrete set SituacaoConsulta = 'S' WHERE CodAdmFrete = 4

--UPDATE AdmPagamentoFrete set Descricao = 'EFrete Pago' WHERE CodAdmFrete = 5


select * FROM CaramuruControle where ID = '6001901961'