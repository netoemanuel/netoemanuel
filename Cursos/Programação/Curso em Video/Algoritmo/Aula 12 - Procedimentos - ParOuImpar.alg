algoritmo "Aula 12 - Procedimentos - ParOuImpar"
// Função : Exercicio
// Autor :  Emanuel
// Data : 21/07/2022
// Seção de Declarações 
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
