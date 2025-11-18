algoritmo "SistemaLanchonete"
var
   produtos: vetor[1..6] de caractere
   precos: vetor[1..6] de real
   qtdVendida: vetor[1..6] de inteiro
   op, cod, qtd: inteiro
   i, totalItens, maisVendido: inteiro
   faturamento, maiorQtd: real
inicio

   produtos[1] <- "Cachorro-quente"
   precos[1] <- 8.50

   produtos[2] <- "X-Burger"
   precos[2] <- 12.00

   produtos[3] <- "X-Salada"
   precos[3] <- 14.50

   produtos[4] <- "Refrigerante"
   precos[4] <- 5.00

   produtos[5] <- "Suco"
   precos[5] <- 6.50

   produtos[6] <- "Batata Frita"
   precos[6] <- 10.00


   para i de 1 ate 6 faca
      qtdVendida[i] <- 0
   fimpara

   repita
      escreval("")
      escreval("=== LANCHONETE ===")
      escreval("1. Cardapio")
      escreval("2. Registrar venda")
      escreval("3. Relatorio de vendas")
      escreval("4. Produto mais vendido")
      escreval("9. Sair")
      escreva("Opcao: ")
      leia(op)

      escolha op
      caso 1
         escreval("")
         escreval("Cod | Produto          | Preco")
         para i de 1 ate 6 faca
            escreval(i:3, " | ", produtos[i]:16, " | R$ ", precos[i]:5:2)
         fimpara

      caso 2
         escreva("Codigo do produto (1-6): ")
         leia(cod)

         se (cod >= 1) e (cod <= 6) entao
            escreva("Quantidade: ")
            leia(qtd)
            qtdVendida[cod] <- qtdVendida[cod] + qtd
            escreval("Venda registrada! Total: R$ ", (precos[cod] * qtd):6:2)
         senao
            escreval("Codigo invalido!")
         fimse

      caso 3
         escreval("")
         escreval("=== RELATORIO DE VENDAS ===")
         escreval("Produto          | Qtd | Total")
         faturamento <- 0
         totalItens <- 0

         para i de 1 ate 6 faca
            escreval(produtos[i]:16, " | ", qtdVendida[i]:3, " | R$ ", (qtdVendida[i] * precos[i]):7:2)
            faturamento <- faturamento + (qtdVendida[i] * precos[i])
            totalItens <- totalItens + qtdVendida[i]
         fimpara

         escreval("")
         escreval("Total de itens vendidos: ", totalItens)
         escreval("Faturamento total: R$ ", faturamento:8:2)

      caso 4
         maiorQtd <- qtdVendida[1]
         maisVendido <- 1

         para i de 2 ate 6 faca
            se qtdVendida[i] > maiorQtd entao
               maiorQtd <- qtdVendida[i]
               maisVendido <- i
            fimse
         fimpara

         escreval("")
         escreval("Produto mais vendido: ", produtos[maisVendido])
         escreval("Quantidade: ", qtdVendida[maisVendido])
         escreval("Faturamento: R$ ", (qtdVendida[maisVendido] * precos[maisVendido]):7:2)
      fimescolha

   ate op = 9

   escreval("Sistema encerrado.")
fimalgoritmo
