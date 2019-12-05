i = 0
u = 0
y = 0

a = int(input('Введите число: '))

item = len(str(a))
itr = iter(str(a))
while item>0:
    item -= 1
    t = int(next(itr))
    if t == 0:
        y += 1
    elif t % 2 == 0:
        u += 1
    else:
        i += 1

print(f'нечетных: {i}, четных: {u}, нулей: {y}')
