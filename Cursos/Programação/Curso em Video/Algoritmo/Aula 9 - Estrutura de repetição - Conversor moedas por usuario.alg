algoritmo "Conversor moedas por usuario"
// Função : Exercicios
// Aluno : Emanuel Neto
// Data : 18/07/2022
// Seção de Declaraçõe
var
    D, R: real
    C,Q : inteiro
inicio
   C <-1
   Escreva ("Quantos vezes voce quer converter?", Q)
   leia(Q)
   Enquanto (C <= Q) faca
            Escreval ("Qual o valor em R$? ")
            leia (R)
            D <- (R/2.20)
            Escreval ("o Valor Convertido e U$$", D:5:2)
            C <- C + 1
   FimEnquanto


fimalgoritmo
