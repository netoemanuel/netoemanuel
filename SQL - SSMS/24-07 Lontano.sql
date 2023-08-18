--delete from LONTANO_GSe.dbo.cte where Sequencial = 530000154703

exec Grava_CTe 530000154703
select DataCriacao, * from LONTANO_GSe.dbo.cte where Sequencial = 530000154703
select * from ConhecimentosTransporte where Sequencial = 530000154703
--update ConhecimentosTransporte set DataEmissao = GETDATE (), HoraEmissao = GETDATE () where Sequencial = 530000154703
exec VerificaCTe 530000154703
--delete from LONTANO_GSe.dbo.CTe_LOG where id in (21378179,21378178,21378177)

SELECT * FROM ConhecimentosTransporte WHERE NumConhecto = 384371 
SELECT * FROM ChequesEmitidos WHERE NumeroCheque = 25843915 and CodFilial = 'CG' and CodContaBancaria = 52 and SituacaoCheque = 'Cancelado'

SELECT ISNULL(CTRC.NumCartaoValePedagio,OE.NumCartaoValePedagio) AS NumCartaoValePedagio, ISNULL(CTRC.TipoDispositivoValePedagio,OE.TipoDispositivoValePedagio) AS TipoDispositivoValePedagio, CTRC.CodFornecedor, CTRC.CodOrdemEmbarque 
FROM ConhecimentosTransporte CTRC INNER JOIN OrdemEmbarque OE ON OE.NumOrdemEmbarque = CTRC.CodOrdemEmbarque WHERE (CTRC.Sequencial = 530000155001)

SELECT TOP (200)* FROM OrdemEmbarque WHERE CIOT = 'EFRETE PAGO' AND EmpresaValePedagio <> 'Banco Bradesco S/A' ORDER BY DataCriacao DESC
--update OrdemEmbarque set EmpresaValePedagio = 'Centro de Gestao de Meios de P'   where  NumOrdemEmbarque = 53095092 

SELECT * FROM MovimentacaoBancaria WHERE (CodMovBancaria = 53141368) AND (CodTipoMovBancaria = 3) --Pagto. CTRC MG-377340
SELECT * FROM ChequesEmitidos WHERE (CodFilial = 'CG') AND (CodContaBancaria = 52) AND (NumeroCheque = 25843915)


SELECT EmpresaValePedagio, * FROM OrdemEmbarque WHERE NumOrdemEmbarque = 28174487