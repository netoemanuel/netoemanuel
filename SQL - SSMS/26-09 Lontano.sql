use LONTANO


select * from ConhecimentosTransporte where NumConhecto = 389682 and CodUF = 'MG'
exec VerificaCTe 270000074620
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 270000074620 and ID > 22157105

select ValorNF, SeguroAverbado, Outros,* from ConhecimentosTransporte where NumConhecto = 389650 and CodUF = 'MG'
--UPDATE ConhecimentosTransporte set ValorNF = 71086.24, SeguroAverbado = 35.54  where Sequencial = 980000027594


select CodFornecedor, * from ConhecimentosTransporte where NumConhecto = 185721 and CodUF = 'PR'
--update ConhecimentosTransporte set CodFornecedor = 1000001 where Sequencial = 640000056204

select * from ConhecimentosTransporte where NumConhecto = 12571 and CodUF = 'MS' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte Set TarifaFreteEmpresa = 19.8085 where NumConhecto = 12571 and CodUF = 'MS' and SerieConhecto = '2'

select TarifaFreteEmpresa, * from ConhecimentosTransporte where NumConhecto = 498181 and CodUF = 'MS'
--UPDATE ConhecimentosTransporte Set TarifaFreteEmpresa = 56.2500 where Sequencial = 500000006012

select TarifaFreteEmpresa, * from ConhecimentosTransporte where NumConhecto = 498363 and CodUF = 'MS'
--UPDATE ConhecimentosTransporte Set TarifaFreteEmpresa =  378.7144 where Sequencial = 250000076705

select  * from ConhecimentosTransporte where NumConhecto = 389650 and CodUF = 'MG'
exec VerificaCTe 980000027594


select  * from ConhecimentosTransporte where NumConhecto = 389752 and CodUF = 'MG'
exec VerificaCTe 730000132013
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 730000132013
--delete from LONTANO_GSe.dbo.cte where Sequencial = 730000132013 
select * from LONTANO_GSe.dbo.cte_log where Sequencial = 730000132013
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 730000132013 and ID < 22161912
exec Grava_CTe 730000132013