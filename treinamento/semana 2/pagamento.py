#calcular o valor a ser pago por produto, considerando o seu preço normal e condição de pagamento
#a vista: 10% desconto
#a vista no cartao: 5% desconto
#em ate 2x: preço normal
#3x ou mais no cartao: 20% juros

valor = float(input('Qual o valor do produto? '))
print('''Se você pagar à vista com dinheiro ou pix, você ganha 10% de desconto
À vista no cartão, você ganha 5% de desconto
Dividindo no cartão em até 2x, você paga o preço normal
Dividindo em 3x ou mais no cartão, você terá que pagar 20% de juros
Digite: [1] para à vista no dinheiro/pix
        [2] para à vista no cartão
        [3] para no cartão em 2x
        [4] para no cartão em 3x ou mais''')
pagamento = int(input('Qual será a forma de pagamento? '))

if pagamento == 1:
    total = valor - (valor*0.1)
elif pagamento == 2:
    total = valor - (valor*0.05)
elif pagamento == 3:
    total = valor
    parcela = total / 2
    print('Sua compra será parcelada em 2x de R${:.2f}' .format(parcela))
elif pagamento == 4:
    total = valor + (valor*0.2)
    totalparcela = int(input('Serão quantas parcelas? '))
    parcela = total / totalparcela
    print('Sua compra será parcelada em {}x de R${:.2f} COM JUROS' .format(totalparcela))
else:
    print('Digite um valor válido, por favor.')

print('O valor total a ser pago é {:.2f}' .format(total))