algoritmo "Aula 4 - Operadores L�gicos e Relacionais"
// Fun��o :
// Aluno : Emanuel Neto
// Data : 16/07/2022
// Se��o de Declara��es
var

// Operadores L�gicos
 L1, L2, L3  : real
 EQ, ES, TRI : Logico

inicio
 Escreva ("Digite o primeiro lado: ")
 leia(L1)
 Escreva ("Digite o segundo lado: ")
 leia(L2)
 Escreva ("Digite o terceiro lado: ")
 leia(L3)
 TRI <- (L1 < L2+ L3)  e (L2 < L1+ L3) e (L3 < L1+ L2)
 EQ <- (L1 = L2) e (L2 = L3)
 ES <- (L1 <> L2) e (L2 <> L3)(L1 <> L3)
 Escreval ("Pode formar um triangulo? ", TRI)
 Escreval ("O triangulo e EQUILATERO? ", EQ)
 Escreval ("O triangulo e ESCALENO? ", ES)
 
fimalgoritmo
