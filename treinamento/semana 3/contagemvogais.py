#imprima as vogais contidas em cada palavra da tupla

palavras = ('aprender', 'programar', 'linguagem', 'python', 'django')
for p in palavras:
    print(f'\nNa palavra {p} temos ', end='') #end='' serve pra printar sem pular linha
    for letra in p:
        if letra.lower() in 'aeiou':
            print(letra, end='')