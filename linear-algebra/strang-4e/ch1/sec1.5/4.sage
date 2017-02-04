# 4. Apply elimination to produce the factors L and U for

#T = Matrix(SR, [[1,0,0],[l21,1,0],[l31,l32,1]])
#l21 = l time row 1 minus row 2
#l31 = l time row 1 minus row 3
#l32 = l time row 2 minus row 3

# 4a
A = Matrix(ZZ, [[2,1],[8,7]])
L = Matrix(ZZ, [[1,0],[4,1]])
U = Matrix(ZZ, [[2,1],[0,3]])
assert A == L*U

# 4b
A = Matrix(ZZ, [[3,1,1],[1,3,1],[1,1,3]])
L = Matrix(RR, [[1,0,0],[(1/3),1,0],[(1/3),(1/4),1]])
U = Matrix(RR, [[3,1,1],[0,(8/3),(2/3)],[0,0,(5/2)]])
assert A == L*U

# 4c
A = Matrix(ZZ, [[1,1,1],[1,4,4],[1,4,8]])
L = Matrix(ZZ, [[1,0,0],[1,1,0],[1,1,1]])
U = Matrix(ZZ, [[1,1,1],[0,3,3],[0,0,4]])
assert A == L*U
