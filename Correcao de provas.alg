algoritmo "CorrecaoProvas"
// Função: Corrigir provas de múltipla escolha
// Autor:
// Data: 17/11/2025

var
   gabarito: vetor[1..10] de caractere
   nomes: vetor[1..100] de caractere
   respostas: vetor[1..100, 1..10] de caractere
   notas: vetor[1..100] de real
   numAlunos, i, j, aprovados: inteiro
   acertos: inteiro
   somaNotas, somaAprovados, mediaGeral, mediaAprovados: real
   resposta: caractere

inicio
   // Definindo o gabarito
   escreval("=== SISTEMA DE CORREÇÃO DE PROVAS ===")
   escreval("")
   escreval("Digite o gabarito (3 alternativas por prova):")
   escreval("")

   para i de 1 ate 10 faca
      escreva("Questao ", i, " (A, B ou C): ")
      leia(gabarito[i])
   fimpara

   // Entrada do número de alunos
   escreval("")
   escreva("Quantos alunos fizeram a prova? ")
   leia(numAlunos)
   escreval("")

   // Entrada dos dados dos alunos
   para i de 1 ate numAlunos faca
      escreval("--- ALUNO ", i, " ---")
      escreva("Nome: ")
      leia(nomes[i])
      escreval("Respostas das 10 questoes:")

      para j de 1 ate 10 faca
         escreva("  Questao ", j, ": ")
         leia(respostas[i,j])
      fimpara
      escreval("")
   fimpara

   // Corrigindo as provas
   somaNotas <- 0
   somaAprovados <- 0
   aprovados <- 0

   para i de 1 ate numAlunos faca
      acertos <- 0

      // Contando acertos
      para j de 1 ate 10 faca
         se respostas[i,j] = gabarito[j] entao
            acertos <- acertos + 1
         fimse
      fimpara

      // Calculando nota
      notas[i] <- acertos
      somaNotas <- somaNotas + notas[i]

      // Verificando aprovação
      se notas[i] >= 6 entao
         aprovados <- aprovados + 1
         somaAprovados <- somaAprovados + notas[i]
      fimse
   fimpara

   // Calculando médias
   mediaGeral <- somaNotas / numAlunos

   se aprovados > 0 entao
      mediaAprovados <- somaAprovados / aprovados
   senao
      mediaAprovados <- 0
   fimse

   // Exibindo resultados
   escreval("")
   escreval("========================================")
   escreval("         RESULTADO DAS PROVAS")
   escreval("========================================")
   escreval("")
   escreval("GABARITO: ", gabarito[1], " ", gabarito[2], " ", gabarito[3], " ", gabarito[4], " ", gabarito[5], " ", gabarito[6], " ", gabarito[7], " ", gabarito[8], " ", gabarito[9], " ", gabarito[10])
   escreval("")
   escreval("----------------------------------------")
   escreval("Aluno              | Nota | Resultado")
   escreval("----------------------------------------")

   para i de 1 ate numAlunos faca
      escreva(nomes[i])

      // Ajuste de espaçamento
      para j de 1 ate (18 - compr(nomes[i])) faca
         escreva(" ")
      fimpara

      escreva(" | ", notas[i]:4:1, " | ")

      se notas[i] >= 6 entao
         escreval("Aprovado")
      senao
         escreval("Reprovado")
      fimse
   fimpara

   escreval("----------------------------------------")
   escreval("")
   escreval("=== ESTATISTICAS ===")
   escreval("Media geral das notas: ", mediaGeral:0:2)
   escreval("Media dos alunos aprovados: ", mediaAprovados:0:2)
   escreval("Quantidade de alunos aprovados: ", aprovados)
   escreval("Quantidade de alunos reprovados: ", (numAlunos - aprovados))
   escreval("")

   // Exibindo notas aleatórias (gerando gabarito exemplo)
   escreval("=== DETALHAMENTO DAS RESPOSTAS ===")
   para i de 1 ate numAlunos faca
      escreval("")
      escreval("Aluno: ", nomes[i])
      escreva("Gabarito:  ")
      para j de 1 ate 10 faca
         escreva(gabarito[j], " ")
      fimpara
      escreval("")
      escreva("Respostas: ")
      para j de 1 ate 10 faca
         escreva(respostas[i,j], " ")
      fimpara
      escreval("")
      escreval("Nota: ", notas[i]:0:1, " pontos")
   fimpara

fimalgoritmo

