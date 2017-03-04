# 18. Find a basis for each of the four subspaces of:

A = Matrix(ZZ, [[0,1,2,3,4],[0,1,2,4,6],[0,0,0,1,2]])

# C(A) = span[(1, 1, 0), (3, 4, 1)]
CA = span([A.column(1), A.column(3)], ZZ)
assert CA == A.column_space()

# N(A) = span[vector(SR, [x1, 2*x5-2*x3, x3, -2*x5, x5])]
a = vector(ZZ, [1,0,0,0,0])
b = vector(ZZ, [0,-2,1,0,0])
c = vector(ZZ, [0,2,0,-2,1])
NA = span([a,b,c], ZZ)
assert NA == A.right_kernel()

# C(A^T) = span([A.row(0), A.row(1)], ZZ)
assert A.row_space() == span([A.row(0), A.row(1)], ZZ)

# N(A^T) = vector(SR, [x3, -x3, x3])
a = vector(ZZ, [1,-1,1])
NAT = span([a],ZZ)
assert A.left_kernel() == NAT
