# 4. Определить, какое число в массиве встречается чаще всего.
import random

array = [random.randint(1, 100) for _ in range(20)]
_dict = {}
_max = 0
for i in array:
    if _dict.get(i) == None:
        _dict.update({i: 1})
    else:
        _dict[i] += 1
        _max = max(_max, _dict[i])

print(
    f'Чаже всего встречаются следующие числа: {[key for key, val in _dict.items() if val == _max]}, количество повторов = {_max}')

print(array)
print(_dict)