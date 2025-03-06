SELECT ItensRequisicaoProdutos.CodRequisicao, ItensRequisicaoProdutos.CodProduto, RequisicaoProdutos.DataRequisicao, RequisicaoProdutos.NumDocumento, Produtos.DescResumidaProduto, Produtos.RefProduto, Produtos.CodGrupoProd, 
Produtos.CodSubGrupo, ItensRequisicaoProdutos.QuantRequisitada, ItensRequisicaoProdutos.ValorApropriacao, Veiculos.PlacaVeiculo, Veiculos.CodMarcaVeiculo,
Veiculos.CodModeloVeiculo, (ItensRequisicaoProdutos.ValorApropriacao / ItensRequisicaoProdutos.QuantRequisitada) AS ValorUnitario, CONVERT(DECIMAL(9, 2), ((ItensRequisicaoProdutos.ValorApropriacao / NULLIF(RequisicaoProdutos.ValorTotalMov, 0)) * Desconto_CAP_Requisicao.Desconto)) AS DescontoPorItem FROM RequisicaoProdutos LEFT OUTER JOIN ItensRequisicaoProdutos ON RequisicaoProdutos.CodRequisicao = ItensRequisicaoProdutos.CodRequisicao 
INNER JOIN Produtos ON Produtos.CodProduto = ItensRequisicaoProdutos.CodProduto INNER JOIN Veiculos ON Veiculos.CodVeiculo = RequisicaoProdutos.CodVeiculo 
LEFT OUTER JOIN Desconto_CAP_Requisicao ON Desconto_CAP_Requisicao.CodRequisicao = RequisicaoProdutos.CodRequisicao
LEFT OUTER JOIN CombustivelLubrificante ON ItensRequisicaoProdutos.CodProduto = CombustivelLubrificante.CodProduto
WHERE (RequisicaoProdutos.DataRequisicao >= '01/16/2025 00:00:00' AND RequisicaoProdutos.DataRequisicao <= '01/16/2025 23:59:29') 
AND (ISNULL (CombustivelLubrificante.TipoCombustivel, '') <> 'Combustível')--AND (ISNULL (CombustivelLubrificante.TipoCombustivel, '') <> 'Aditivo')
ORDER BY RequisicaoProdutos.DataRequisicao DESC, ItensRequisicaoProdutos.CodRequisicao

SELECT ItensRequisicaoProdutos.CodRequisicao, ItensRequisicaoProdutos.CodProduto, RequisicaoProdutos.DataRequisicao, RequisicaoProdutos.NumDocumento, Produtos.DescResumidaProduto, Produtos.RefProduto, Produtos.CodGrupoProd, Produtos.CodSubGrupo, ItensRequisicaoProdutos.QuantRequisitada, ItensRequisicaoProdutos.ValorApropriacao, Veiculos.PlacaVeiculo, Veiculos.CodMarcaVeiculo, Veiculos.CodModeloVeiculo, (ItensRequisicaoProdutos.ValorApropriacao / ItensRequisicaoProdutos.QuantRequisitada) AS ValorUnitario, CONVERT(DECIMAL(9, 2), ((ItensRequisicaoProdutos.ValorApropriacao / NULLIF(RequisicaoProdutos.ValorTotalMov, 0)) * Desconto_CAP_Requisicao.Desconto)) AS DescontoPorItem FROM RequisicaoProdutos LEFT OUTER JOIN ItensRequisicaoProdutos ON RequisicaoProdutos.CodRequisicao = ItensRequisicaoProdutos.CodRequisicao INNER JOIN Produtos ON Produtos.CodProduto = ItensRequisicaoProdutos.CodProduto INNER JOIN Veiculos ON Veiculos.CodVeiculo = RequisicaoProdutos.CodVeiculo LEFT OUTER JOIN Desconto_CAP_Requisicao ON Descon
to_CAP_Requisicao.CodRequisicao = RequisicaoProdutos.CodRequisicao 
LEFT OUTER JOIN CombustivelLubrificante ON ItensRequisicaoProdutos.CodProduto = CombustivelLubrificante.CodProduto
WHERE (RequisicaoProdutos.DataRequisicao >= '01/16/2025 00:00:00' AND RequisicaoProdutos.DataRequisicao <= '01/16/2025 23:59:29') AND (ISNULL (CombustivelLubrificante.TipoCombustivel, '') <> 'Combustível')
ORDER BY Veiculos.PlacaVeiculo DESC



--{RequisicaoProdutos.DataRequisicao} >= #01/16/2025 00:00:00# AND {RequisicaoProdutos.DataRequisicao} <= #01/16/2025 23:59:29# AND (IIF(ISNULL({CombustivelLubrificante.TipoCombustivel}), '',{CombustivelLubrificante.TipoCombustivel}) <> 'Combustível')