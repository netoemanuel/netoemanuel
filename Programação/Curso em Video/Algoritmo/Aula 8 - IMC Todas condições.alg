algoritmo "Aula 8 - IMC Todas condições"
// Função : Exercicio aula 7
// Autor :
// Data : 19/07/2022
// Seção de Declarações
var
  M, A, IMC: Real
inicio
      Escreva ("Massa (KG): ")
      Leia (M)
      Escreva ("Altura (m): ")
      Leia (A)
      IMC <- M / (A ^ 2)
      Escreval ("IMC: ", IMC:5:2)
//Se (IMC >= 18.5) e (IMC < 25) entao
//   EScreva ("Parabens!! Voce esta do seu peso ideal")
//Senao
//   Escreva ("Voce nao esta nao sua faixa de peso ideal")
//FimSe
      Se (IMC <17) entao
         EscrevaL ("Muito abaixo do peso")
      Senao
           se (IMC >= 17) e (IMC < 18.5) entao
              EscrevaL
           senao
                se (IMC >= 18.5) e (IMC < 25) entao
                   Escreval ("Peso Ideal")
                Senao
                     se (IMC >= 25) e (IMC < 30) entao
                        Escreval ("Sobrepeso")
                     Senao
                          se (IMC >= 30) e (IMC < 35) entao
                              Escreval ("Obesidade")
                          Senao
                                se (IMC >= 35) e (IMC < 40) entao
                                   Escreval ("Obesidade Severa")
                                Senao
                                    Escreval ("Obesidade morbida")
                                    fimse
                               fimse
                          fimse
                     fimse
                fimse
           fimse
fimalgoritmo
