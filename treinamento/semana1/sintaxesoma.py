# sintaxe para soma de variaveis

n1 = int(input('Digite um numero: ')) 
n2 = int(input('Digite mais um numero: '))
#sem declarar int, seria considerado str e apenas concatenaria os valores
#ex.: ao inves de somar 3 e 2, printaria 32

sum=n1+n2

print('A soma entre {} e {} é {}' .format(n1, n2, sum))
#ou
#print('O valor da soma entre os números é ', s)