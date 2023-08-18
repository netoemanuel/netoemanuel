exec VerificaCTe 530000154703 -- MG-383787
exec VerificaCTe 940000057665
select * from LONTANO_GSe.dbo.cte where id = '31230711455829000529570000003831028003831020'

exec VerificaCTe 940000057665  -- MG-383102



------------------------------------------------------------------------------------------------------------------------------------

select * from ChequesEmitidos where NumeroCheque = 223960  -- Pagto. CTRC MS-487656
select * from ChequesEmitidos_log where NumeroCheque = 223960
select * from ChequesEmitidos where NumeroCheque = 190133
select * from ChequesEmitidos_log where NumeroCheque = 190133 -- Pagto. CTRC MS-484129

exec VerificaCTe 450000024716

select * from  ConhecimentosRelacaoFretes_Log where  = 45003513
------------------------------------------------------------------------------------------------------------------------------------

select  TarifaFreteEmpresa, * from ConhecimentosTransporte where NumConhecto = 485258 and  CodUF = 'ms'
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 227.24 where Sequencial = 500000005530

------------------------------------------------------------------------------------------------------------------------------------

select  TarifaFreteEmpresa, * from ConhecimentosTransporte where NumConhecto = 383972  and  CodUF = 'MG'
exec VerificaCTe 940000057801
--delete from LONTANO_GSe.dbo.cte_log where id in (21361821,21361820,21361819,21361812,21361811,21361810,21361781,21361780,21361779)
select Status,* from LONTANO_GSe.dbo.cte where Sequencial = 940000057801
--UPDATE  LONTANO_GSe.dbo.cte set Status = 1 where Sequencial = 940000057801