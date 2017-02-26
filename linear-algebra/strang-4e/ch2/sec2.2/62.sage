# 62. Construct a matrix whose column space contains (1,1,5) and (0,3,1) and
# whose nullspace contains (1,1,2).

A = Matrix(RR,[[1,0,-1/2],[1,3,-2],[5,1,-3]])
x = vector(RR, [1,1,2])
assert A*x == vector(RR,[0,0,0])
c1 = vector(RR, [1,0,0])
c2 = vector(RR, [0,1,0])
assert A*c1 == vector(RR, [1,1,5])
assert A*c2 == vector(RR, [0,3,1])
