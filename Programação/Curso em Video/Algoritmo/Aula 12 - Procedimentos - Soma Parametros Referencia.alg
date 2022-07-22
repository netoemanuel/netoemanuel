algoritmo "Aula 12 - Procedimentos - Soma Parametros Referencia"
// Função : Exercicio
// Autor :  Emanuel
// Data : 21/07/2022
// Seção de Declarações
var
    X, Y: Inteiro
Procedimento Soma (A, B: Inteiro)
Inicio
      A <- A + 1
      B <- B + 2
      EscrevaL ("Valor de A = ", A)
      EscrevaL ("Valor de B = ", B)
      EscrevaL ("Som A + B = ", A + B)
FimProcedimento
inicio
      X <- 4
      Y <- 8
      Soma (X, Y)
      EscrevaL ("Valor de X = ", X)
      EscrevaL ("Valor de Y = ", Y)
fimalgoritmo
