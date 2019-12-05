from random import randint

i = randint(0, 100)
n, item = -1, 10

while i != n or item > 0:
    item -= 1
    n = int(input(f'Введите число от 0 до 100: '))
    if n > i:
        print('Ваше число больше загаданного')
    elif n < i:
        print('Ваше число меньше загаданного')
    else:
        print(f'Загадано число = {i}')
        break

if i != n or item == 0:
    print(f'Вы не отгадали число. Загадано число = {i}')