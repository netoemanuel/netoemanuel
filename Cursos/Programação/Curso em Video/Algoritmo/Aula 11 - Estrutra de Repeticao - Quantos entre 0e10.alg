algoritmo "Aula 11 - Estrutra de Repeticao - Quantos entre 0e10"
// Fun��o : Exercicio
// Autor : Emanuel Neto
// Data : 20/07/2022
// Se��o de Declara��es
var
 C, V, Tot010: inteiro
inicio
      Tot010 <- 0
      Para C <- 1 ate 6  faca
           Escreva ("Digite um valor: ")
           leia (V)
           Se (V >= 0)  e (V <=10) entao
            Tot010 <- Tot010 + 1
           FimSe
      FimPara
      Escreval  ("Ao  todo foram ", Tot010, " valores entre 0 e 10")
fimalgoritmo
