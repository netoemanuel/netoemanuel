EXEC GeraPlanilhaFretesReceberCliente  1006801,  'S',  '1990/01/01',  '2023/12/31',  'Faturado'

--Projeto:
--EXEC GeraPlanilhaFretesReceberCliente @CodCliente = 1006801, @Matriz = 'S', @dtInicial = '1990/01/01', @dtFinal = '2023/12/31', @Tipo = 'Faturado'
--sequencia 
--GeraPlanilhaFretesReceberCliente --> RelFretesReceberCliente --> ConhecimentosTransporte --> ConhecimentosContasReceber_Saldo --> EstadiasFaturar