# 1. На улице встретились N друзей. Каждый пожал руку всем остальным друзьям (по одному разу). Сколько рукопожатий было?
# Примечание. Решите задачу при помощи построения графа.

# Массив друзей
def get_empty_arr():
    friends = int(input('Сколько друзей встретилось?'))
    arr = [(f'friend_{i + 1}', []) for i in range(friends)]
    return arr


# Рукопожатия для каждого друга (вершины)
def get_empty_graph():
    arr = get_empty_arr()
    friends = len(arr)
    c = 0
    for i, v in enumerate(arr):

        for j in range(friends):
            if i == j:
                continue
            arr[i][1].append(j + 1)
        c += len(arr[i][1])

        print(i + 1, v)
    return arr


# Подсчет рукопожатий
def get_count_pair(graph):
    pair = []
    for i, v in enumerate(graph):
        for j in range(len(v[1])):
            if ((i + 1, v[1][j]) in pair) or ((v[1][j], i + 1) in pair):
                continue
            pair.append(((i + 1, v[1][j])))
    print(f'{len(pair)} рукопожатий у {len(graph)} друзей')


graph = get_empty_graph()
print('*' * 50)
get_count_pair(graph)