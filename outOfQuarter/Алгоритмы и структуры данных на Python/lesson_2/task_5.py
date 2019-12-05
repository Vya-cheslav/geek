s = ''
for i in range(32, 128):

   s = f'{i}:{chr(i)} {"|" if s != "" else ""} {s}'

   if i % 10 == 0:
       print(s)
       s = ''

if i % 10 != 0:
    print(s)
    s = ''