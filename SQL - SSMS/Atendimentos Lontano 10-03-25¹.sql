EXEC VerificaNFe 100001301
SELECT * from LONTANO_GSe.dbo.NFe where CodVenda = 100001301

exec VerificaCTe 10000027499
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 10000027499
exec VerificaCTe 10000027500
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 10000027500

select CodIndicadorDiferenca,* from RelacaoFretes where CodRelacaoFrete = 1201421
--UPDATE RelacaoFretes set ValorDiferenca = 935.99, CodRelacaoFreteDiferenca = 1202894, CodIndicadorDiferenca = 3   where CodRelacaoFrete = 1201421 --935.99 / 1202894 / 3]

SELECT ValorMovimento FROM MovimentacaoBancaria WHERE CodMovBancaria = 53181619
SELECT * FROM MovimentacaoBancaria WHERE CodMovBancaria = 53181619
SELECT SUM(ValorTotalPago) AS ValorTotalPago FROM ContasPagas WHERE CodMovCaixa = 5300181618
SELECT * FROM ContasPagas WHERE CodMovCaixa = 5300181618
--UPDATE ContasPagas set ValorTotalPago = 1697.00 WHERE CodMovCaixa = 5300181618  --2425.48


select SUM(ValorDespesa)  FROM DespesasContasPagar where CodContasPagar = 3020006 AND CodTipoDespesa = 80   --4967.56
--UPDATE DespesasContasPagar SET ValorDespesa = 3217.56 where CodContasPagar = 3020006 AND CodTipoDespesa = 80 

select * FROM CaramuruControle where ID LIKE '%0000234632%'

SELECT * FROM Clientes where CodCliente = 3001405

SELECT CodControleCaramuru,* FROM PedidosFrete WHERE CodPedidoFrete = 24003952
--UPDATE PedidosFrete SET CodControleCaramuru  ='AUT-0000234632'  where CodPedidoFrete = 24003952

SELECT * FROM ConhecimentosTransporte WHERE NumConhecto = 15327 AND CodUF = 'MS' AND SerieConhecto = '2'
--UPDATE ConhecimentosTransporte SET CodFilialEmitente = 'FRT' where NumConhecto = 15327 AND CodUF = 'MS' AND SerieConhecto = '2'  --CG


SELECT TipoConhecimento, * FROM ConhecimentosTransporte WHERE NumConhecto = 58639  AND CodUF = 'MG' AND SerieConhecto = '2'  --Normal
--UPDATE ConhecimentosTransporte SET TipoConhecimento = 'Complemento' WHERE NumConhecto = 58639  AND CodUF = 'MG' AND SerieConhecto = '2'

SELECT TipoConhecimento, * FROM ConhecimentosTransporte WHERE NumConhecto = 58005  AND CodUF = 'MG' AND SerieConhecto = '2'  --Substituto
--UPDATE ConhecimentosTransporte SET TipoConhecimento = 'Complementado' WHERE NumConhecto = 58005  AND CodUF = 'MG' AND SerieConhecto = '2'

--SELECT * from Usuarios where NomeUsuario LIKE '%ODeir%'
select * from ConhecimentosComplementados
--insert INTO ConhecimentosComplementados VALUES (530000175045,530000171828,10938,'CG',GETDATE(),NULL,NULL,NULL,'N')