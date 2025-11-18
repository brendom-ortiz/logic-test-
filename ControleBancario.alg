algoritmo "ControleBancario"
var
   cod: vetor[1..5] de inteiro
   conta: vetor[1..5] de caractere
   saldoIni, entrada, saida, saldoAtu: vetor[1..5] de real
   op, numConta, tipo: inteiro
   valor: real
   i: inteiro
inicio

   cod[1] <- 1
   conta[1] <- "Brasil A"
   saldoIni[1] <- 1000.00

   cod[2] <- 2
   conta[2] <- "Caixa 01"
   saldoIni[2] <- 500.00

   cod[3] <- 3
   conta[3] <- "Santander"
   saldoIni[3] <- 2300.00

   cod[4] <- 4
   conta[4] <- "Itau Centro"
   saldoIni[4] <- 45.00

   cod[5] <- 5
   conta[5] <- "Brasil MG"
   saldoIni[5] <- 92345.21

   para i de 1 ate 5 faca
      entrada[i] <- 0
      saida[i] <- 0
      saldoAtu[i] <- saldoIni[i]
   fimpara

   repita
      escreval("")
      escreval("=== CONTROLE BANCARIO ===")
      escreval("1. Listar Resumo")
      escreval("2. Realizar Credito")
      escreval("3. Realizar Debito")
      escreval("9. Sair")
      escreva("Opcao: ")
      leia(op)

      escolha op
      caso 1
         escreval("")
         escreval("Cod | Conta          | Saldo Ini | Entradas | Saidas   | Saldo Atu")
         para i de 1 ate 5 faca
            escreval(cod[i]:3, " | ", conta[i]:14, " | ", saldoIni[i]:9:2, " | ", entrada[i]:8:2, " | ", saida[i]:8:2, " | ", saldoAtu[i]:9:2)
         fimpara

      caso 2
         escreva("Numero da conta (1-5): ")
         leia(numConta)
         se (numConta >= 1) e (numConta <= 5) entao
            escreva("Valor do credito: ")
            leia(valor)
            entrada[numConta] <- entrada[numConta] + valor
            saldoAtu[numConta] <- saldoAtu[numConta] + valor
            escreval("Credito realizado!")
         senao
            escreval("Conta invalida!")
         fimse

      caso 3
         escreva("Numero da conta (1-5): ")
         leia(numConta)
         se (numConta >= 1) e (numConta <= 5) entao
            escreva("Valor do debito: ")
            leia(valor)
            se valor <= saldoAtu[numConta] entao
               saida[numConta] <- saida[numConta] + valor
               saldoAtu[numConta] <- saldoAtu[numConta] - valor
               escreval("Debito realizado!")
            senao
               escreval("Saldo insuficiente!")
            fimse
         senao
            escreval("Conta invalida!")
         fimse
      fimescolha

   ate op = 9

   escreval("Sistema encerrado.")
fimalgoritmo
