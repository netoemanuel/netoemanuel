--SaldoAnteriorNaoConciliado
SELECT SUM(ValorMovimento) AS Debitos FROM MovimentacaoBancaria WHERE (CodFilial = 'CG') AND (CodContaBancaria = 54) AND (DataPrevista BETWEEN '01/01/1990 00:00:00' AND '01/01/1990 23:59:29') AND (DebitoCredito = 'D')
SELECT SUM(ValorMovimento) AS Creditos FROM MovimentacaoBancaria WHERE (CodFilial = 'CG') AND (CodContaBancaria = 54) AND (DataPrevista BETWEEN '01/01/1990 00:00:00' AND '01/01/1990 23:59:29') AND (DebitoCredito = 'C')

SELECT SUM(ValorMovimento) AS DebitosPre FROM MovimentacaoBancaria WHERE (CodFilial = 'CG') AND (CodContaBancaria = 54) AND (DataPrevista > '01/01/1990 23:59:29') AND (DebitoCredito = 'D')
SELECT SUM(ValorMovimento) AS CreditosPre FROM MovimentacaoBancaria WHERE (CodFilial = 'CG') AND (CodContaBancaria = 54) AND (DataPrevista > '01/01/1990 23:59:29') AND (DebitoCredito = 'C')

--SaldoAnterior = SaldoAtual + Debitos - Creditos + DebitosPre - CreditosPre
--SaldoAnterior				
select 45384.26 + 0 - 0 + 118706450.69 -118751834.95

--SaldoAnteriorConciliado
SELECT Saldo, * FROM ContasBancarias WHERE (CodFilial = 'CG') AND (CodContaBancaria = 54)
SELECT SUM(ValorMovimento) AS Debitos FROM MovimentacaoBancaria WHERE (CodFilial = 'CG') AND (CodContaBancaria = 54) AND (DataLancamento BETWEEN '01/01/1990 00:00:00' AND '01/07/2025 23:59:29') AND (DebitoCredito = 'D') AND (NOT (DataConciliacao IS NULL))
SELECT SUM(ValorMovimento) AS Creditos FROM MovimentacaoBancaria WHERE (CodFilial = 'CG') AND (CodContaBancaria = 54) AND (DataLancamento BETWEEN '01/01/1990 00:00:00' AND '01/07/2025 23:59:29') AND (DebitoCredito = 'C') AND (NOT (DataConciliacao IS NULL))
SELECT * FROM MovimentacaoBancaria where ValorMovimento = 26151.67
--SaldoAnterior = SaldoAtual + Debitos - Creditos
SELECT			11891.94  +  118751057.66  -  118736797.93 

--SELECT * FROM MovimentacaoBancaria WHERE (CodFilial = 'CG') AND (CodContaBancaria = 54) AND (DataLancamento BETWEEN '01/01/1990 00:00:00' AND '01/07/2025 23:59:29') AND (DebitoCredito = 'D') AND (NOT (DataConciliacao IS NULL))
--SELECT * FROM MovimentacaoBancaria WHERE (CodFilial = 'CG') AND (CodContaBancaria = 54) AND (DataLancamento BETWEEN '01/01/1990 00:00:00' AND '01/07/2025 23:59:29') AND (DebitoCredito = 'C') AND (NOT (DataConciliacao IS NULL))

SELECT DataConciliacao, *  FROM MovimentacaoBancaria
WHERE (CodFilial = 'CG') AND (CodContaBancaria = 54) AND 
(DataLancamento BETWEEN '01/01/1990 00:00:00' AND '01/07/2025 23:59:29')
AND (NOT (DataConciliacao IS NULL))
--and SituacaoCredito <> 'Baixado'




SELECT * from ContasPagar where CodContasPagar = 1979721
--UPDATE ContasPagar SET MesAnoCompetencia = '09/2024' where CodContasPagar = 1979721  -- 01/2024

select TipoCalculoLucro,SeguroAverbado, * from ConhecimentosTransporte where NumConhecto IN (741799, 741810,742016)  -- Mercado Interno /  Puxinha

--UPDATE ConhecimentosTransporte SET TipoCalculoLucro = 'Mercado Interno' where Sequencial IN (890000032898,890000032899)


select * FROM Usuarios where NomeUsuario LIKE '%gabriel evandro%'

select * FROM Usuarios where CodUsuario = 13811
SELECT * from OrdemEmbarque where NumOrdemEmbarque = 20003471


SELECT CodControleFilial,* from FiliaisAgencias where CodFilial = 'SOR'
SELECT CodControleFilial,* from FiliaisAgencias where CodFilial = 'SOR'