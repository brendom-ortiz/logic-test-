
algoritmo "ControleVendasBarraca"
// Função: Controlar vendas de frutas por quilo
// Autor:
// Data: 17/11/2025

var
frutas: vetor[1..6] de caractere
contagem1, contagem2, contagem3: vetor[1..6] de real
valorUnitario, totalQuilos: vetor[1..6] de real
faturamento: vetor[1..6] de real
i, melhorQtd, melhorValor: inteiro
totalGeral, maiorQtd, maiorValor, percFat: real

inicio
// Definindo os nomes das frutas
frutas[1] <- "Laranja"
frutas[2] <- "Melao"
frutas[3] <- "Morango"
frutas[4] <- "Figo"
frutas[5] <- "Jaboticaba"
frutas[6] <- "Melancia"

// Entrada de dados
escreval("=== CONTROLE DE VENDAS DA BARRACA ===")
escreval("")

para i de 1 ate 6 faca
   escreval("--- ", frutas[i], " ---")
   escreva("1a contagem (kg): ")
   leia(contagem1[i])
   escreva("2a contagem (kg): ")
   leia(contagem2[i])
   escreva("3a contagem (kg): ")
   leia(contagem3[i])
   escreva("Valor unitario (R$/kg): ")
   leia(valorUnitario[i])
   escreval("")
fimpara

// Calculando totais e faturamento
totalGeral <- 0
para i de 1 ate 6 faca
   totalQuilos[i] <- contagem1[i] + contagem2[i] + contagem3[i]
   faturamento[i] <- totalQuilos[i] * valorUnitario[i]
   totalGeral <- totalGeral + faturamento[i]
fimpara

// Exibindo a planilha completa
escreval("")
escreval("========== PLANILHA DE VENDAS ==========")
escreval("")
escreval("Fruta        | 1a Cont | 2a Cont | 3a Cont | Vl.Uni | Total kg | Faturamento")
escreval("-------------|---------|---------|---------|--------|----------|------------")

para i de 1 ate 6 faca
   escreva(frutas[i])
   // Ajuste de espaçamento
   se compr(frutas[i]) < 12 entao
      escreva("        ")
   senao
      escreva(" ")
   fimse
   escreval("| ", contagem1[i]:7:2, " | ", contagem2[i]:7:2, " | ", contagem3[i]:7:2, " | ", valorUnitario[i]:6:2, " | ", totalQuilos[i]:8:2, " | R$ ", faturamento[i]:8:2)
fimpara

escreval("-------------|---------|---------|---------|--------|----------|------------")
escreval("TOTAL FATURAMENTO: R$ ", totalGeral:8:2)
escreval("")

// Segunda análise - descartando a 2a contagem
escreval("")
escreval("========== ANALISE (SEM 2a CONTAGEM) ==========")
escreval("")

totalGeral <- 0
maiorQtd <- 0
maiorValor <- 0
melhorQtd <- 1
melhorValor <- 1

para i de 1 ate 6 faca
   totalQuilos[i] <- contagem1[i] + contagem3[i]
   faturamento[i] <- totalQuilos[i] * valorUnitario[i]
   totalGeral <- totalGeral + faturamento[i]

   // Verificando melhor desempenho em quantidade
   se totalQuilos[i] > maiorQtd entao
      maiorQtd <- totalQuilos[i]
      melhorQtd <- i
   fimse

   // Verificando melhor desempenho em valor
   se faturamento[i] > maiorValor entao
      maiorValor <- faturamento[i]
      melhorValor <- i
   fimse
fimpara

escreval("Fruta        | 1a Cont | 3a Cont | Total kg | Faturamento | % Fat.")
escreval("-------------|---------|---------|----------|-------------|-------")

para i de 1 ate 6 faca
   percFat <- (faturamento[i] / totalGeral) * 100
   escreva(frutas[i])
   se compr(frutas[i]) < 12 entao
      escreva("        ")
   senao
      escreva(" ")
   fimse
   escreval("| ", contagem1[i]:7:2, " | ", contagem3[i]:7:2, " | ", totalQuilos[i]:8:2, " | R$ ", faturamento[i]:8:2, " | ", percFat:5:2, "%")
fimpara

escreval("-------------|---------|---------|----------|-------------|-------")
escreval("TOTAL FATURAMENTO: R$ ", totalGeral:8:2)
escreval("")
escreval("")
escreval("=== RESULTADOS DA ANALISE ===")
escreval("Produto com melhor desempenho em quantidade/kilos:")
escreval("  -> ", frutas[melhorQtd], " com ", maiorQtd:0:2, " kg")
escreval("")
escreval("Produto com melhor desempenho em valor:")
escreval("  -> ", frutas[melhorValor], " com R$ ", maiorValor:0:2)
escreval("")

escreval("Percentual de cada produto no faturamento:")
para i de 1 ate 6 faca
   percFat <- (faturamento[i] / totalGeral) * 100
   escreval("  ", frutas[i], ": ", percFat:0:2, "%")
fimpara
escreval("")

// Encontrando melhor período
escreval("Analise por periodo de vendas:")
escreval("(Melhor periodo = maior total de vendas)")
// Aqui você pode adicionar lógica adicional se necessário

fimalgoritmo

