algoritmo "MatrizNomes"
var
   nomes: vetor[0..8] de caractere
   matriz: vetor[0..2, 0..2] de caractere
   op, pos, pos1, pos2: inteiro
   i, j, sorteio: inteiro
   novoNome: caractere
   usado: vetor[0..8] de logico

funcao sortearPosicao(): inteiro
var
   num: inteiro
inicio
   repita
      num <- randi(9)
   ate nao usado[num]
   usado[num] <- verdadeiro
   retorne num
fimfuncao

inicio

   nomes[0] <- "Jose"
   nomes[1] <- "Maria"
   nomes[2] <- "Luis"
   nomes[3] <- "Pedro"
   nomes[4] <- "Claudia"
   nomes[5] <- "Nena"
   nomes[6] <- "Carla"
   nomes[7] <- "Junior"
   nomes[8] <- "Iva"


   para i de 0 ate 8 faca
      usado[i] <- falso
   fimpara


   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         sorteio <- sortearPosicao()
         matriz[i,j] <- nomes[sorteio]
      fimpara
   fimpara

   repita
      escreval("")
      escreval("=== MATRIZ DE NOMES ===")
      escreval("1. Mostrar matriz atual")
      escreval("2. Trocar elementos")
      escreval("3. Substituir elemento")
      escreval("9. Sair")
      escreva("Opcao: ")
      leia(op)

      escolha op
      caso 1
         escreval("")
         para i de 0 ate 2 faca
            para j de 0 ate 2 faca
               escreva(matriz[i,j]:10)
            fimpara
            escreval("")
         fimpara

      caso 2
         escreva("Posicao 1 (0-8): ")
         leia(pos1)
         escreva("Posicao 2 (0-8): ")
         leia(pos2)

         se (pos1 >= 0) e (pos1 <= 8) e (pos2 >= 0) e (pos2 <= 8) entao
            novoNome <- matriz[pos1 \ 3, pos1 % 3]
            matriz[pos1 \ 3, pos1 % 3] <- matriz[pos2 \ 3, pos2 % 3]
            matriz[pos2 \ 3, pos2 % 3] <- novoNome
            escreval("Elementos trocados!")
         senao
            escreval("Posicoes invalidas!")
         fimse

      caso 3
         escreva("Posicao para substituir (0-8): ")
         leia(pos)
         escreva("Novo nome: ")
         leia(novoNome)

         se (pos >= 0) e (pos <= 8) entao
            matriz[pos \ 3, pos % 3] <- novoNome
            escreval("Nome substituido!")
         senao
            escreval("Posicao invalida!")
         fimse
      fimescolha

   ate op = 9

   escreval("Sistema encerrado.")
fimalgoritmo
