# 3. Solve Ax = b by least squares, and fine p = A*xhat if:
A = Matrix(ZZ, [[1,0],[0,1],[1,1]])
b = Matrix(ZZ, [[1],[1],[0]])
# Verify that the error b-p is perpendicular to the columns of A.

lhs = A.transpose()*A
rhs = A.transpose()*b
xhat = lhs.solve_right(rhs)
p = A*xhat
e = b-p

assert e.transpose()*A.column(0) == 0
assert e.transpose()*A.column(1) == 0
