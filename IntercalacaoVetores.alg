algoritmo "IntercalacaoVetores"
// Função: Intercalar dois vetores de 10 elementos

var
   vetor1: vetor[0..9] de inteiro
   vetor2: vetor[0..9] de inteiro
   resultado: vetor[0..19] de inteiro
   i, j: inteiro

inicio
   // Preenchendo o primeiro vetor
   escreval("=== PREENCHENDO VETOR 1 ===")
   para i de 0 ate 9 faca
      escreva("Digite o elemento ", i, " do vetor 1: ")
      leia(vetor1[i])
   fimpara

   // Preenchendo o segundo vetor
   escreval("")
   escreval("=== PREENCHENDO VETOR 2 ===")
   para i de 0 ate 9 faca
      escreva("Digite o elemento ", i, " do vetor 2: ")
      leia(vetor2[i])
   fimpara

   // Intercalando os vetores
   j <- 0
   para i de 0 ate 9 faca
      resultado[j] <- vetor1[i]
      j <- j + 1
      resultado[j] <- vetor2[i]
      j <- j + 1
   fimpara

   // Exibindo o vetor 1
   escreval("")
   escreval("=== VETOR 1 ===")
   escreva("Indices:  ")
   para i de 0 ate 9 faca
      escreva(i:4)
   fimpara
   escreval("")
   escreva("Valores:  ")
   para i de 0 ate 9 faca
      escreva(vetor1[i]:4)
   fimpara

   // Exibindo o vetor 2
   escreval("")
   escreval("")
   escreval("=== VETOR 2 ===")
   escreva("Indices:  ")
   para i de 0 ate 9 faca
      escreva(i:4)
   fimpara
   escreval("")
   escreva("Valores:  ")
   para i de 0 ate 9 faca
      escreva(vetor2[i]:4)
   fimpara

   // Exibindo o resultado da intercalação
   escreval("")
   escreval("")
   escreval("=== VETOR RESULTANTE (INTERCALADO) ===")
   escreva("Indices:  ")
   para i de 0 ate 19 faca
      escreva(i:4)
   fimpara
   escreval("")
   escreva("Valores:  ")
   para i de 0 ate 19 faca
      escreva(resultado[i]:4)
   fimpara
   escreval("")

fimalgoritmo

