algoritmo "Aula 12 - Procedimentos - ProximoFibonacci"
// Função : Exercicio
// Autor :  Emanuel
// Data : 21/07/2022
// Seção de Declarações
var
C, T1, T2, T3 :Inteiro
Procedimento ProximoFibonacci (var A, B: Inteiro)
var C: Inteiro
Inicio
      C := A + B
      Escreva (C)
      A := B
      C := C
FimProcedimento
Inicio
   T1 <- 0
   Escreva (T1)
   T2 <- 1
   Escreva (T2)
   Para C := 3 ate 10 faca
        ProximoFibonacci (T1, T2)
   FimPara
fimalgoritmo
FimAlgoritmo
