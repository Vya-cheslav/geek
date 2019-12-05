n = int(input('Введите натуральное число: '))
_str = ''
for i in range(n):
    _str = f'{i + 1} {"" if _str == "" else "+"} {_str}'
    _eval = f'{_str}== {i+1}*{i+1+ 1}/2'

    print(_eval, f'Значения правой и левой части {"равны" if eval(_eval) else "не равны"}')