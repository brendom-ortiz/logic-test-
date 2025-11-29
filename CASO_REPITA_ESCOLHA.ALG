algoritmo "caso_repita_escolha"

var
   opc: inteiro
inicio

   repita

      escreval ("Escreva o numero que deseja!")
      escreval ("1- Iniciar atendimento")
      escreval ("2- acompanhar meu pedido")
      escreval ("3- falar com atendente")
      leia(opc)

   ate(opc > 0) e (opc <= 3)

   escolha(opc)
   caso 1
      escreval ("1- Iniciar atendimento")
   caso 2
      escreval ("2- acompanhar meu pedido")
   caso 3
      escreval ("3- falar com atendente")
   outrocaso
      escreval("opcao invalida!")
   fimescolha

fimalgoritmo
