# 8. Матрица 5x4 заполняется вводом с клавиатуры, кроме последних элементов строк.
# Программа должна вычислять сумму введенных элементов каждой строки и записывать ее в последнюю ячейку строки.
# В конце следует вывести полученную матрицу.

array = [[input("Веведите элемент 1.1: "), input("Веведите элемент 1.2: "), input("Веведите элемент 1.3: "),
          input("Веведите элемент 1.4: "), 0],
         [input("Веведите элемент 2.1: "), input("Веведите элемент 2.2: "), input("Веведите элемент 2.3: "),
          input("Веведите элемент 2.4: "), 0],
         [input("Веведите элемент 3.1: "), input("Веведите элемент 3.2: "), input("Веведите элемент 3.3: "),
          input("Веведите элемент 3.4: "), 0],
         [input("Веведите элемент 4.1: "), input("Веведите элемент 4.2: "), input("Веведите элемент 4.3: "),
          input("Веведите элемент 4.4: "), 0]

         ]
for i1, val1 in enumerate(array):
    for i2, val2 in enumerate(val1):
        array[i1][4] += val2
        print(f'{val2:>4} |', end='')
    print()