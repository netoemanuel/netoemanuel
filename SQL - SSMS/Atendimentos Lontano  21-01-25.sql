SELECT * FROM Temp_SaldoMovCaixa WHERE (CodFilial = 'CG') AND (CodUsuario = 14102) AND (DataCriacao = '01/21/2025 16:22:52') ORDER BY Data, NumDoc, ValorMovimento, CodMovCaixa DESC

select * from Caixas where CodFilial = 'ARB' and CodCaixa = 34
--UPDATE Caixas set SaldoCaixa = (SaldoCaixa + 175.50) where CodFilial = 'ARB' and CodCaixa = 34 -- 3016.84

select * from Caixas_log where CodFilial = 'ARB' and CodCaixa = 34


SELECT SUM(MovimentosCaixa.ValorMovimento) AS Debitos FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa WHERE (MovimentosCaixa.CodFilial = 'ARB') AND (MovimentosCaixa.CodCaixa = 34) AND (MovimentosCaixa.DebitoCredito = 'D') AND (MovimentosCaixa.DataCaixa BETWEEN '08/29/2024 00:00:00' AND '08/29/2025 23:59:29')
SELECT SUM(MovimentosCaixa.ValorMovimento) AS Creditos FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa WHERE (MovimentosCaixa.CodFilial = 'ARB') AND (MovimentosCaixa.CodCaixa = 34) AND (MovimentosCaixa.DebitoCredito = 'C') AND (MovimentosCaixa.DataCaixa BETWEEN '08/29/2024 00:00:00' AND '08/29/2025 23:59:29')

SELECT SUM(MovimentosCaixa.ValorMovimento) AS Debitos FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa WHERE (MovimentosCaixa.CodFilial = 'ARB') AND (MovimentosCaixa.CodCaixa = 34) AND (MovimentosCaixa.DebitoCredito = 'D') AND (MovimentosCaixa.DataCaixa BETWEEN '08/29/2024 00:00:00' AND '08/29/2024 23:59:29')
SELECT SUM(MovimentosCaixa.ValorMovimento) AS Creditos FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa WHERE (MovimentosCaixa.CodFilial = 'ARB') AND (MovimentosCaixa.CodCaixa = 34) AND (MovimentosCaixa.DebitoCredito = 'C') AND (MovimentosCaixa.DataCaixa BETWEEN '08/29/2024 00:00:00' AND '08/29/2024 23:59:29')


SELECT MovimentosCaixa.CodMovCaixa, MovimentosCaixa.DataMovimento, MovimentosCaixa.CodTipoMovCaixa, TiposMovimentoCaixa.DescTipoMovCaixa, MovimentosCaixa.Historico, MovimentosCaixa.NumDocumento, MovimentosCaixa.ValorMovimento, MovimentosCaixa.CodRecDesp, MovimentosCaixa.DebitoCredito, MovimentosCaixa.DataCaixa, Caixas.SaldoCaixa FROM MovimentosCaixa LEFT OUTER JOIN Caixas ON Caixas.CodFilial = MovimentosCaixa.CodFilial AND Caixas.CodCaixa = MovimentosCaixa.CodCaixa LEFT OUTER JOIN TiposMovimentoCaixa ON TiposMovimentoCaixa.CodTipoMovCaixa = MovimentosCaixa.CodTipoMovCaixa WHERE (MovimentosCaixa.CodFilial = 'ARB') AND (MovimentosCaixa.CodCaixa = 34) AND (MovimentosCaixa.DataCaixa >= '08/29/2024 00:00:00' AND MovimentosCaixa.DataCaixa <= '08/29/2024 23:59:29') ORDER BY MovimentosCaixa.DataCaixa, MovimentosCaixa.NumDocumento, MovimentosCaixa.ValorMovimento, MovimentosCaixa.CodMovCaixa DESC

select * from MovimentosCaixa where  ValorMovimento = 175.50 ORDER by DataCriacao desc


SELECT * FROM Temp_SaldoMovCaixa WHERE (CodFilial = 'CG') AND (CodUsuario = 14102) AND (DataCriacao = '01/21/2025 16:39:36') ORDER BY Data, NumDoc, ValorMovimento, CodMovCaixa DESC


SELECT * from OrdemEmbarque where NumOrdemEmbarque = 29013356
SELECT EixosSemParar,RotaSemParar,* from OrdemEmbarque_log where NumOrdemEmbarque = 29013356 order BY DataLog desc
SELECT EmpresaValePedagio, NumCartaoValePedagio,TipoDispositivoValePedagio, RotaSemParar,ValorPedagioSemParar,DataContratoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 29013356  
SELECT TOP(1000) oe.CIOT,CTRC.TipoConhecimento,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE oe.NumOrdemEmbarque = 29013356
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC