select   top (100)  Status,* from RODOMAIOR_GSe.dbo.Eventos_CTe order by DataCriacao desc
----------------------------------------------------------------------------------------------------------------

select Saldo, * from ContasPagar where CodContasPagar = 7001428
select Saldo, * from ContasPagar_log where CodContasPagar = 7001428
--update ContasPagar set Saldo = 0.00  where CodContasPagar = 7001428
select * from RelacaoFretes where CodRelacaoFrete = 7001428
--------------------------------------------------------------------------------------------------------------------------

SELECT EmiteCartaFreteCIOT, * FROM OrdemEmbarque WHERE (NumOrdemEmbarque = 65003543) AND (ISNULL(EmiteCartaFreteCIOT, 'N') = 'S')
--update  OrdemEmbarque set EmiteCartaFreteCIOT = 'N' WHERE (NumOrdemEmbarque = 65003543)
SELECT COUNT(*) AS Registros FROM OrdemEmbarque WHERE (NumOrdemEmbarque = 65003543) AND (ISNULL(EmiteCartaFreteCIOT, 'N') = 'S')
--------------------------------------------------------------------------------------------------------------------------


select * from Programas where CodPrograma = 'frmRelContasPagarAbertoForn'
select * from Programas where CodPrograma = 'frmRelContasPagarAberto'
select * from Programas where CodPrograma = 'frmRelContasReceberAbertoCli'
select * from Programas where CodPrograma = 'frmRelContasReceberAberto'
exec MASTER.dbo.ProcuraObjetos 'Rodomaior', 'ConhecimentosTerceiros_ValorFaturado', 'Tudo'
--------------------------------------------------------------------------------------------------------------------------

select * from RelacaoFretes where CodContasPagar = 1312676

SELECT * FROM ContasPagar WHERE (CodContasPagar = 1312676)
SELECT COUNT(*) AS Registros FROM DespesasRateioContasPagar WHERE (CodContasPagar = 1312676) AND (CodTipoDespesa <> 88)
SELECT SUM(ValorDespesaRateio) AS ValorDespesaRateio FROM DespesasRateioContasPagar WHERE (CodContasPagar = 1312676) AND (CodTipoDespesa = 88)
SELECT ValorPagar,* FROM ContasPagar WHERE (CodContasPagar = 1312676)
SELECT * FROM DespesasRateioContasPagar WHERE (CodContasPagar = 1312676) AND (CodTipoDespesa = 88)
 --552068,57 rsTabelinha!ValorDespesaRateio
 --552050,91 rsDespCAP!ValorPagar
SELECT COUNT(*) AS Registros FROM RateioContasPagar WHERE (CodContasPagar = 1312676)
SELECT  Percentual,* FROM RateioContasPagar WHERE (CodContasPagar = 1312676)
SELECT * FROM DespesasRateioContasPagar WHERE (CodContasPagar = 1312676) AND (CodTipoDespesa = 88)
--------------------------------------------------------------------------------------------------------------------------
