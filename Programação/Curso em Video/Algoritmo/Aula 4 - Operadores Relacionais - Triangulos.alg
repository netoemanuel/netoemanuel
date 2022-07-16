algoritmo "Aula 4 - Operadores Lógicos e Relacionais"
// Função :
// Aluno : Emanuel Neto
// Data : 16/07/2022
// Seção de Declarações
var

// Operadores Lógicos
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
