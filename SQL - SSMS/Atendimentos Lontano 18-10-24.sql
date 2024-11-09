EXEC MonitoraMDFe 57009890
--delete FROM LONTANO_GSe.dbo.MDFe WHERE Sequencial in (1743086,1743081)

select * from ConhecimentosTransporte where NumConhecto = 735270 and CodUF = 'MT'
exec VerificaCTe 480000007273
--DELETE from LONTANO_GSe.dbo.CTe_LOG where Sequencial in (480000007273) and ID > 23050439


EXEC EmiteContrato 20000157439
SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 644546                                     
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC
  

--------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto = 86156 and CodUF = 'MT' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Cancelado' where NumConhecto = 86156 and CodUF = 'MT' and SerieConhecto = '2'

SELECT * from Caixas where CodFornecedor = 1096202
select * from ContasPagar where CodContasPagar IN (1977369,1971116)
select * from ContasPagas where CodContasPagar IN (1977369,1971116)
select * from MovimentosCaixa where CodMovCaixa IN (101765133,101781999)

SELECT ContasReceber.CodContasReceber, Clientes.CodCliente FROM Caixas 
INNER JOIN Clientes ON Clientes.CodColaborador = Caixas.CodColaborador
INNER JOIN ContasReceber ON ContasReceber.CodCliente = Clientes.CodCliente WHERE Caixas.CodFilial = 'BJG' AND Caixas.CodCaixa = 8 AND (ContasReceber.Situacao NOT IN ('Liquidada', 'Cancelada'))

SELECT * FROM Temp_SaldoMovCaixa WHERE (CodFilial = 'CG') AND (CodUsuario = 14102) AND (DataCriacao = '10/18/2024 14:53:34') ORDER BY Data, NumDoc, ValorMovimento, CodMovCaixa DESC