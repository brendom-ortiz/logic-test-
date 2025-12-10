Algoritmo "semnome"

tipo pessoa = registro
   nome : caracter
   idade: inteiro
   peso: real

fimregistro

Var
paciente : vetor[1..5] de  pessoa


Inicio

   paciente[1].nome <- "joao"
   paciente[1].idade <- 35
   paciente[1].peso <- 85
   
   escreval("paciente na posicao 1 e :", paciente[1].nome)
    escreval("idade :",  paciente[1].idade)
     escreval("peso:", paciente[1].peso)
   

Fimalgoritmo