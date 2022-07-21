algoritmo "Aula 11 - Estrutra de Repeticao - Contagem Regressiva par"
// Função : Exercicio
// Autor : Emanuel Neto
// Data : 20/07/2022
// Seção de Declarações 
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
