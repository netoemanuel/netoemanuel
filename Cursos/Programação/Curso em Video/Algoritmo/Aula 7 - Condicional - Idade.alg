algoritmo "Condicional - Idade"
// Fun��o : Exercicios
// Aluno : Emanuel Neto
// Data : 18/07/2022
// Se��o de Declara��es
var
  ano, nasci, idade: inteiro
inicio
Escreval ("Em que ano estamos? ", ano)
  leia (ano)
escreval  ("Em que ano voc� nasci? ", nasci)
  leia (nasci)
idade <- ano - nasci
EscrevaL ("Em", ano, " voc� ter� ", idade, " anos.")
se (idade >= 21) entao
   Escreva ("E j� tera atingido a maior idade.")
senao
   Escreva ("voc� ainda n�o � maior de idade")
FimSe
fimalgoritmo
