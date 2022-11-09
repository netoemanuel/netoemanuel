algoritmo "Aula 7 - Departamento de transito"
// Função : Exercicio aula 7
// Autor :
// Data : 19/07/2022
// Seção de Declarações
var
  AnoA, AnoN, Idade: Inteiro
inicio
  EscrevaL ("----------------------------")
  EscrevaL ("--DEPARTAMENTO DE TRANSITO--")
  EscrevaL ("----------------------------")
  Escreva  ("Qual o ano da inscricao? ")
  Leia     (AnoA)
  Escreva  ("Qual o ano do seu nascimento? ")
  Leia (AnoN)
  Idade <- (AnoA - AnoN)
  Se (Idade >=18)    entao
     Escreval ("IDADE:", Idade, " ANOS")
     Escreva ("Voce esta APTO(A) ")
  Senao
     Escreval ("IDADE: ", Idade, " ANOS")
     Escreva ("Voce esta INAPTO(A) ")
  FIMSE

  

  
  
fimalgoritmo
