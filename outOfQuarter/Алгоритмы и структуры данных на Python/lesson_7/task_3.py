#3. Массив размером 2m + 1, где m — натуральное число, заполнен случайным образом.
# Найдите в массиве медиану.
# Медианой называется элемент ряда, делящий его на две равные части: в одной находятся элементы, которые не меньше медианы,
# в другой — не больше медианы.
import random

m = 5
size = 2 * m + 1  # Всегда нечетный массив
arr = [random.randint(0, 10) for _ in range(size)]

print(f'Исходный массив {arr}')
mi = len(arr) // 2 + 1
mi_arr = []

while len(arr) > 0 and mi > 0:
    k = arr[0]
    for j in range(len(arr)):
       if k > arr[j]:
            k = arr[j]
    if k <= arr[0]:
        mi_arr.append(k)
        mi -= 1
        arr.remove(k)

print(f'Медиана {mi_arr[len(mi_arr) - 1]}')
