select * from Fatura_Repom where ID = 238 --
EXEC VerificaCTe 610000001945
select * from Fatura_Repom_Itens where IDFatura_REPOM = 238 and ValorTransacao = 118.49
select * from Fatura_Repom_Itens where  ValorTransacao = 118.49 
select * from Fatura_Repom_Itens where IDFatura_REPOM = 238 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select SituacaoConhecto,ValorAdiantamento,* from ConhecimentosTransporte where Sequencial in (530000172401,60000031958,980000029991,980000029981)
EXEC VerificaCTe 610000001945
--select * from Fatura_Repom_Itens where ValorTransacao = 39715.79 ORDER BY DataCriacao desc

select (    100891.85 - 100093.85  ) -- 798.00
select * from Fatura_Repom where ID = 231 --
select * from Fatura_Repom_Itens where IDFatura_REPOM = 231 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select * from Fatura_Repom_Itens where IDFatura_REPOM = 231 and Sequencial_CTRC = 47000003696
EXEC VerificaCTe 47000003696

 select * from ContasPagar where CodContasPagar = 10015455 -- 2148808.19 valor original
 --UPDATE ContasPagar set ValorDocumento = (ValorDocumento - 236.98 ), ValorPagar =  (ValorPagar - 236.98), Saldo = (Saldo - 236.98) where CodContasPagar = 10015455


--select * from Fatura_Repom_Itens where IDFatura_REPOM = 183 and Sequencial_CTRC in (230000044384,230000044383)
select SituacaoConhecto,ValorAdiantamento,* from ConhecimentosTransporte where Sequencial in (530000172401,60000031958,980000029991,980000029981)
--EXEC VerificaCTe 530000172401
select * from Fatura_Repom_Itens where IDFatura_REPOM = 201 and Sequencial_CTRC is null
--select * from Fatura_Repom_Itens where ValorTransacao = 3330.00  AND Sequencial = 350000004138 ORDER BY DataCriacao desc

SELECT * FROM ConhecimentosTransporte where Sequencial IN (530000173764,530000173778) -- verificar com Thiago depois das ferias dele

SELECT (4445.44 - 1165.07)

399.00



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