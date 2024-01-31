use LONTANO

--select * from Fatura_eFrete where ID in (2277,2278)
--ID	Fechamento	Vencimento	Transportadora	Numero	Taxa	Tarifa	Tipo	Status	DataCriacao	DataAlteracao	CodContasPagar	CodRelacaoFrete	TotalItens
--2277	2023-10-06 01:00:06.000	2023-10-13 01:00:06.000	11455829000103	309387	0.20	NULL	Adiantamentos	Aberto	2023-10-06 00:47:37.300	2023-10-10 15:39:49.000	1871386	1198145	113
--2278	2023-10-06 01:00:06.000	2023-10-13 01:00:06.000	11455829000103	309420	0.20	NULL	Quitacao	Aberto	2023-10-06 00:47:38.960	2023-10-10 15:42:12.000	1871394	1198151	186

--update Fatura_eFrete set CodContasPagar = null, CodRelacaoFrete = NULL where ID in (2277)
--update Fatura_eFrete set CodContasPagar = null, CodRelacaoFrete = NULL where ID in (2278)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--exec VerificaCTe 120000023957
--select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1548097
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select TarifaFreteMotorista,* from ConhecimentosTransporte where  NumConhecto = 690675 and CodUF = 'MT'
----UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 65.00 where Sequencial = 220000070526
--select TarifaFreteMotorista,* from ConhecimentosTransporte where  NumConhecto = 191053 and CodUF = 'PR'
--exec MonitoraMDFe 47018637
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1545686
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 1760148 and CodUF = 'MT' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set SerieConhecto = '1' where Sequencial = 890000028784

select * from ConhecimentosTransporte where NumConhecto = 1760149 and CodUF = 'MT' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set SerieConhecto = '1' where Sequencial = 890000028785

select * from ConhecimentosTransporte where NumConhecto = 1760154 and CodUF = 'MT' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set SerieConhecto = '1' where Sequencial = 890000028794

select * from ConhecimentosTransporte where NumConhecto = 1760156 and CodUF = 'MT' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set SerieConhecto = '1' where Sequencial = 890000028798
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM Veiculos WHERE PlacaVeiculo = 'QAH1I79'
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ChequesEmitidos where Sequencial = 50000012531 -- NumeroCheque =197146
select * from MovimentacaoBancaria where CodMovBancaria = 5012295
select * from ContasPagar where CodContasPagar = 5002838
SELECT SUM(ValorCheque) AS ValorTotalPago FROM ConhecimentosRelFretes_Cheques WHERE (SeqCheque = 50000012531) AND (CodRelacaoFrete = 5002838)
SELECT * FROM ConhecimentosRelFretes_Cheques WHERE (SeqCheque = 50000012531) AND (CodRelacaoFrete = 5002838)
SELECT SUM(ValorTotalPago) AS ValorTotalPago FROM ContasPagas WHERE CodMovCaixa = 500012294
SELECT * FROM ContasPagas WHERE CodMovCaixa = 500012294

select * from ConhecimentosTransporte where Sequencial in (50000012372,50000012373)


select  top(50) Discriminacao, * from LONTANO_GSe.dbo.NFSe order by DataEmissaoNfse desc