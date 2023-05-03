peso = []
while len(peso) < 5:
    peso.append(input('Qual o peso da {}ª pessoa? ' .format(len(peso)+1)))
print('O maior peso é de ', max(peso))
print('E o menor peso é de ', min(peso))