algoritmo "MenorNotaAluno"
var
   notas: vetor[1..10, 1..3] de real
   i, j, provaMenor: inteiro
   menorNota: real
inicio

   para i de 1 ate 10 faca
      para j de 1 ate 3 faca
         notas[i,j] <- randi(10) + (rand % 1)
      fimpara
   fimpara

   escreval("=== RELATORIO DE MENOR NOTA POR ALUNO ===")
   escreval("")

   para i de 1 ate 10 faca
      menorNota <- notas[i,1]
      provaMenor <- 1

      para j de 2 ate 3 faca
         se notas[i,j] < menorNota entao
            menorNota <- notas[i,j]
            provaMenor <- j
         fimse
      fimpara

      escreval("Aluno ", i, ": Menor nota = ", menorNota:4:2, " na Prova ", provaMenor)
   fimpara
fimalgoritmo
