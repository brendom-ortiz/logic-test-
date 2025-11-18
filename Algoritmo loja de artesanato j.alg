algoritmo "Loja de Artesanato"

var
descricao: vetor[0..9] de caractere
precoUnitario: vetor[0..9] de real
quantidade: vetor[0..9] de inteiro
valorTotal: vetor[0..9] de real
i: inteiro
faturamentoTotal, comissao, salarioBase, salarioTotal: real
quantidadeTotal: inteiro
maisVendidoQtd, maisVendidoPos: inteiro

inicio

salarioBase <- 500.00


descricao[0] <- "Cesta de Vime"
descricao[1] <- "Vaso de Ceramica"
descricao[2] <- "Tapete Artesanal"
descricao[3] <- "Quadro Decorativo"
descricao[4] <- "Almofada Bordada"
descricao[5] <- "Luminaria Rustica"
descricao[6] <- "Porta-Retratos"
descricao[7] <- "Escultura em Madeira"
descricao[8] <- "Jogo de Toalhas"
descricao[9] <- "Chaveiro Artesanal"


escreval("========================================")
escreval("    LOJA DE ARTESANATO - GERACAO DE DADOS")
escreval("========================================")
escreval()

para i de 0 ate 9 faca

   precoUnitario[i] <- 10 + (randi(191))

   quantidade[i] <- 1 + (randi(12))
fimpara


faturamentoTotal <- 0
quantidadeTotal <- 0
maisVendidoQtd <- 0
maisVendidoPos <- 0


para i de 0 ate 9 faca
   valorTotal[i] <- precoUnitario[i] * quantidade[i]
   faturamentoTotal <- faturamentoTotal + valorTotal[i]
   quantidadeTotal <- quantidadeTotal + quantidade[i]


   se quantidade[i] > maisVendidoQtd entao
      maisVendidoQtd <- quantidade[i]
      maisVendidoPos <- i
   fimse
fimpara


comissao <- faturamentoTotal * 0.5
salarioTotal <- salarioBase + comissao


escreval()
escreval("========================================")
escreval("  A) RESUMO DAS VENDAS")
escreval("========================================")
escreval("Quantidade total de itens vendidos: ", quantidadeTotal, " unidades")
escreval("Faturamento total das vendas: R$ ", faturamentoTotal:6:2)
escreval()

escreval("========================================")
escreval("  B) DETALHAMENTO POR PRODUTO")
escreval("========================================")
escreval("Pos. | Produto                  | Preco Un. | Qtd. | Total")
escreval("-----+---------------------------+-----------+------+----------")

para i de 0 ate 9 faca
   escreva(i:4, " | ")
   escreva(descricao[i]:25, " | R$ ")
   escreva(precoUnitario[i]:6:2, " | ")
   escreva(quantidade[i]:4, " | R$ ")
   escreval(valorTotal[i]:7:2)
fimpara

escreval()

escreval("========================================")
escreval("  C) REMUNERACAO DO VENDEDOR")
escreval("========================================")
escreval("Faturamento Total: R$ ", faturamentoTotal:6:2)
escreval("Salario Base: R$ ", salarioBase:6:2)
escreval("Comissao (50% do faturamento): R$ ", comissao:6:2)
escreval("----------------------------------------")
escreval("SALARIO TOTAL A RECEBER: R$ ", salarioTotal:6:2)
escreval()

escreval("========================================")
escreval("  D) PRODUTO MAIS VENDIDO")
escreval("========================================")
escreval("Produto: ", descricao[maisVendidoPos])
escreval("Quantidade vendida: ", maisVendidoQtd, " unidades")
escreval("Posicao no vetor: ", maisVendidoPos)
escreval("Valor unitario: R$ ", precoUnitario[maisVendidoPos]:6:2)
escreval("========================================")

fimalgoritmo
