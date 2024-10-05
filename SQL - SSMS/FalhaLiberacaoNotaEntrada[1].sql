--Erro Arithmetic overflow error converting numeric to data type numeric.

--erro ocorre devido o limite do campo 'SaldoEstoqueLegal' esta ultrapasando 1 milhao e o odometro tem limite de 999.999 
--isso acontece devido eles sempre darem entrada no mesmo deposito.
--No geral esse erro so ocorre com combustiveis devido as varias bombas.

--Referencias de casos anteriores
--select * from EstoqueProdutos where CodProduto = 117234 and CodFilial = 'CG' and MesAno = '02/2021'
----referencia chamado email(Cadastro Diesel No GS)
--select SaldoEstoqueLegal, * from EstoqueProdutos where CodFilial = 'CG' and MesAno = '03/2024' and (CodProduto = 4740)

----SOLUÇÃO: orientar eles a fazerem uma tranferencia resolvera o problema baseada na SQL abaixo será mostrado qual estoque esta disponivel para transferencia
--Colocar o Mes ano e o Codigo do produto.
select SaldoEstoqueLegal, * from EstoqueProdutos where CodFilial = 'CG' and MesAno = '09/2024' and (CodProduto = 117234)

