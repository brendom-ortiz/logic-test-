algoritmo "ReservaAssentos"
var
   assentos: vetor[1..10, 1..8] de caractere
   op, fileira, assento: inteiro
   i, j, ocupados, livres: inteiro
inicio

   para i de 1 ate 10 faca
      para j de 1 ate 8 faca
         assentos[i,j] <- "L"
      fimpara
   fimpara

   repita
      escreval("")
      escreval("=== RESERVA DE ASSENTOS ===")
      escreval("1. Mostrar mapa de assentos")
      escreval("2. Reservar assento")
      escreval("3. Liberar assento")
      escreval("4. Estatisticas")
      escreval("9. Sair")
      escreva("Opcao: ")
      leia(op)

      escolha op
      caso 1
         escreval("")
         escreval("   1  2  3  4  5  6  7  8")
         para i de 1 ate 10 faca
            escreva(i:2, " ")
            para j de 1 ate 8 faca
               escreva(assentos[i,j], "  ")
            fimpara
            escreval("")
         fimpara
         escreval("")
         escreval("L = Livre | R = Reservado")

      caso 2
         escreva("Fileira (1-10): ")
         leia(fileira)
         escreva("Assento (1-8): ")
         leia(assento)

         se (fileira >= 1) e (fileira <= 10) e (assento >= 1) e (assento <= 8) entao
            se assentos[fileira, assento] = "L" entao
               assentos[fileira, assento] <- "R"
               escreval("Assento reservado com sucesso!")
            senao
               escreval("Assento ja esta reservado!")
            fimse
         senao
            escreval("Posicao invalida!")
         fimse

      caso 3
         escreva("Fileira (1-10): ")
         leia(fileira)
         escreva("Assento (1-8): ")
         leia(assento)

         se (fileira >= 1) e (fileira <= 10) e (assento >= 1) e (assento <= 8) entao
            se assentos[fileira, assento] = "R" entao
               assentos[fileira, assento] <- "L"
               escreval("Assento liberado com sucesso!")
            senao
               escreval("Assento ja esta livre!")
            fimse
         senao
            escreval("Posicao invalida!")
         fimse

      caso 4
         ocupados <- 0
         livres <- 0
         para i de 1 ate 10 faca
            para j de 1 ate 8 faca
               se assentos[i,j] = "R" entao
                  ocupados <- ocupados + 1
               senao
                  livres <- livres + 1
               fimse
            fimpara
         fimpara
         escreval("")
         escreval("Total de assentos: 80")
         escreval("Assentos ocupados: ", ocupados)
         escreval("Assentos livres: ", livres)
         escreval("Percentual ocupacao: ", (ocupados*100/80):5:2, "%")
      fimescolha

   ate op = 9

   escreval("Sistema encerrado.")
fimalgoritmo
