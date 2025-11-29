Algoritmo "repita_validar_nota"

Var
   p_nota, s_nota, media : real

Inicio
   repita

      escreval ("Informe a primeira nota")
      leia(p_nota)
   ate (p_nota >=0)e (p_nota <= 10)

   repita
      escreval ("Informe a segunda nota")
      leia(s_nota)
   ate (s_nota >=0)e (s_nota <= 10)

   media <- (p_nota + s_nota)/ 2

   escreval ("A media e:", media)


Fimalgoritmo