select * from ConhecimentosTransporte where NumConhecto = 177642 and CodUF = 'SP'


select * from ChequesEmitidos where NumeroCheque in ( 220953, 220954) order by DataEmissao desc
select * from ChequesEmitidos_log where NumeroCheque in ( 220953, 220954)


----------------------------------------------------------------------------------------------------------------------

select ValorNF, SeguroAverbado, * from ConhecimentosTransporte where NumConhecto = 489160  and CodUF = 'MS' -- seguro 5171.41 / NF 10342824.00
--update ConhecimentosTransporte set ValorNF =  67956.02, SeguroAverbado = 33.97 where Sequencial = 250000075351

----------------------------------------------------------------------------------------------------------------------

SELECT CodFilialCriacao FROM OrdemEmbarque WHERE NumOrdemEmbarque = 50011536

 select * from EmissaoOrdemEmbarque WHERE EmissaoOrdemEmbarque.NumOrdemEmbarque = 50011536 --Humberg Agribrasil Com. e Exp Grãos S.A.
 select * from Clientes where CodCliente = 1004700
 --update EmissaoOrdemEmbarque set Cliente = 'Girassol Agricola Ltda' WHERE EmissaoOrdemEmbarque.NumOrdemEmbarque = 50011536




