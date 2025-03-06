exec VerificaCTe 230000047380
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 230000047380

--EXEC VerificaCTe 190000039323



select DiaFechamentoMesAnterior from ParametrosGerais Where (CodFilial = 'CG')

SELECT * from ConhecimentosTransporte where NumConhecto = 426355 and CodUF = 'MG'
EXEC VerificaCTe 980000030722


--SELECT * from RateioContasPagar where CodContasPagar = 1855625 

--SELECT 
--    CentroCusto.DescCentroCusto AS 'Placa Veículo',
--    RateioContasPagar.CodFilial AS 'Filial Centro Custo',
--    RateioContasPagar.CodCentroCusto AS 'Código Centro Custo',
--    (ContasPagar.ValorPagar * RateioContasPagar.Percentual / 100) AS 'Valor Rateado',
--    RateioContasPagar.Percentual AS 'Percentual'
--FROM 
--    RateioContasPagar 
--    LEFT OUTER JOIN CentroCusto 
--        ON RateioContasPagar.CodFilial = CentroCusto.CodFilial 
--        AND RateioContasPagar.CodCentroCusto = CentroCusto.CodCentroCusto
--    INNER JOIN ContasPagar 
--        ON RateioContasPagar.CodContasPagar = ContasPagar.CodContasPagar 
--WHERE 
--    RateioContasPagar.CodContasPagar = 1855625
		


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 749502                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

EXEC VerificaCTe 890000033377

select * from ConhecimentosTransporte where Sequencial = 890000033377
select * from ConhecimentosTransporte_log where Sequencial = 890000033377

--EXEC ConfereAjuste3Reais '2025-02-01', '2025-02-28 23:59', 'CONFERE'
--EXEC ConfereAjuste3Reais '2025-02-01', '2025-02-28 23:59', 'AJUSTA'

SELECT * from ConhecimentosTransporte where NumConhecto = 749130 and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set CodPedidoFrete = 22000051 where NumConhecto = 749130 and CodUF = 'MT' and SerieConhecto = '0'  --10023191002319

SELECT * from ConhecimentosTransporte where NumConhecto = 542304 and CodUF = 'MS' and SerieConhecto = '0'
SELECT * from ConhecimentosTransporte_log where NumConhecto = 542304 and CodUF = 'MS' and SerieConhecto = '0'

EXEC VerificaCTe 760000060093
EXEC MonitoraMDFe 76086082

select * from MatrizTributaria where CodTipoOperacao = 5
SELECT SUM(BaseICMS) AS TotalBaseICMS, SUM(ValorICMS) AS TotalValorICMS FROM VendasItem WHERE (CodVenda = 100001289)
SELECT MAX(SeqItem) AS MaiorSeq FROM VendasItem WHERE (CodVenda = 100001289) AND (ISNULL(ValorICMS, 0) > 0)
SELECT ValorICMS,* FROM VendasItem WHERE (CodVenda = 100001289) 
select ValorICMS,* from Vendas where CodVenda = 100001289


SELECT * from ConhecimentosTransporte where NumConhecto = 426539 and CodUF = 'MG' and SerieConhecto = '0'

EXEC VerificaCTe 940000062165
--DELETE FROM LONTANO_GSe.dbo.CTe_LOG WHERE Sequencial = 940000062165 and ID = 23255779


SELECT * FROM ConhecimentosTransporte WHERE Sequencial = 530000173604
SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 99000114
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 116697
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114726   -- autorizada.
--DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 116723
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 116697
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 116723