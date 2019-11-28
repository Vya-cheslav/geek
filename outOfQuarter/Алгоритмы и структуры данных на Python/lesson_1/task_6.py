a = int(input('Введите длину отрезка "a": '))
b = int(input('Введите длину отрезка "b": '))
c = int(input('Введите длину отрезка "c": '))

if (a+b)<=c or a+c<=b or b+c<=a:
    str = "не существует"
elif a==b==c:
    str = "равносторонний"
elif a!=b and a!=c and c!=b:
    str = "разносторонний"
else:
    str = "равнобедренный"

print(f"Треугольник {str}")
