use LONTANO

select * from ConhecimentosTransporte where NumConhecto = 123724 and CodUF = 'SP'
exec VerificaCTe 730000132878
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 730000132878
--exec Grava_CTe 730000132878

select * from ConhecimentosTransporte where NumConhecto = 123727 and CodUF = 'SP'
exec VerificaCTe 730000132881
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 730000132881
--exec Grava_CTe 730000132881

select * from ConhecimentosTransporte where NumConhecto = 123722 and CodUF = 'SP'
exec VerificaCTe 730000132876
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 730000132876
--exec Grava_CTe 730000132876

select * from ConhecimentosTransporte where NumConhecto = 123725 and CodUF = 'SP'
exec VerificaCTe 730000132879
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 730000132879
--exec Grava_CTe 730000132879

select * from ConhecimentosTransporte where NumConhecto = 123728 and CodUF = 'SP'
exec VerificaCTe 730000132882
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 730000132875
--exec Grava_CTe 730000132882


select TarifaFreteMotorista, * from ConhecimentosTransporte where NumConhecto = 61857 and CodUF = 'GO' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = null where Sequencial = 730000132806


select * from MovimentosCaixa where CodMovCaixa = 200140007  -- 147
--UPDATE  MovimentosCaixa set CodCaixa = 1486, codfilial = 'RO' where CodMovCaixa = 200140007


select * from ConhecimentosTransporte where NumConhecto = 506221 and CodUF = 'MS'
exec VerificaCTe 170000022686
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 170000022686
exec Grava_CTe 170000022686  --Rejeicao: NFe inexistente na base de dados da SEFAZ - [chNFe: 50231160498706028833550500000823971043667668]

