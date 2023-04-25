# sorteio
#importar biblioteca random para conseguir valor aleatorio para o sorteio
import random

a1=str(input('Informe o nome do primeiro aluno: '))
a2=str(input('Informe o nome do segundo aluno: '))
a3=str(input('Informe o nome do terceiro aluno: '))
lista = [a1, a2, a3]
#random.choice() : metodo que retorna um elemento aleatorio de uma sequencia (lista)
sorteado = random.choice(lista) 
print('O aluno sorteado foi {}' .format(sorteado))