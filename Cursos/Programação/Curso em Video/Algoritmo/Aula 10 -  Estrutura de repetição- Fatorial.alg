algoritmo "Estrutura de repeti��o - Fatoria"
// Fun��o : Exercicios
// Autor :  Emanuel Neto
// Data : 20/07/2022
// Se��o de Declara��es 
var
    C, N, F : Inteiro
inicio
      escreva("Digite um numero: ")
      Leia (N)
      C <- N
      F <- 1
      Repita
        F <- F * C
        C <- C - 1
      Ate (C < 1)
      Escreva ("O valor do fatorial de ", N, " e igual a ", F)
fimalgoritmo
