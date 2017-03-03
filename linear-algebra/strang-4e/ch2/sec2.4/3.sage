# 3. Find the dimension and a basis for the four fundamental subspaces for
#   A = Matrix(ZZ, [[1,2,0,1],[0,1,1,0],[1,2,0,1]])  and
#   U = Matrix(ZZ, [[1,2,0,1],[0,1,1,0],[0,0,0,0]])

# A has two pivots, column 1 and 2.
A = Matrix(ZZ, [[1,2,0,1],[0,1,1,0],[1,2,0,1]]) 
assert A.rank() == 2
# C(A) = the span of vector(ZZ, [1,0,1]) and vector(ZZ, [2,1,2])
# C(A^T) = the span of vector(ZZ, [1,2,0,1]) and vector(ZZ, [0,1,1,0])

x1,x2,x3,x4 = var('x1 x2 x3 x4')
x = vector(SR, [2*x3-x4, -x3, x3, x4])
# N(A) = span(x)
assert A*x == vector(ZZ, [0,0,0])

y = vector(SR, [-x3,0,x3])
# N(A^T) = span(y)
assert A.transpose()*y == vector(ZZ, [0,0,0,0])
