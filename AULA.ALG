Algoritmo "aula"

Var
   pnota, snota, media : real


Inicio
   escreval("Informe sua primeira nota!")
   leia(pnota)

   escreval("Informe sua segunda nota!")
   leia(snota)

   escreval("====================================")

   media <- (pnota + snota) / 2

   Escreval("Sua media e ", media )

   escreval("====================================")

   se (media >= 6) entao
      Escreval("Parabens, Aprovado!")
   fimse

   se (media <= 5) entao
      escreval(" Seu lixo! reprovou!")
   fimse



Fimalgoritmo