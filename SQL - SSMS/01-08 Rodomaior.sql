use RODOMAIOR

select * from ConhecimentosTransporte where NumConhecto = 177642 and CodUF = 'SP'


select * from ChequesEmitidos where NumeroCheque in ( 220953, 220954) order by DataEmissao desc
select * from ChequesEmitidos_log where NumeroCheque in ( 220953, 220954)