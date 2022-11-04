SELECT * from Usuarios where NomeUsuario LIKE 'Daniela%' -- 13438

SELECT * from Nfe_Importacao where ChaveNfe = '35220914807945000477550010001293141004661423'

SELECT COUNT(*) AS Registros FROM EmpresaParametro 
INNER JOIN ContasPagar ON ContasPagar.CodEmpresaParam = EmpresaParametro.CodEmpresaParam 
WHERE EmpresaParametro.IndDefault = 'S' 
AND ContasPagar.CodContasPagar = 2165344

SELECT CodContasPagar, CodSequencialNF, (ISNULL(SerieNF,'') + CASE WHEN SerieNF 
IS NULL THEN '' ELSE '-' END + ISNULL(SubSerieNF, '')) AS SerieSub, NumeroNF, DataEmissaoNF, Descricao, ValorNF, ChaveAcessoNFe, CodSituacaoTributaria, CodCFOP, CodFilialNota 
FROM NotasFiscaisContasPagar 
LEFT OUTER JOIN ModelosNotasFiscais ON NotasFiscaisContasPagar.CodModelo = ModelosNotasFiscais.CodModelo 
WHERE (CodContasPagar = 2165344) ORDER BY CodSequencialNF

SELECT * from Nfe_Importacao where ChaveNfe = '35220914807945000477550010001293141004661423'