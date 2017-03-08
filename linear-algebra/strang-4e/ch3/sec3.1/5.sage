# 5. Which pairs are orthogonal among the vectors v1, v2, v3, v4?

from itertools import combinations

v1 = vector(ZZ, [1,2,-2,1])
v2 = vector(ZZ, [4,0,4,0])
v3 = vector(ZZ, [1,-1,-1,-1])
v4 = vector(ZZ, [1,1,1,1])

for a,b in combinations([v1,v2,v3,v4],2):
    if a.dot_product(b) == 0:
        print("%s is orthogonal to %s" % (a,b,))
