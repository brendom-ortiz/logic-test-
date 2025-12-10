Algoritmo "semnome"
Var
   numero : vetor[1..3,1..3] de inteiro
   i : inteiro
   j : inteiro


Inicio

   //numero [2,3] <- 10

   //escreval("O valor em linha 2 e coluna 3 e ", numero[2,3])

   para i de 1 ate 3  faca
      para j de 1 ate 3 faca
         escreval("informe linha", i," e coluna", j)
         numero[i,j] <- randi(100)
      fimpara
   fimpara
   



Fimalgoritmo