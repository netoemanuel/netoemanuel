algoritmo "Aula 11 - Estrutura de repedicao - Repita pergunte "
// Função :Exercicio
// Autor : Emanuel Neto
// Data : 20/07/2022
// Seção de Declarações
var
   C, S, N: inteiro
   Resp: caractere
inicio
      S  <- 0
      Repita
           Escreva ("Digite um valor: ")
           leia (N)
           S <- S + N
           Escreva ("Quer Continuar? [S/N]")
           Leia (Resp)
      Ate (Resp = "N")
      Escreva ("A soma dos valores e ", S)
fimalgoritmo
