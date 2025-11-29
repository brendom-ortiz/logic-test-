Algoritmo "enquanto_validar nota"

Var
p_nota, s_nota, media : real

Inicio

escreval ("Informe a primeira nota")
leia(p_nota)

enquanto (p_nota < 0) ou (p_nota > 10) faca
escreval ("Nota invalida")
escreval ("Informe a primeira nota:")
leia(p_nota)

fimenquanto

escreval ("Inform a segunda nota")
leia(s_nota)

enquanto (s_nota < 0) ou (s_nota > 10) faca
escreval ("Nota invalida")
escreval ("Informe a primeira nota:")
leia(s_nota)


fimenquanto

media <- (p_nota + s_nota)/ 2

escreval ("A media e:", media)


Fimalgoritmo