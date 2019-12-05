item1 = int(input('Введите число1: '))
item2 = int(input('Введите число2: '))

item , s1 = len(str(item1)), 0
itr = iter(str(item1))
while item>0:
    item -= 1
    s1 += int(next(itr))

item , s2 = len(str(item2)), 0
itr = iter(str(item2))
while item>0:
    item -= 1
    s2 += int(next(itr))


if s1==s2:
    print(f'Числа "{item1}" и "{item2}" равны. Их суммы равны "{s1}" и "{s2}"')
elif s1>s2:
    print(f'Числа "{item1}" не равны "{item2}". Их суммы равны "{s1}" больше "{s2}"')
else:
    print(f'Числа "{item1}" не равны "{item2}". Их суммы равны "{s1}" меньше "{s2}"')
