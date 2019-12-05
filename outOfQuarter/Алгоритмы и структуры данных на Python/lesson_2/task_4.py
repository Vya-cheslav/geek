n = int(input('Введите число элементов: '))
i = 1
_sum = 0
for item in range(n):
    _sum += i
    i /= -2

print(_sum)