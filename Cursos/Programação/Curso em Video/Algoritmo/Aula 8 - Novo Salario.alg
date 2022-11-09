algoritmo "Aula 8 - Novo Salario"
// Função : Exercicio
// Aluno : Emanuel Neto
// Data : 19/07/2022
// Seção de Declarações 
var
  Nome: caractere
  Dep : inteiro
  Sal,Nsal : real
inicio
      EscrevaL ("Qual o nome do Funcionario? ")
      Leia (Nome)
      EscrevaL ("Qual o salario do Funcionario? ")
      Leia (Sal)
      EscrevaL ("Qual e a quantidade de dependentes? ")
      Leia (Dep)
      Escolha Dep
              Caso 0
                   Nsal <- Sal + (Sal*5/100)
              Caso 1,2,3
                   Nsal <- Sal + (Sal*10/100)
              Caso 4,5,6
                   Nsal <- Sal + (Sal*15/100)
              Outrocaso
                   Nsal <- Sal + (Sal*18/100)
      FimEscolha
      Escreva ("O novo salario de ",Nome, "sera de RS: ", Nsal:5:2)


fimalgoritmo
