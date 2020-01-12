#2. Закодируйте любую строку по алгоритму Хаффмана.
import heapq
from collections import Counter, namedtuple


class Node(namedtuple("Node", ["left", "right"])):
    def walk(self, code, acc):
        self.left.walk(code, acc + "0")
        self.right.walk(code, acc + "1")


class Leaf(namedtuple("Leaf", ["char"])):
    def walk(self, code, acc):
        code[self.char] = acc or "0"


def haffman(s):
    h = []

    for ch, freq in Counter(s).items():
        h.append((freq, len(h), Leaf(ch)))

    heapq.heapify(h)

    count = len(h)

    while len(h) > 1:
        freaq1, _count1, left = heapq.heappop(h)
        freaq2, _count2, right = heapq.heappop(h)
        heapq.heappush(h, (freaq1 + freaq2, count, Node(left, right)))
        count += 1

    code = {}

    if h:
        [(_freq, _count, root)] = h
        root.walk(code, "")

    return code


s = input('Введите строку : ')
code = haffman(s)
news = " ".join(code[ch] for ch in s)

print(f'{news}')