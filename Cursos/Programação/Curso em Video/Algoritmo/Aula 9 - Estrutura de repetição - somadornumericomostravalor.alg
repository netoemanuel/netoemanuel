algoritmo "Estrutura de repeti��o - somadornumericomostravalor"
// Fun��o : Exercicios
// Autor : Emanuel Neto
// Data : 19/07/2022
// Se��o de Declara��es
var
cont, N ,S, maior, menor:  inteiro
inicio
cont <-   1
S <- 0
Enquanto (cont <= 10) faca
   EscrevaL ("Digite o", cont, " � valor: ")
   leia (N)
   se (N > maior) entao
      maior <- N
   senao (N < menor)  entao
      menor <- N
   FimSe
   S <- S + N
   cont <- cont + 1
   Escreval ("A soma de todos os valores foi ", S)
   Escreval ("O maior valor digitado foi ", maior)
   Escreval ("O menor valor digitado foi ", menor)
FimEnquanto
fimalgoritmo
