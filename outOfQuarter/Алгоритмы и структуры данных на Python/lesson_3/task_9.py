# 9. Найти максимальный элемент среди минимальных элементов столбцов матрицы.
# Примечание: попытайтесь решить задания без использования функций max, min, sum, sorted и их аналогов,
# в том числе написанных самостоятельно.

array = [[1, 2, 3, 4, 5],
         [1, 2, 3, 4, 5],
         [4, 3, 4, 4, 4],
         [1, 2, 3, 4, 5],
         [9, 8, 7, 5, 4],
         [9, 8, 7, 5, 4]
         ]

rows = len(array)
columns = len(array[0])

new_array = [0] * columns
for col in range(0, columns - 1):
    _min = 99999
    for row in range(0, rows - 1):
        val = array[col][row]
        if val < _min:
            _min = val
    new_array[col] = _min

_max = new_array[0]
for i, val in enumerate(new_array):
    if val > _max:
        _max = val

print(f'Максимальный элемент среди минимальных элементов столбцов матрицы равен "{_max}".')