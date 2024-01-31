use LONTANO

select CIOT, * from OrdemEmbarque where NumOrdemEmbarque = 25113584
--UPDATE OrdemEmbarque set CIOT =  'EFRETE PAGO' where NumOrdemEmbarque = 25113584
select CIOT, * from OrdemEmbarque_Log where NumOrdemEmbarque = 25113584 -- EFRETE PAGO	
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT ValorAdiantamento, * from ConhecimentosTransporte where NumConhecto = 608102 and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set ValorAdiantamento = null where Sequencial = 730000132757
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select  * from OrdemEmbarque where NumOrdemEmbarque = 48008446
SELECT  * from ConhecimentosTransporte where CodOrdemEmbarque = 48008446
exec VerificaCTe 480000006260
--exec Grava_CTe 480000006260
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT  * from ConhecimentosTransporte where NumConhecto = 608205 and CodUF = 'GO'
exec VerificaCTe 730000132767
--exec Grava_CTe 730000132767
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT  * from ConhecimentosTransporte where NumConhecto = 606276 and CodUF = 'GO'
--antigo
select * from Veiculos where CodVeiculo = 316426
select * from ConjuntosVeiculo where CodVeiculo = 316426
--novo
select * from Veiculos where CodVeiculo = 213646
select * from ConjuntosVeiculo where CodVeiculo = 213646