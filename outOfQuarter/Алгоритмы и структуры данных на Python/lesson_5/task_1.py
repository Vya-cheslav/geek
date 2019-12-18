#1. Пользователь вводит данные о количестве предприятий, их наименования и прибыль за четыре квартала для каждого предприятия.
#Программа должна определить среднюю прибыль (за год для всех предприятий) и отдельно вывести наименования предприятий,
# чья прибыль выше среднего и ниже среднего.


from collections import namedtuple, deque

parts = []
countEnterprise = int(input("Enter count enterprises"))
Enterprise = namedtuple('Enterprise', 'name q1 q2 q3 q4 qs')
for item in range(countEnterprise):
  part = Enterprise(
      name=input(f'Enter {item+1} enterprise '),
      q1=int(input("enter amount sum first quarter")),
      q2=int(input("enter amount sum second quarter")),
      q3=int(input("enter amount sum third quarter")),
      q4=int(input("enter amount sum fourth quarter")),
      qs = 0
  )
  parts.append(part)

s = 0

d = deque()

for i in range(len(parts)):

    parts[i] = parts[i]._replace(qs = parts[i].qs+parts[i].q1+parts[i].q2+parts[i].q3+parts[i].q4)
    s += parts[i].qs

mean = s/len(parts)

for i in range(len(parts)):
    if parts[i].qs > mean:
        d.append((parts[i].name,parts[i].qs))
    else:
        d.appendleft((parts[i].name,parts[i].qs))

print(f'mean eqal {mean}')

for i in d:
    if i[1]>mean:
        print(f'Up mean: "{i[0]}" = {i[1]}')
    else:
        print(f'Down mean: "{i[0]}" = {i[1]}')


