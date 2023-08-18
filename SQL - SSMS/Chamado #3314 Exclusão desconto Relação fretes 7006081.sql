-- Chamado #3314 Exclusão desconto Relação fretes 7006081 
use LONTANO
SELECT * FROM Usuarios where NomeUsuario like '%Luciana Silva%'
SELECT * from RelacaoFretes where CodRelacaoFrete = 7006272
SELECT * from RelacaoFretes_Log where CodRelacaoFrete = 7006272
--7006081	1083595	2022-03-23 00:00:00	2022-03-23 00:00:00	2022-03-23 00:00:00	2	3	4470.36	NULL	NULL	2095.66	mateus rpr cheque	7006081	7006272	NULL	13612	RPR	2022-03-23 08:57:36.000	11812	CG	2022-08-18 13:23:04.000	NULL	2022-03-24 00:00:00.000	00124493            	1	NULL	NULL	2022-03-23 00:00:00
--update RelacaoFretes SET CodRelacaoFreteDiferenca = NULL, ValorDiferenca = NULL where CodRelacaoFrete = 7006081

select CodIndicadorDiferenca, * from RelacaoFretes where CodRelacaoFrete = 7006081 

--Situacao RelacaoFrete
--1 = pendente
--2 = paga
--3 = Conferida

--Indicador De Diferença
-- 1 - Sem Diferença.
-- 2 - Diferença a Maior Pendente.
-- 3 - Diferença a Maior Descontada.
-- 4 - Diferença a Menor.
-- 5 - Diferença a Menor Pendente.
-- 6 - Diferença a Menor Paga.

--UPDATE RelacaoFretes set Desconto = Null, CodRelacaoFreteDiferenca = null, CodIndicadorDiferenca = 2 WHERE (CodRelacaoFrete = 000000) --excluir desconto


select CodIndicadorDiferenca, Desconto, * from RelacaoFretes where CodRelacaoFrete = 2008587 -- 2008705
--UPDATE RelacaoFretes set CodIndicadorDiferenca = 2, CodRelacaoFreteDiferenca = null where CodRelacaoFrete = 2008587 

