algoritmo "Emprestimo Creuza"
// Fun��o : Exercicios
// Aluno : Emanuel Neto
// Data : 18/07/2022
// Se��o de Declara��e
var
    emprestimo, parcela, valorparcela: real
inicio
Escreval ("Qual o valor o valor que gostaria solicitar? ", emprestimo)
leia (emprestimo)
Escreval ("Em quantas parcelas deseja solicitar? ", parcela)
leia  (parcela)
valorparcela <- emprestimo + (emprestimo * 20 / 100)
Escreval ("O valor da parcela � d�: R$ ", valorparcela/10)
fimalgoritmo
