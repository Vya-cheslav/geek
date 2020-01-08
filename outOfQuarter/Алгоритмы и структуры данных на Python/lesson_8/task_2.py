#2. Доработать алгоритм Дейкстры (рассматривался на уроке), 
# чтобы он дополнительно возвращал список вершин, которые необходимо обойти.


g = [
    [0, 0, 1, 1, 9, 0, 0, 0],
    [0, 0, 9, 4, 0, 0, 7, 0],
    [0, 9, 0, 0, 3, 0, 6, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 1, 0],
    [0, 0, 0, 0, 0, 0, 5, 0],
    [0, 0, 7, 0, 8, 1, 0, 0],
    [0, 0, 0, 0, 0, 1, 2, 0]

]


def dijkstra(graph, start):
    inf = float('inf')
    
    length = len(graph)
    is_visited = [False] * length
    cost = [inf] * length
    arr_vertex = [[inf, inf, inf, inf, inf, inf, inf,inf],
                  [inf, inf, inf, inf, inf, inf, inf,inf],
                  [inf, inf, inf, inf, inf, inf, inf,inf],
                  [inf, inf, inf, inf, inf, inf, inf,inf],
                  [inf, inf, inf, inf, inf, inf, inf,inf],
                  [inf, inf, inf, inf, inf, inf, inf,inf],
                  [inf, inf, inf, inf, inf, inf, inf,inf],
                  [inf, inf, inf, inf, inf, inf, inf,inf],

                  ]
    parent = [-1] * length

    cost[start] = 0
    min_cost = 0

    while min_cost < inf:
        is_visited[start] = True
        for i, vertex in enumerate(graph[start]):

            if vertex != 0 and not is_visited[i]:

                if cost[i] > vertex + cost[start]:
                    cost[i] = vertex + cost[start]
                    parent[i] = start

                    arr_vertex[start][i] = start

        # print(arr_vertex)
        min_cost = inf
        for i in range(length):
            if min_cost > cost[i] and not is_visited[i]:
                min_cost = cost[i]
                start = i

    for i in reversed(arr_vertex):
        for x, j in enumerate(i):
            if j < inf:
                for col in arr_vertex:
                    if col[j] < inf:
                        col[x] = col[j]

    d = {}

    for i in range(len(arr_vertex)):
        d[i] = []
        for j in range(len(arr_vertex)):
            if arr_vertex[j][i] < inf:
                d[i].append(arr_vertex[j][i])

    return d, cost


arr = dijkstra(g, 0)
print('*' * 50)
print(f'Кратчайшие пути - {arr[1]}')
print('*' * 50)
print(f'Вершины и пути к ним ведущие по кратчайшим путям - {arr[0]}')




dijkstra(g, 0)