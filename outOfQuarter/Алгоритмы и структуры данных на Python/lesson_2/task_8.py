items = int(input('Введите число: '))
item = int(input('Какое число ищем: '))

i = len(str(items))
itr = iter(str(items))
i, s = len(str(items)), 0
while i>0:
    i -= 1
    t = int(next(itr))
    if t == item:
        s += 1

print(f'найдено {s} повторов')
