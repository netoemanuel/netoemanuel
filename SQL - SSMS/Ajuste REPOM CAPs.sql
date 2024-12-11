select * from Fatura_Repom where ID = 201 --
select (    1848610.84 - 1850626.31  ) -- 2015.47
select * from Fatura_Repom_Itens where IDFatura_REPOM = 201 and ValorTransacao = 2015.47
select * from Fatura_Repom_Itens where  ValorTransacao = 2015.47
select * from Fatura_Repom_Itens where IDFatura_REPOM = 201 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select SituacaoConhecto,ValorAdiantamento,* from ConhecimentosTransporte where Sequencial in (530000172401,60000031958,980000029991,980000029981)
--EXEC VerificaCTe 640000067528
--select * from Fatura_Repom_Itens where ValorTransacao = 39715.79 ORDER BY DataCriacao desc

 select * from ContasPagar where CodContasPagar = 1990037 -- 2148808.19 valor original
 --UPDATE ContasPagar set ValorDocumento = (ValorDocumento + 3280.37), ValorPagar =  (ValorPagar + 3280.37), Saldo = (Saldo + 3280.37) where CodContasPagar = 1979679


--select * from Fatura_Repom_Itens where IDFatura_REPOM = 183 and Sequencial_CTRC in (230000044384,230000044383)
select SituacaoConhecto,ValorAdiantamento,* from ConhecimentosTransporte where Sequencial in (530000172401,60000031958,980000029991,980000029981)
--EXEC VerificaCTe 530000172401
select * from Fatura_Repom_Itens where IDFatura_REPOM = 201 and Sequencial_CTRC is null
--select * from Fatura_Repom_Itens where ValorTransacao = 3330.00  AND Sequencial = 350000004138 ORDER BY DataCriacao desc

EXEC VerificaCTe 980000029791
EXEC VerificaCTe 430000010706

SELECT (4445.44 - 1165.07)



 -- Chamado Marilene
select * from Fatura_Repom_Itens where ValorTransacao = 3330.00 ORDER BY DataCriacao desc
select * from Fatura_Repom_Itens where ValorTransacao = 3330.00  AND Sequencial = 350000004138 ORDER BY DataCriacao desc
SELECT * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 1200459
SELECT * from ConhecimentosRelacaoFretes_log where CodRelacaoFrete = 1200459
SELECT * from ConhecimentosRelacaoFretes_log where NumSeqConhecto = 350000004138
EXEC VerificaCTe 350000004138   -- SP-120269

EXEC VerificaCTe 910000045339
EXEC VerificaCTe 420000017957

SELECT ct.CodUF, ct.NumConhecto, fri.* FROM Fatura_Repom_Itens fri
INNER JOIN ConhecimentosTransporte ct ON ct.Sequencial = fri.Sequencial
WHERE ValorTransacao = 3330.00 AND ct.CodUF = 'PR' AND fri.DataCriacao BETWEEN '2024-01-01 00:00:01' and '2024-01-31 00:00:01'
ORDER BY fri.DataCriacao DESC

SELECT TOP(1000) oe.CIOT, CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PR' AND CTRC.Numconhecto = 196493
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC

SELECT NF.SequencialConhecimento, (NF.SerieNF + '/' + LTRIM(NF.NumeroNF)) AS SerieNumNF, NF.ChaveAcessoNFe, NF.DataEmissaoNF, NF.ValorNF, NF.CodModelo, NF.CodigoCFOP, NF.ValorProdutos,
NF.BaseCalculoICMS , NF.ValorICMS, NF.BaseCalcSubstTributaria, NF.ValorICMSSubstTributaria, NF.NumeroNF, NF.UtilizacaoNFe,NFe.DT_Alteracao,NFe.CodVenda, NFe.IndProcedenciaXML, NFe.DataCriacao
FROM NotasFiscaisConhecimento NF 
LEFT OUTER JOIN Lontano_GSe.dbo.NFe NFe ON NFe.ID COLLATE Latin1_General_CI_AI = NF.ChaveAcessoNFe
WHERE (NF.SequencialConhecimento = 590000003873) ORDER BY NF.SerieNF, NF.NumeroNF

SELECT NF.SequencialConhecimento, (NF.SerieNF + '/' + LTRIM(NF.NumeroNF)) AS SerieNumNF, NF.ChaveAcessoNFe, NF.DataEmissaoNF, NF.ValorNF, NF.CodModelo, NF.CodigoCFOP, NF.ValorProdutos,
NF.BaseCalculoICMS , NF.ValorICMS, NF.BaseCalcSubstTributaria, NF.ValorICMSSubstTributaria, NF.NumeroNF, NF.UtilizacaoNFe,NFe.DT_Alteracao,NFe.CodVenda, NFe.IndProcedenciaXML, NFe.DataCriacao
FROM NotasFiscaisConhecimento NF 
LEFT OUTER JOIN Lontano_GSe.dbo.NFe NFe ON NFe.ID COLLATE Latin1_General_CI_AI = NF.ChaveAcessoNFe
WHERE (NF.SequencialConhecimento = 590000003873)

ORDER BY NF.SerieNF, NF.NumeroNF