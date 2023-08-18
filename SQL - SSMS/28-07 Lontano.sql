use LONTANO


select * from ConhecimentosTransporte where NumConhecto = 182720 and CodUF = 'PR'
select CIOT,* from OrdemEmbarque where NumOrdemEmbarque = 47017873
exec MonitoraMDFe 47017873

select Pedagio,  * from ConhecimentosTransporte where NumConhecto = 676715 and CodUF = 'MT'  -- 680042

select  NumCartaoValePedagio, * from ConhecimentosTransporte where NumConhecto = 679314 and CodUF = 'MT'

SELECT * FROM CartaFrete WHERE Sequencial = 220000068401

SELECT TOP (1) codViagemPamcard, codViagemRepom FROM CartaFrete WHERE codViagemPamcard IS NOT NULL AND Sequencial = 500000005703 ORDER BY dataCriacao DESC
SELECT TOP (1) codViagemPamcard, codViagemRepom,* FROM CartaFrete WHERE codViagemPamcard IS NOT NULL AND Sequencial = 220000068401 ORDER BY dataCriacao DESC


select  * from ConhecimentosTransporte where NumConhecto = 588052 and CodUF = 'GO'