a = int(input('Введите число "1": '))
b = int(input('Введите число "2": '))
c = int(input('Введите число "3": '))

if a<b<c or a>b>c:
    mean = b
elif b<c<a or b>c>a:
    mean = c
elif c<a<b or c>a>b:
    mean = a


print(f'Средним числом является {mean}')