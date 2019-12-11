#2. Написать два алгоритма нахождения i-го по счёту простого числа. Функция нахождения простого числа должна принимать на вход натуральное и возвращать соответствующее простое число. Проанализировать скорость и сложность алгоритмов.
#Первый — с помощью алгоритма «Решето Эратосфена».
#Примечание. Алгоритм «Решето Эратосфена» разбирался на одном из прошлых уроков. Используйте этот код и попробуйте его улучшить/оптимизировать под задачу.
#Второй — без использования «Решета Эратосфена».
#Примечание. Вспомните классический способ проверки числа на простоту.


# Вариант1
#сложность O(n Log (log n))
def option1_is_prime(n=40):
    array = [i for i in range(n + 1)]
    array[1] = 0

    for i in range(2, n + 1):
        if array[i] != 0:
            if array[
                i] == n:  # Улучшение. Так как нам надо только определить "является ли число простым", то при проверке числа последний цикл игнорируем))
                return True
            j = i * 2
            while j < n + 1:
                array[j] = 0
                j += i
    #print(array)
    return n in array


#option1_is_prime(100)

#(venv) C:\Users\Вячеслав\PycharmProject\helloworld\venv\algorithm\lesson_4>python -m timeit -n 100 -s "import task_2"
#100 loops, best of 5: 23 nsec per loop

#(venv) C:\Users\Вячеслав\PycharmProject\helloworld\venv\algorithm\lesson_4>python -m timeit -n 1000 -s "import task_2"
#1000 loops, best of 5: 7.3 nsec per loop

#(venv) C:\Users\Вячеслав\PycharmProject\helloworld\venv\algorithm\lesson_4>python -m timeit -n 10000 -s "import task_2"
#10000 loops, best of 5: 7.24 nsec per loop



# Вариант2
#Сложность O(n)
def option2_is_prime(n):
    d = 2
    while n % d != 0:
        d += 1
    return d == n


option2_is_prime(100)

#(venv) C:\Users\Вячеслав\PycharmProject\helloworld\venv\algorithm\lesson_4>python -m timeit -n 100 -s "import task_2"
#100 loops, best of 5: 22 nsec per loop

#(venv) C:\Users\Вячеслав\PycharmProject\helloworld\venv\algorithm\lesson_4>python -m timeit -n 1000 -s "import task_2"
#1000 loops, best of 5: 7.5 nsec per loop

#(venv) C:\Users\Вячеслав\PycharmProject\helloworld\venv\algorithm\lesson_4>python -m timeit -n 10000 -s "import task_2"
#10000 loops, best of 5: 7.24 nsec per loop
