algoritmo "Estrutura de repeti��o - Numero Primo"
// Fun��o : Exercicios
// Autor :  Emanuel Neto
// Data : 20/07/2022
// Se��o de Declara��es
var
    C, N, ContDiv: Inteiro

inicio
      C <- 1
      ContDiv <- 0
      Escreva ("Digite um numero: ")
      Leia (N)
      Repita
        Escreva (C)
        Se (N % C = 0) entao
           ContDiv <- ContDiv + 1
        FimSe
        C <- C + 1
      Ate (C > N)
      Se (ContDiv > 2) entao
         Escreval ("O vaalor ", N, "nao e primo!")
      Senao
         Escreval ("O valor ", N, " e primo!")

     Fimse
fimalgoritmo
