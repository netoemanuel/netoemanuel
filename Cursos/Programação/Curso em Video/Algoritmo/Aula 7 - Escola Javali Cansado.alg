algoritmo "Aula 7 - Escola Javali Cansado"
// Função : Exercicio aula 7
// Autor :
// Data : 19/07/2022
// Seção de Declarações
var
   nota, nota1, media : real
inicio
  EscrevaL ("-----------------------------")
  EscrevaL ("----ESCOLA JAVALI CANSADO----")
  EscrevaL ("-----------------------------")
  Escreva  ("Informe a primeira nota: " )
  leia (nota)
  Escreva   ("Informe a segunda nota: " )
  leia (nota1)
  media <- (nota + nota1)/2
  Se  (media >= 7) Entao
     Escreva ("A sua media foi de: ", media, " esta APROVADO!!! ")
  Senao
     Escreva ("A sua media foi de: ", media, " esta REPPROVADO :( !!! ")
  FimSe
fimalgoritmo
