use LONTANO



exec VerificaCTe 640000059170

--UPDATE Lontano_GSe.dbo.cte set Status = 0 where Sequencial = 640000059170


exec VerificaCTe 220000070777


select * from ConhecimentosTransporte where Sequencial in (880000128702,880000128701)

select * from ConhecimentosTransporte where Sequencial in (880000128702)
--UPDATE  ConhecimentosTransporte set NumConhecto = 83658  where Sequencial in (880000128702)

select * from ConhecimentosTransporte where Sequencial in (880000128701)
--UPDATE  ConhecimentosTransporte set NumConhecto = 83656  where Sequencial in (880000128701)


select ValorNF, SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 605911 and CodUF = 'GO'
--UPDATE  ConhecimentosTransporte set ValorNF = 113937.11 ,  SeguroAverbado = 56.96 where Sequencial = 30000155919


select SituacaoConhecto, * from ConhecimentosTransporte where NumConhecto = 693071 and CodUF = 'MT' -- Cancelado  / Emitido
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Cancelado' where Sequencial = 220000070781
--exec VerificaCTe 220000070781


select SituacaoConhecto, * from ConhecimentosTransporte where NumConhecto = 84706 and CodUF = 'PR' -- Faturado  / Emitido
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Faturado' where Sequencial = 910000017442

select ValorAdiantamento, TarifaFreteMotorista,  * from ConhecimentosTransporte where NumConhecto = 61616 and CodUF = 'GO' and SerieConhecto = '2' 
--UPDATE ConhecimentosTransporte set ValorAdiantamento = 0.00, TarifaFreteMotorista = 0.00 where Sequencial = 730000132496