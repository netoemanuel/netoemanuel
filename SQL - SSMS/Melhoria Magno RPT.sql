SELECT * from ConhecimentosTransporte where NumConhecto = 527044 AND CodUF = 'MS'

EXEC VerificaCTe 250000081332

SELECT Status, * FROM LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 250000081332
--UPDATE LONTANO_GSe.dbo.Eventos_CTe SET Status = 0 where Sequencial_CTe = 250000081332

SELECT ValorNF, SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 13355 AND CodUF = 'MS' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte SET ValorNF = 64435.73, SeguroAverbado = 12.89 where NumConhecto = 13355 AND CodUF = 'MS' and SerieConhecto = '2'


EXEC dbo.SaldoCAPAberto '2024-06-27 12:32:00'dbo.ContasPagar INNER JOIN
    dbo.TiposContasPagar ON 
    dbo.ContasPagar.CodTipoContasPagar = dbo.TiposContasPagar.CodTipoContasPagar
     INNER JOIN
    dbo.Fornecedores ON 
    dbo.ContasPagar.CodFornecedor = dbo.Fornecedores.CodFornecedor
     INNER JOIN
    dbo.TiposCobranca ON 
    dbo.ContasPagar.CodTipoCobranca = dbo.TiposCobranca.CodTipoCobranca


EXEC verificacte 10000024786
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 10000024786