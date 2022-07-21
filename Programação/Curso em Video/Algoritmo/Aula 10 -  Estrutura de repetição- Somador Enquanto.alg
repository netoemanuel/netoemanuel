algoritmo "Aula 10 -  somador - Enquanto"
// Função : Exercicios
// Autor : Emanuel Neto
// Data : 20/07/2022
// Seção de Declarações 
var
   N, S:inteiro
   resp: caracter
inicio
   s <- 0
   resp <- "S"
   Enquanto (resp <= "S") faca
      Escreva ("Digite o valor ==> ")
      leia (N)
      S <- S + N
      Escreva ("Voce quer continuar? [S/N]")
      Leia (resp)
   fimEnquanto
   Escreval ("A soma de todos os valores digitados e ", S)
fimalgoritmo
