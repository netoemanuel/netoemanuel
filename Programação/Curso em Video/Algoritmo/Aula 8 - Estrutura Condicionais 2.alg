algoritmo "Aula 8 - Estrutura Condicionais 2"
// Função : Exercicio aula 8
// Autor :  Emanuel Neto
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
     Escreva ("A sua media foi de ", media, " esta APROVADO!!! ")
  Senao
     se (media >=5) e (media <7) entao
       EscrevaL ("A sua media foi de ", media, " esta RECUPERAÇÃO!!! ")
     senao
       EscrevaL ("A sua media foi de ", media, " esta REPROVADO :( !!! ")
      Fimse
  FimSe
fimalgoritmo


