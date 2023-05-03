hmaisvelho = 'nenhum homem'  #variavel armazena nome do homem mais velho
hidade = 0 #idade do homem
m20 = 0 #mulheres com menos de 20 anos
soma = 0 #soma para fazer a media das idades


for a in range(1,5):
    print(f'-----{a}ª pessoa-----')
    nome = str(input('Digite o nome: ')).strip()
    idade = int(input('Informe a idade: '))
    sexo = str(input('Informe o sexo [F ou M]: ')).strip().upper()
    soma += idade
    if sexo=='M':
        if idade > hidade:
            hidade = idade
            hmaisvelho = nome
    if sexo=='F':
        if idade<20:
            m20+=1
media = soma/4 #media das idades

print('A média da idade do grupo é de {}' .format(media))
print('{} é o homem mais velho, com {} anos' .format(hmaisvelho, hidade))
print('{} mulheres têm menos de 20 anos' .format(m20))