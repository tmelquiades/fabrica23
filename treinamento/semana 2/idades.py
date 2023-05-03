from datetime import date

atual = date.today().year
maiores = 0
menores = 0
for pess in range(1,8):
    nasc = int(input('Em que ano a {} pessoa nasceu? ' .format(pess)))
    idade = atual - nasc
    if idade >= 18:
        maiores += 1
    else:
        menores += 1
print('Ao todo tivemos {} pessoas maiores de idade' .format(maiores))
print('E também tivemos {} pessoas menores de idade' .format(menores))