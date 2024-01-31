select * from ConhecimentosTransporte where NumConhecto = 600941 and CodUF = 'GO'
exec VerificaCTe 620000023658
--UPDATE LONTANO_GSe.DBO.CTE SET Status = 0 WHERE Sequencial = 620000023658
select * from LONTANO_GSe.dbo.AverbacaoFrete where SequencialCTe = 620000023658
select * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1537472
exec VerificaCTe 220000070187
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SELECT COUNT(*) AS Registros FROM Veiculos WHERE (CodVeiculo = 4057) AND (SituacaoVeiculo NOT IN ('Inativo', 'Provisório')) AND (Propriedade = 'Próprio')
SELECT * FROM MovimentacaoPneus WHERE (CodVeiculo = 4057) AND (OdometroFinal IS NULL)
select * from ConjuntosVeiculo where CodVeiculo = 1576
--UPDATE ConjuntosVeiculo set CodTipoConjunto = 4 where CodVeiculo = 1576
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe =  1539471
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
use LONTANO
exec VerificaCTe 640000058082
--UPDATE LONTANO_GSe.DBO.CTE SET Status = 0 WHERE Sequencial = 640000058082
exec VerificaCTe 640000058093
--UPDATE LONTANO_GSe.DBO.CTE SET Status = 0 WHERE Sequencial = 640000058093
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 --#11988 - SALDO NEGATIVOS EM CTES

select Contrato ,* from ConhecimentosTerceiros 
SELECT COUNT(*) AS Registros FROM ConhecimentosContasReceber WHERE (CodContasReceber = 53116088)

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


exec Lontano_gse.dbo.MonitorarNFSe_RO_GO '5107602'



select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 596319 and CodUF = 'GO'
--UPDATE  ConhecimentosTransporte set TarifaFreteMotorista = 511.28 where Sequencial = 730000131879

select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 596864 and CodUF = 'GO'
--UPDATE  ConhecimentosTransporte set TarifaFreteMotorista = 102.00 where Sequencial = 730000131882

select ValorNF,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 598465 and CodUF = 'GO'
--UPDATE  ConhecimentosTransporte set ValorNF =  41114.13,SeguroAverbado = 20.55 where Sequencial = 30000154785


select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 2382388 -- and CodUF = 'GO'

select * from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 220000070265

select * from LONTANO_GSe.dbo.tblThreads

SELECT COUNT(*) AS Registros FROM Lontano_GSe.dbo.NFSe WHERE (Ativo <> 1 And Sequencial = 220000070265)
SELECT *  FROM Lontano_GSe.dbo.NFSe WHERE (Ativo <> 1 And Sequencial = 220000070265)


EXEC MonitoraMDFe 22078835


select TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 601426 

exec VerificaCTe 230000041848

--DELETE from LONTANO_GSe.dbo.cte_log where Sequencial = 230000041848 and id > 22179353