algoritmo "Aula 12 - Procedimentos - Escopo"
// Fun��o : Exercicio
// Autor :  Emanuel
// Data : 21/07/2022
// Se��o de Declara��es
var
   N: Inteiro
Procedimento ParOuImpar (V: Inteiro)
inicio
      Se (V%2 = 0) entao
         EscrevaL ("O numero ", V, " e PAR")
      SeNao
         EscrevaL ("O numero ", V, " e IMPAR")
      FimSe
FimProcedimento
Inicio
      EscrevaL ("Digite um numero: ")
      Leia (N)
      ParOuImpar (N)
fimalgoritmo
