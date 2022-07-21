algoritmo "Aula 11 - Estrutra de Repeticao - Quantos entre 0e10"
// Função : Exercicio
// Autor : Emanuel Neto
// Data : 20/07/2022
// Seção de Declarações
var
 C, V, Tot010, SImp,SImpT: inteiro
inicio
      Tot010 <- 0
      Simp <- 0
      Para C <- 1 ate 6  faca
           Escreva ("Digite um valor: ")
           leia (V)
           Se (V >= 0)  e (V <=10) entao
            Tot010 <- Tot010 + 1
                   Se (V%2=1) entao
                   SImp <- SImp + 0
                        Se (V%2=1) entao
                        SImpT <- SImp + 0
                   FimSe
                FimSe
           FimSe
      FimPara
      Escreval  ("Ao  todo foram ", Tot010, " valores entre 0 e 10")
      Escreval  ("Nesse intervalo, a soma de impares foi ", SImp)
      Escreval  ("A soma de todos os impares foi de: ", SImpT)
fimalgoritmo
