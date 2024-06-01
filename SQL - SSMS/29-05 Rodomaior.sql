use RODOMAIOR

SELECT * FROM DespesasRateioContasPagar WHERE (CodContasPagar = 4006036) ORDER BY CodTipoDespesa
SELECT SUM(ValorDespesaRateio) AS ValorDespesaRateio FROM DespesasRateioContasPagar WHERE (CodContasPagar = 4006036) AND (CodTipoDespesa = 78)
 --121814,71  <> 126308,26 - DIF  4493,55 
SELECT * FROM ContasPagar WHERE (CodContasPagar = 4006036)
--SELECT * from 
SELECT * FROM fornecedores where cnpj_cpf = '805.602.109-49'

--insert into DespesasRateioContasPagar (CodContasPagar,CodFilial,CodCentroCusto,CodTipoDespesa,ValorDespesaRateio,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao)
----select 4006036,	'CG',	4,	78,	121814.71,	11605,	'CG',	'2024-05-27 14:33:14.000',	NULL,	NULL,	NULL
--select 4006036,	'CG',	4,	82,	7816.75,	11605,	'CG',	'2024-05-27 14:33:13.000',	NULL,	NULL,	NULL

SELECT * FROM CentroCusto WHERE CodFilial = 'CG' AND CodCentroCusto = 4
--UPDATE CentroCusto SET SituacaoCentroCusto = 'A' WHERE CodFilial = 'CG' AND CodCentroCusto = 4




SELECT top (100)*
FROM RetencoesTerceiros
--where year(DataEmissao) = 2023
--WHERE CodFornecedor = 1029302
WHERE DataEmissao BETWEEN '2023-01-01' AND '2023-12-31' AND CodFornecedor = 1029302

SELECT 
ISNULL(SUM(CASE WHEN ValorRetidoIRRF > 0 THEN BaseCalculoIRRF ELSE 0 END), 0) AS Valor,
ISNULL(SUM(ISNULL(ValorRetidoIRRF, 0)), 0) AS IRRF, 
ISNULL(SUM(ISNULL(ValorRetidoINSS, 0)), 0) AS INSS

--rodomaior.dbo.ValorOutrosIRRF(9001512,2023) AS ValorOutros
FROM RetencoesTerceiros
WHERE DataEmissao BETWEEN '2023-01-01' AND '2023-12-31' AND CodFornecedor = 9001512


--9001512

EXEC MonitoraMDFe 76024497
SELECT * FROM CaramuruControle where ID = '6001849546'

--SELECT TOP (100)* FROM RODOMAIOR_GSe.dbo.tblLog_operacao order BY DT_Hs desc where NM_Metodo LIKE '%51240514796754000295550100001704821314196647%'

SELECT DT_Alteracao,* from RODOMAIOR_GSe.dbo.NFe where ID = '51240514796754000295550100001704821314196647'

SELECT DT_Alteracao,* from RODOMAIOR_GSe.dbo.NFe where ID = '51240514796754000295550100001704921741943230'
SELECT DT_Alteracao,* from RODOMAIOR_GSe.dbo.NFe where ID = '51240514796754000295550100001705101510982486'
SELECT DataCriacao,* from RODOMAIOR_GSe.dbo.NFe where ID = '51240514796754000295550100001705331053038220'


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = 'NE' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 2490                                  
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT QuantidadeSaida,* FROM ConhecimentosTransporte where NumConhecto = 10150 and CodUF = 'MS' and SerieConhecto = 'NE' -- 44620.000
--UPDATE ConhecimentosTransporte SET QuantidadeSaida = 44400.000 where NumConhecto = 10150 and CodUF = 'MS' and SerieConhecto = 'NE'


SELECT * FROM FiliaisAgencias