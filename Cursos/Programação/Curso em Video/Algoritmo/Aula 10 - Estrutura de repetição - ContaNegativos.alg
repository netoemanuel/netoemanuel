algoritmo "Estrutura de repeti��o - ContaNegativos"
// Fun��o :Exercicios
// Autor : Emanuel Neto
// Data : 20/07/2022
// Se��o de Declara��es 
var
   N, C, TotN: Inteiro
inicio
      C <- 1
      TotN <- 0
      Repita
            Escreva ("Digite um numero: ")
            leia (N)
            Se (N<0) entao
               TotN <- TotN + 1
            FimSe
            C <- C+ 1
      Ate (C > 5)
      Escreval ("Foram digitados ", TotN, " valores negativos ")
            
fimalgoritmo
