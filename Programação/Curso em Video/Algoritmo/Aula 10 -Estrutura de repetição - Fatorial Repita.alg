algoritmo "Estrutura de repetição - Fatorial Repita"
// Função : Exercicios
// Autor :  Emanuel Neto
// Data : 20/07/2022
// Seção de Declarações
var
    C, N, F : Inteiro
    R: caracter
inicio
Repita
      escreva("Digite um numero: ")
      Leia (N)
      C <- N
      F <- 1
      Repita
        F <- F * C
        C <- C - 1
      Ate (C < 1)
      EscrevaL ("O valor do fatorial de ", N, " e igual a ", F)
      Escreva ("Quer Continuar? [S/N]")
      Leia (R)
      limpaTela
Ate (R - "N")
      
fimalgoritmo
