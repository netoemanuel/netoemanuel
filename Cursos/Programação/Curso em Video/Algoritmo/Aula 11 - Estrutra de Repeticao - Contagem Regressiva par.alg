algoritmo "Aula 11 - Estrutra de Repeticao - Contagem Regressiva par"
// Fun��o : Exercicio
// Autor : Emanuel Neto
// Data : 20/07/2022
// Se��o de Declara��es 
var
   Cont, V : inteiro
inicio
    Escreva  ("Digite um valor: ")
    leia (V)
    Se (V%2=1) entao
       V <-  V - 1
    FimSe
    para Cont <- V ate 0 passo - 2 faca
         Escreva (Cont)
    FimPara
fimalgoritmo
