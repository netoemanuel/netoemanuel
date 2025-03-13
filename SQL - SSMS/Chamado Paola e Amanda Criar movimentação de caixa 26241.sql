SELECT * FROM Temp_SaldoMovCaixa WHERE (CodFilial = 'CG') AND (CodUsuario = 14102) AND (DataCriacao = '03/07/2025 16:01:35') ORDER BY Data, NumDoc, ValorMovimento, CodMovCaixa DESC

SELECT ContasReceber.CodContasReceber, Clientes.CodCliente 
FROM Caixas
INNER JOIN Clientes ON Clientes.CodColaborador = Caixas.CodColaborador
INNER JOIN ContasReceber ON ContasReceber.CodCliente = Clientes.CodCliente
WHERE Caixas.CodFilial = 'CRD' AND Caixas.CodCaixa = 3 AND (ContasReceber.Situacao NOT IN ('Liquidada', 'Cancelada'))

select * FROM MovimentosCaixa where Historico = '02/25 - 002- Pg./liq. Rescisão'
select * FROM MovimentosCaixa where CodFilial = 'CRD' and CodCaixa = 3 ORDER BY DataCriacao desc
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'CRD',3,'2025-03-04 00:00:00','2025-03-04 00:00:00',6,3523.46,1,'02/25 Rescisao','2025-03-04 00:00:00','C','02/2025','02/25 - 002- Pg./liq. Rescisão','C',NULL,'Normal','F','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'2025-03-04 00:00:00.000','Empresa','2025-02-01 00:00:00','N',13842,'CG','2025-03-04 12:11:08.537',NULL,NULL,NULL,NULL,'2025-02-01 00:00:00',NULL,3,NULL,'N',NULL)

SELECT * from ContasPagar where CodContasPagar = 10011695
SELECT * from ContasPagas where CodContasPagar = 10011695
select * FROM MovimentosCaixa where Historico = '01/25 - Adto. Diarias e Viagens'
select * FROM MovimentosCaixa where CodFilial = 'CG' and CodCaixa = 2232 ORDER BY DataCriacao desc
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'CG',2232,'2025-01-23 00:00:00','2025-01-23 00:00:00',6,640.00,1,'01/2025 Mensal','2025-01-23 00:00:00','C','01/2025','01/25 - Adto. Diarias e Viagens','C',NULL,'Normal','S','N',NULL,101841514,'N',NULL,NULL,NULL,NULL,'2025-01-23 00:00:00.000',NULL,'2025-01-01 00:00:0',NULL,'14798','CG','2025-01-24 08:42:02.000',NULL,NULL,NULL,NULL,'2025-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL)