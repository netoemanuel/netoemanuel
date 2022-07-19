algoritmo "Condicional - Idade"
// Função : Exercicios
// Aluno : Emanuel Neto
// Data : 18/07/2022
// Seção de Declarações
var
  ano, nasci, idade: inteiro
inicio
Escreval ("Em que ano estamos? ", ano)
  leia (ano)
escreval  ("Em que ano você nasci? ", nasci)
  leia (nasci)
idade <- ano - nasci
EscrevaL ("Em", ano, " você terá ", idade, " anos.")
se (idade >= 21) entao
   Escreva ("E já tera atingido a maior idade.")
senao
   Escreva ("você ainda não é maior de idade")
FimSe
fimalgoritmo
