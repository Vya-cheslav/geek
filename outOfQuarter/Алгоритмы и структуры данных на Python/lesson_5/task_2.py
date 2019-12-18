# 2. Написать программу сложения и умножения двух шестнадцатеричных чисел.
# При этом каждое число представляется как массив, элементы которого — цифры числа.
# Например, пользователь ввёл A2 и C4F. Нужно сохранить их как [‘A’, ‘2’] и [‘C’, ‘4’, ‘F’] соответственно.
# Сумма чисел из примера: [‘C’, ‘F’, ‘1’], произведение - [‘7’, ‘C’, ‘9’, ‘F’, ‘E’].

from collections import deque

words = deque('0123456789abcdef')

def from16to10(string):
    global words
    d = deque(string)
    d.reverse()
    s = 0
    item = 0
    for i in d:
        s += words.index(i)*(16**item)
        item += 1
    return s


def from10to16(s):
    global words
    lit = ''
    item = 0
    while s > 0:
        lit += words[s % 16]
        s = s // 16
    lit = deque(lit)
    lit.reverse()
    return lit


inp1 = input("Введите шестнадцатричное число 1")
inp2 = input("Введите шестнадцатричное число 2")

print(f'Введено шестнадцатричное число {list(inp1)}')
print(f'Введено шестнадцатричное число {list(inp2)}')

inp1 = from16to10(inp1)
inp2 = from16to10(inp2)

res = inp1 + inp2
print(f'Результат сложения {from10to16(res)}')
res = inp1 * inp2
print(f'Результат умножения {from10to16(res)}')