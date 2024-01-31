use LONTANO

exec VerificaCTe 430000007175

--UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 430000007175


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto = 602242 and CodUF = 'GO' -- 1751.92 -- 1529.36
select * from ConhecimentosRelacaoFretes where NumSeqConhecto  = 30000155342 and CodTipoPagamento = 2
--UPDATE ConhecimentosRelacaoFretes set ValorPago = 1751.92 where NumSeqConhecto  = 30000155342 and CodTipoPagamento = 2


--guia 3
SELECT ValoresRelacaoFretes.*, ValoresRelacaoFretes.ValorPago - ValoresRelacaoFretes.ValorConferido AS Diferenca,*
FROM ValoresRelacaoFretes
INNER JOIN TiposValores ON ValoresRelacaoFretes.CodTipoValor = TiposValores.CodTipoValor 
WHERE ValoresRelacaoFretes.CodRelacaoFrete = 28015083 ORDER BY ValoresRelacaoFretes.Sequencial



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 608477 and CodUF = 'GO' -- 1751.92 -- 1529.36
--novo
select * from Veiculos where CodVeiculo = 494471
select * from ConjuntosVeiculo where CodVeiculo = 494471

--antigo
select * from Veiculos where CodVeiculo = 428227
select * from ConjuntosVeiculo where CodVeiculo = 428227

exec MonitoraMDFe 41059334
--UPDATE LONTANO_GSe.dbo.mdfe set Status = 0 where Sequencial = 1572933
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select TarifaFreteMotorista, TarifaFreteEmpresa, * from ConhecimentosTransporte where NumConhecto = 498018 and CodUF = 'MS' -- 771.27
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 771.27, TarifaFreteEmpresa = 995.1242 where Sequencial = 250000076647  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from RelacaoFretes where CodRelacaoFrete = 35001755
--UPDATE RelacaoFretes SET DataPrevistaPagamento = '2023-10-13 00:00:00' where CodRelacaoFrete = 35001755 -- 2023-12-13 00:00:00