Algoritmo "VETORES"

Var
   NOME1, NOME2, NOME3, NOME4, NOME5  : CARACTER

   NOMES : VETOR[1..5] DE CARACTER
   POSICAO : INTEIRO
   I : INTEIRO

Inicio

   NOME1 <- "JO"
   NOME2 <- "JU"
   NOME3 <- "JE"
   NOME4 <- "JA"
   NOME5 <- "JI"

   NOMES[1] <- "JO"
   NOMES[2] <- "JU"
   NOMES[3] <- "JE"
   NOMES[4] <- "JA"
   NOMES[5] <- "JI"

   ESCREVAL ("INFORME QUAL A POSICAO DO VETOR: ")
   LEIA(POSICAO)

   // ESCREVAL ("O valor da posicao : ", NOMES[POSICAO])

   // UTILIZANDO O PARA
   PARA I DE 1 ATE 5 FACA
   ESCREVAL (" INFORME O NOME DA POSICAO", I, " : ")
   LEIA(NOMES[I])
   FIMPARA
   
   
   PARA I DE 1 ATE 5 FACA
   ESCREVAL ("O valor da posicao", i ," - ",  NOMES[I])
   FIMPARA
   




Fimalgoritmo