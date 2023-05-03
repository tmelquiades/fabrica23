casa = float(input('Digite o valor da casa a ser comprada: '))
salario = float(input('Informe o salário do comprador: '))
anos = int(input('Informe a quantidade de anos do financiamento: '))

prestacao = casa/(anos*12) #para calcular a prestaçao por MES
limite = salario*0.3 #30% = 0.3

print('Para pagar uma casa que custa R${:.2f} em {} anos a prestação será de R${:.2f}' .format(casa, anos, prestacao))
#{:.2} para definir as casas decimais do float que serao printadas

if prestacao>limite:
    print('Empréstimo negado.')
else:
    print('Empréstimo aprovado.')