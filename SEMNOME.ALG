Algoritmo "semnome"
Var

   nome : vetor[1..4] de caracter
   lugar : inteiro
   i : inteiro

Inicio

   //nome [1] <- "PE"
   //nome [2] <- "PI"
   //nome [3] <- "PO"
   //nome [4] <- "PU"

   //escreva("qual o valor da posicao que voce quer")
   //leia(lugar)

   //escreval("valor da posicao 3 e:  ",nome[lugar])
   
   para i de 1 ate 4 faca
      escreval("informe o nome da posicao" , i, " : ")
      leia(nome[i])
   fimpara
   para i de 1 ate 4 faca
      escreval("O valor da posicao", i ,  " e ", nome[i])
   fimpara



Fimalgoritmo