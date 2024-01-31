use LONTANO


select Status,* from LONTANO_GSe.dbo.Eventos_MDFe where sequencial_mdfe = 1536011


exec VerificaCTe 270000074637

--delete from LONTANO_GSe.dbo.CTe_LOG where ID > 22164013 and Sequencial = 270000074637

exec VerificaCTe 730000132013

select  * from ConhecimentosTransporte where NumConhecto = 389752 and CodUF = 'MG'
--exec VerificaCTe 730000132013
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 730000132013
--delete from LONTANO_GSe.dbo.cte where Sequencial = 730000132013 
select * from LONTANO_GSe.dbo.cte_log where Sequencial = 730000132013
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 730000132013 and ID < 22161912
exec Grava_CTe 730000132013

select  * from ConhecimentosTransporte where NumConhecto = 389765 and CodUF = 'MG'
--exec VerificaCTe 270000074637
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 730000132013
--delete from LONTANO_GSe.dbo.cte where Sequencial = 730000132013 
select * from LONTANO_GSe.dbo.cte_log where Sequencial = 730000132013
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 730000132013 and ID < 22161912
exec Grava_CTe 730000132013


select  * from ConhecimentosTransporte where NumConhecto = 189742 and CodUF = 'PR'
exec VerificaCTe 910000043707
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 910000043707
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 910000043707 and ID > 22166351





--select Contrato ,* from ConhecimentosTerceiros 
--SELECT COUNT(*) AS Registros FROM ConhecimentosContasReceber WHERE (CodContasReceber = 53116088)


SELECT DISTINCT 
		CTRC.Sequencial, CTRC.CodPedidoFrete, CCR.CodContasReceber, CTRC.CodUF, CTRC.NumConhecto, CTRC.CodUF + '-' + LTRIM(STR(CTRC.NumConhecto)) AS CTRC,
		CTRC.DataEmissao, CCR.QuantUtilizadaCalculo, ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) AS QuantChegFaturamento,
		CTRC.CodUnidadeMedida, CCR.ValorFaturado, CTRC.QuantidadeSaida, CTRC.ValorTotalFrete, CASE ISNULL((SELECT COUNT(NumeroNF) AS QtdeNF 
FROM 
		NotasFiscaisConhecimento 
WHERE 
		SequencialConhecimento = CTRC.Sequencial), 0) WHEN 1 THEN NotasFiscaisConhecimento.NumeroNF WHEN 0 THEN NULL ELSE 'Várias' END AS NF,
		CASE WHEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' 
		THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100))  
		ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > 0 AND CASE ISNULL(TipoToleranciaQuebra, '')  
		WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) 
		ELSE QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) END > ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada) * (ToleranciaQuebra / 100) 
		THEN CASE ISNULL(TipoToleranciaQuebra, '') WHEN 'Diferença' THEN (QuantidadeSaida - ISNULL(QuantChegFaturamento, CTRC.QuantidadeChegada)) - (QuantidadeSaida * (ToleranciaQuebra / 100)) 
		ELSE QuantidadeSaida - ISNULL(CTRC.QuantChegFaturamento, CTRC.QuantidadeChegada) END 
		ELSE NULL END AS Quebra, CCR.DataRecebimento, ISNULL(CCR.ValorRecebido, 0) AS ValorRecebido, 
		ISNULL(Recebidos.Juros, 0) AS Juros,
		ISNULL(Recebidos.Multa, 0) AS Multa,
		ISNULL(Recebidos.Desconto, 0) AS Desconto,
		(ISNULL(CCR.ValorFaturado, 0) - ISNULL(CCR.ValorRecebido, 0)) AS SaldoReceber 
		FROM 
			ConhecimentosContasReceber_Saldo CCR 
			INNER JOIN ConhecimentosTransporte CTRC ON CCR.NumSeqConhecto = CTRC.Sequencial 
			LEFT OUTER JOIN NotasFiscaisConhecimento ON CTRC.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
			LEFT OUTER JOIN Clientes_Complemento ON CodCliente = CodClientePagto 
			LEFT OUTER JOIN (SELECT CodContasReceber, NumSeqConhecto, SUM(ISNULL(Juros, 0)) AS Juros, 
			SUM(ISNULL(Multa, 0)) AS Multa, SUM(ISNULL(Desconto, 0)) AS Desconto
			FROM
				ConhecimentosContasReceber_Recebidos
GROUP BY 
	CodContasReceber, NumSeqConhecto) AS Recebidos ON Recebidos.CodContasReceber = CCR.CodContasReceber
	AND Recebidos.NumSeqConhecto = CCR.NumSeqConhecto 
Where
	(CCR.CodContasReceber = 53116088) 
ORDER BY
	CTRC.CodUF, CTRC.NumConhecto 


select * from ConhecimentosContasReceber_Saldo where NumSeqConhecto in (50000011080,50000011081)

--NumSeqConhecto	CodContasReceber	QuantUtilizadaCalculo	ValorQuebra	ValorFaturado	ValorRecebido	Juros	Multa	Desconto	DataRecebimento	Saldo
--50000011080	53116088	45960.00	NULL	14205.78	14591.10	NULL	NULL	NULL	2023-05-19 00:00:00	-385.32
--50000011081	53116088	47640.00	NULL	14717.90	15117.11	NULL	NULL	NULL	2023-05-19 00:00:00	-399.21

--NumSeqConhecto	CodContasReceber	QuantUtilizadaCalculo	ValorQuebra	ValorFaturado	ValorRecebido	Juros	Multa	Desconto	DataRecebimento	Saldo
--50000011080	53116088	45960.00	NULL	14205.78	14591.10	NULL	NULL	NULL	2023-05-19 00:00:00	NULL
--50000011081	53116088	47640.00	NULL	14717.90	15117.11	NULL	NULL	NULL	2023-05-19 00:00:00	NULL