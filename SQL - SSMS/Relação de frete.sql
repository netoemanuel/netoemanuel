-- Exclu�o de descontos de Rela��o de Frete via Milvus
--situacao relacaoFrete
--1 = pendente
--2 = paga
--3 = Conferida
--indicador de diferen�a
-- 1 - Sem Diferen�a.
-- 2 - Diferen�a a Maior Pendente.
-- 3 - Diferen�a a Maior Descontada.
-- 4 - Diferen�a a Menor.
-- 5 - Diferen�a a Menor Pendente.
-- 6 - Diferen�a�a�Menor�Paga.


select  ValorDiferenca,   * from RelacaoFretes where CodRelacaoFrete = 1188309
--update RelacaoFretes set  Desconto = null, CodRelacaoFreteDiferenca = null where CodRelacaoFrete = 1188309
select  Desconto,   * from RelacaoFretes where CodRelacaoFrete = 1189750
--update RelacaoFretes set CodRelacaoFreteDiferenca = 33002949, ValorDiferenca = 120.10, CodIndicadorDiferenca = 2 where CodRelacaoFrete = 33002926


--select * from RelacaoFretes where CodRelacaoFrete = 1078695
--update RelacaoFretes set CodIndicadorDiferenca = 1 where CodRelacaoFrete = 1078695


select  CodIndicadorDiferenca,   * from RelacaoFretes where CodRelacaoFrete = 1188309
--update RelacaoFretes set  CodIndicadorDiferenca = 2 where CodRelacaoFrete = 1188309


-----------------------------
--Atendimentos � usu�rio(a) Luciene Balbuena referente a chamado aberto pelo Milvus N� ticket #6305 com Assunto: "Pagar desconto - Aceito indevido".

--select  ValorDiferenca,   * from RelacaoFretes where CodRelacaoFrete = 1188309
--ValorDiferenca / CodRelacaoFreteDiferenca
--7370.88			1189750
--update RelacaoFretes set  Desconto = null, CodRelacaoFreteDiferenca = null where CodRelacaoFrete = 1188309
--select  Desconto,   * from RelacaoFretes where CodRelacaoFrete = 1189750
--Desconto
--7370.88
--update RelacaoFretes set  Desconto = null where CodRelacaoFrete = 1189750

-----------------------------