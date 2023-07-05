--Demonstrativo Mensal de Resultado da Frota

--SELECT 
--T.CodVeiculo 
--FROM Temp_RelResumoDesempenhoFrota T 
--INNER JOIN Veiculos V ON V.CodVeiculo = T.CodVeiculo
--WHERE (RIGHT(T.MesAno,4)+LEFT(T.MesAno,2)) BETWEEN (RIGHT('02/2018',4)+LEFT('02/2018',2)) and (RIGHT('12/2018',4)+LEFT('12/2018',2))
--AND (T.Salvar = 'S') 
--AND (T.Origem = 'frmDemonstrativoResultadoFrota') 
--AND (V.CodTipoVeiculo NOT IN (1, 2, 7))

 SELECT DISTINCT
		 Temp_RelResumoDesempenhoFrota.PlacaVeiculo, Temp_RelResumoDesempenhoFrota.Fretes, Temp_RelResumoDesempenhoFrota.Comissao,
		 Temp_RelResumoDesempenhoFrota.Diesel, Temp_RelResumoDesempenhoFrota.Pneus, Temp_RelResumoDesempenhoFrota.Mecanica, 
		 Temp_RelResumoDesempenhoFrota.BalsaPedagio, Temp_RelResumoDesempenhoFrota.LavagemLub, Temp_RelResumoDesempenhoFrota.DespDiv,
		 Temp_RelResumoDesempenhoFrota.FinancSeguro, Temp_RelResumoDesempenhoFrota.CodVeiculo, Temp_RelResumoDesempenhoFrota.Ano, 
		 Temp_RelResumoDesempenhoFrota.QtdeTotalEmb, Temp_RelResumoDesempenhoFrota.KmPercorrida, Temp_RelResumoDesempenhoFrota.MediaConsumo,
		 Temp_RelResumoDesempenhoFrota.QtdeCombustivel, Temp_RelResumoDesempenhoFrota.QtdeViagens, Temp_RelResumoDesempenhoFrota.DifFaturamento
 FROM  
		RODOMAIOR.dbo.Temp_RelResumoDesempenhoFrota Temp_RelResumoDesempenhoFrota
 where 
		Temp_RelResumoDesempenhoFrota.Salvar='S' 
		AND Temp_RelResumoDesempenhoFrota.Origem='frmDemonstrativoResultadoFrota' 
		and Temp_RelResumoDesempenhoFrota.MesAno>= ('01/02/2018')
		and Temp_RelResumoDesempenhoFrota.MesAno <= ('31/12/2018') 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1466 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8008 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1140 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 3012 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5413 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8463
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5916 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7137 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1466 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9304 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8008
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1466 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 3012 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5413
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1140 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7137
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5916 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8463
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8008 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1140 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1466
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 3012 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5413 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5916 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7137 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8463 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8008 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1140 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 3012 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5412
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5413 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5916 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1466 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7137
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8008 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1140 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 3012 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5413 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5916 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7137 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9957 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8008 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1140 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 3012
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5916 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7137 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7550 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9957
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5413 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8008 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1140 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 3012 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5412 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5413 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7137 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 4938 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9957 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5916 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7550 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8008 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1140 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1466 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 3012 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 4938 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5413 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5916 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7137
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7550 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9957 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8008 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1140
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1466 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7137 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9957
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 3012 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 4938 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5413 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5916 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7550 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 330 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 8008 
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 3012 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 4938
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 5413 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7137
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 7550 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 1466
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 2486 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9870
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9957 AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9099
		AND Temp_RelResumoDesempenhoFrota.CodVeiculo <> 9257 


-------------------------------------------------------
--RelResumoDesempenhoFrotaPeriodo


SELECT MesAno, DataCriacao FROM Temp_RelResumoDesempenhoFrota WHERE Origem = 'frmDemonstrativoResultadoFrota' AND Salvar = 'S' AND CONVERT(DATETIME,RIGHT(MesAno,4)+'/'+LEFT(MesAno,2)+'/01') BETWEEN '02/01/2018 00:00:00' and '12/31/2018 23:59:29'GROUP BY MesAno, DataCriacao ORDER BY RIGHT(MesAno,4), LEFT(MesAno,2)

SELECT * FROM Temp_RelResumoMensalDesempFrota WHERE (CodFilial = 'CG') AND (CodUsuario = 12369) AND (DataCriacao = '06/15/2023 14:39:05') AND (Descricao = 'Frete')
SELECT MesAno, SUM(ISNULL(Fretes,0)) AS Fretes, SUM(ISNULL(Comissao,0)) AS Comissao, SUM(ISNULL(Diesel,0)) AS Diesel, SUM(ISNULL(Pneus,0)) AS Pneus, SUM(ISNULL(Mecanica,0)) AS Mecanica, SUM(ISNULL(BalsaPedagio,0)) AS BalsaPedagio, SUM(ISNULL(LavagemLub,0)) AS LavagemLub, SUM(ISNULL(DespDiv,0)) AS DespDiv, SUM(ISNULL(FinancSeguro,0)) AS FinancSeguro, SUM(ISNULL(DifFaturamento,0)) AS DifFaturamento, LEFT(MesAno,2) AuxMes, RIGHT(MesAno,4) AuxAno FROM Temp_RelResumoDesempenhoFrota WHERE Origem = 'frmDemonstrativoResultadoFrota' AND Salvar = 'S' AND CONVERT(DATETIME,RIGHT(MesAno,4)+'/'+LEFT(MesAno,2)+'/01') BETWEEN '02/01/2018 00:00:00' and '12/31/2018 23:59:29' GROUP BY MesAno, LEFT(MesAno,2), RIGHT(MesAno,4) ORDER BY AuxAno, AuxMes

--select 3081147.29 +3320436.68+2910121.83+2503682.10+2590294.00+5181576.66+4583269.76+4141203.49+4503101.06+4210948.93+4311692.31




 SELECT 
		 Temp_RelResumoMensalDesempFrota.Saldo1, Temp_RelResumoMensalDesempFrota.Saldo2, Temp_RelResumoMensalDesempFrota.Saldo3, Temp_RelResumoMensalDesempFrota.Saldo4, 
		 Temp_RelResumoMensalDesempFrota.Saldo5, Temp_RelResumoMensalDesempFrota.Saldo6, Temp_RelResumoMensalDesempFrota.Saldo7, Temp_RelResumoMensalDesempFrota.Saldo8, 
		 Temp_RelResumoMensalDesempFrota.Saldo9, Temp_RelResumoMensalDesempFrota.Saldo10, Temp_RelResumoMensalDesempFrota.Saldo11, Temp_RelResumoMensalDesempFrota.Saldo12, 
		 Temp_RelResumoMensalDesempFrota.CodVeiculo, Temp_RelResumoMensalDesempFrota.Descricao, Temp_RelResumoMensalDesempFrota.CodUsuario,
		 Temp_RelResumoMensalDesempFrota.CodFilial, Temp_RelResumoMensalDesempFrota.DataCriacao, Temp_RelResumoMensalDesempFrota.ResultadoFinal1, 
		 Temp_RelResumoMensalDesempFrota.ResultadoFinal2, Temp_RelResumoMensalDesempFrota.ResultadoFinal3, Temp_RelResumoMensalDesempFrota.ResultadoFinal4,
		 Temp_RelResumoMensalDesempFrota.ResultadoFinal5, Temp_RelResumoMensalDesempFrota.ResultadoFinal6, Temp_RelResumoMensalDesempFrota.ResultadoFinal7, 
		 Temp_RelResumoMensalDesempFrota.ResultadoFinal8, Temp_RelResumoMensalDesempFrota.ResultadoFinal9, Temp_RelResumoMensalDesempFrota.ResultadoFinal10, 
		 Temp_RelResumoMensalDesempFrota.ResultadoFinal11, Temp_RelResumoMensalDesempFrota.ResultadoFinal12

 FROM  
		RODOMAIOR.dbo.Temp_RelResumoMensalDesempFrota Temp_RelResumoMensalDesempFrota

		where 
		Temp_RelResumoMensalDesempFrota.CodFilial = 'CG' AND Temp_RelResumoMensalDesempFrota.CodUsuario = 11605 AND Temp_RelResumoMensalDesempFrota.DataCriacao = '2023/06/16 10:40:19'



 ORDER BY 
		Temp_RelResumoMensalDesempFrota.CodVeiculo
		






----------------------
--Busca Conhecimentos

SELECT DISTINCT 
ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.NumConhecto, 
ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, 
ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, 
ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, 
ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota,
CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP,
ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) 
AS NF 
FROM ConhecimentosTransporte 
INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota
INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade
INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade 
LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo
LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento 
LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto
INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente 
INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga
WHERE ConhecimentosTransporte.DataEmissao
BETWEEN '02/01/2018 00:00:00' AND '12/31/2018 23:59:29' 
AND (ConhecimentosTransporte.SituacaoConhecto <> 'Cancelado' 
AND ConhecimentosTransporte.SituacaoConhecto <> 'Substituído') 
AND Veiculos.Propriedade = 'Próprio' ORDER BY ConhecimentosTransporte.Sequencial
