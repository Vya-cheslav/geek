year = int(input('Введите год: '))

if year % 4 != 0 or (year % 100 == 0 and year % 400 != 0):
    str = "обычный"
else:
    str = "високосный"

print(f'Введенный год {str}')