#2. Отсортируйте по возрастанию методом слияния одномерный вещественный массив, заданный случайными числами на промежутке [0; 50).
# Выведите на экран исходный и отсортированный массивы.


import random
def sort(arr):
    n = len(arr)
    if n < 2:
        return arr

    l = sort(arr[:n//2])
    r = sort(arr[n//2:])

    i = j = 0
    res = []
    while i < len(l) or j < len(r):
        if not i < len(l):
            res.append(r[j])
            j += 1
        elif not j < len(r):
            res.append(l[i])
            i += 1
        elif l[i] > r[j]:
            res.append(l[i])
            i += 1
        else:
            res.append(r[j])
            j += 1

    return res



print(sort([random.uniform(0, 50) for i in range(30)]))
