SELECT COUNT(*) AS Registros FROM ItensRelacaoPostos WHERE CodRelacao IN (144771) AND SeqConhecto IS NOT NULL
SELECT *  FROM ItensRelacaoPostos WHERE CodRelacao IN (144771) AND SeqConhecto IS NOT NULL
SELECT *  FROM ItensRelacaoPostos WHERE CodRelacao IN (144771)
--UPDATE ItensRelacaoPostos SET Observacoes = ' ', NumDocumento = ' ' WHERE CodRelacao IN (144771) and SeqItem = 2


SELECT RelacaoPostos.CodRelacao, RelacaoPostos.CodFornecedor, (LTRIM(RelacaoPostos.CodFornecedor) + ' - ' + Fornecedores.RazaoSocial) AS Posto, DataRelacao, MAX(ItensRelacaoPostos.DataCriacao) AS DataAlteracao, RelacaoPostos.Observacoes, SUM(ItensRelacaoPostos.Valor) AS TotalRelacao FROM RelacaoPostos WITH (NOLOCK) INNER JOIN ItensRelacaoPostos WITH (NOLOCK) ON ItensRelacaoPostos.CodRelacao = RelacaoPostos.CodRelacao INNER JOIN Fornecedores WITH (NOLOCK) ON RelacaoPostos.CodFornecedor = Fornecedores.CodFornecedor WHERE (RelacaoPostos.Situacao <> 'Pendente') AND (RelacaoPostos.CodRelacaoFrete IS NULL) 
GROUP BY RelacaoPostos.CodRelacao, RelacaoPostos.CodFornecedor, Fornecedores.RazaoSocial, DataRelacao, RelacaoPostos.Observacoes, RelacaoPostos.DataAlteracao ORDER BY RelacaoPostos.CodFornecedor, RelacaoPostos.CodRelacao