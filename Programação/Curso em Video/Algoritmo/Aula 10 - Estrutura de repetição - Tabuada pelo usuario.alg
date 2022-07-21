algoritmo "Estrutura de repetição - Tabuada pelo usuario"
// Função : Exercicios
// Autor : Emanuel Neto
// Data : 19/07/2022
// Seção de Declarações
var
contador, N, R:  inteiro
inicio
contador <-   1
   Escreva ("Quer ver a tabuada de qual numero? ", N)
   Leia (N)
Repita
   EscrevaL (N, " x ",  contador, " = ", R)
   contador <- contador + 1
   R <- N *  contador
Ate (contador > 10)
Escreval ("Terminei de contar")
fimalgoritmo
