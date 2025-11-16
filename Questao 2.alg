algoritmo "Loja de Artesanato - Matriz"
// Loja de artesanato com cálculo de vendas e comissão usando MATRIZ
var
descricao: vetor[0..9] de caractere
dados: vetor[0..1, 0..9] de real  // Linha 0: preços | Linha 1: quantidades
valorTotal: vetor[0..9] de real
i, maisVendidoPos: inteiro
faturamentoTotal, comissao, salarioBase, salarioTotal: real
quantidadeTotal, maisVendidoQtd: real

inicio
// Definindo constantes
salarioBase <- 500.00

// Preenchendo nomes dos produtos
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

// Gerando preços e quantidades aleatórios
escreval("========================================")
escreval("    LOJA DE ARTESANATO - GERACAO DE DADOS")
escreval("========================================")
escreval()

para i de 0 ate 9 faca
   // Linha 0: Gera preço entre 10 e 200
   dados[0, i] <- 10 + (randi(191))
   // Linha 1: Gera quantidade entre 1 e 12
   dados[1, i] <- 1 + (randi(12))
fimpara

// Inicializando variáveis de totais
faturamentoTotal <- 0
quantidadeTotal <- 0
maisVendidoQtd <- 0
maisVendidoPos <- 0

// Calculando valores totais por produto
para i de 0 ate 9 faca
   valorTotal[i] <- dados[0, i] * dados[1, i]
   faturamentoTotal <- faturamentoTotal + valorTotal[i]
   quantidadeTotal <- quantidadeTotal + dados[1, i]

   // Verificando produto mais vendido
   se dados[1, i] > maisVendidoQtd entao
      maisVendidoQtd <- dados[1, i]
      maisVendidoPos <- i
   fimse
fimpara

// Calculando comissão
comissao <- faturamentoTotal * 0.5
salarioTotal <- salarioBase + comissao

// ===========================================
// LETRA A: Resumo de quantidade e faturamento
// ===========================================
escreval()
escreval("========================================")
escreval("  A) RESUMO DAS VENDAS")
escreval("========================================")
escreval("Quantidade total de itens vendidos: ", quantidadeTotal, " unidades")
escreval("Faturamento total das vendas: R$ ", faturamentoTotal:6:2)
escreval()

// ===========================================
// LETRA B: Detalhamento por produto
// ===========================================
escreval("========================================")
escreval("  B) DETALHAMENTO POR PRODUTO")
escreval("========================================")
escreval("Pos. | Produto                  | Preco Un. | Qtd. | Total")
escreval("-----+---------------------------+-----------+------+----------")

para i de 0 ate 9 faca
   escreva(i:4, " | ")
   escreva(descricao[i]:25, " | R$ ")
   escreva(dados[0, i]:6:2, " | ")
   escreva(dados[1, i]:4, " | R$ ")
   escreval(valorTotal[i]:7:2)
fimpara

escreval()

// ===========================================
// LETRA C: Faturamento total e comissão
// ===========================================
escreval("========================================")
escreval("  C) REMUNERACAO DO VENDEDOR")
escreval("========================================")
escreval("Faturamento Total: R$ ", faturamentoTotal:6:2)
escreval("Salario Base: R$ ", salarioBase:6:2)
escreval("Comissao (50% do faturamento): R$ ", comissao:6:2)
escreval("----------------------------------------")
escreval("SALARIO TOTAL A RECEBER: R$ ", salarioTotal:6:2)
escreval()

// ===========================================
// LETRA D: Produto mais vendido
// ===========================================
escreval("========================================")
escreval("  D) PRODUTO MAIS VENDIDO")
escreval("========================================")
escreval("Produto: ", descricao[maisVendidoPos])
escreval("Quantidade vendida: ", maisVendidoQtd, " unidades")
escreval("Posicao no vetor: ", maisVendidoPos)
escreval("Valor unitario: R$ ", dados[0, maisVendidoPos]:6:2)
escreval("========================================")

fimalgoritmo
