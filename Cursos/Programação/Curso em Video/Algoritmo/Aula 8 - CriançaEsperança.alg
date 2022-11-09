algoritmo "Aula 8 - CriancaEsperanca"
// Função : Exercicio
// Aluno : Emanuel
// Data : 19/07/2022
// Seção de Declarações 
var
   VALOR, D :INTEIRO
inicio
  EscrevaL ("-----------------------------")
  EscrevaL ("------CRIANCA ESPERANCA------")
  EscrevaL ("-----------------------------")
  Escreval ("  Muito obrigado por ajudar"  )
  Escreval (" [1]para doar R$10 "       )
  Escreval (" [2]para doar R$25 "       )
  Escreval (" [3]para doar R$50 "       )
  Escreval (" [4]para doar outros valores ")
  Escreval (" [5]para cancelar a doacao "  )
  Leia (D)
  Escolha D
         Caso 1
              valor <- 10
         Caso 2
              valor <- 25
         Caso 3
              valor <- 50
         Caso 4
              Escreva("Qual valor da doação? R$ ")
              leia (valor)
         Caso 5
              valor <- 0
         FimEscolha
         EscrevaL ("-----------------------------")
         EscrevaL ("  SUA DOACAO FOI DE R$", valor)
         Escreval ("  MUITO OBRIGADO!! <3        ")
         EscrevaL ("-----------------------------")

              
fimalgoritmo
