algoritmo "Estrutura de repetição - Fatoria"
// Função : Exercicios
// Autor :  Emanuel Neto
// Data : 20/07/2022
// Seção de Declarações 
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
