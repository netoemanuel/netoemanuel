algoritmo "Aula 10 -  somador - Repita"
// Fun��o : Exercicios
// Autor : Emanuel Neto
// Data : 20/07/2022
// Se��o de Declara��es
var
   N, S:inteiro
   resp: caracter
inicio
   s <- 0
   Repita

      Escreva ("Digite o valor ==> ")
      leia (N)
      S <- S + N
      Escreva ("Voce quer continuar? [S/N]")
      Leia (resp)
   Ate (resp = "N")
   Escreval ("A soma de todos os valores digitados e ", S)
fimalgoritmo
