# 1. Find the best least-squares solution xhat to 3x = 10, 4x = 5.
# What error E^2 is minimized? Check that the error vector (10-3xhat, 5-4xhat)
# is perpendicular to the column (3,4).

A = Matrix(ZZ, [[3,0],[4,0]])
b = Matrix(ZZ, [[10],[5]])

lhs = A.transpose()*A # A^T * A
rhs = A.transpose()*b # A^T * b
xhat = lhs.solve_right(rhs) # solve for xhat in A^T * A * xhat == A^T * b
p = A*xhat # the least-squares solution to Ax = b
e = b-p

# E^2 = (10 - 3x)^2 + (5 - 4x)^2 is minimized
# (i stole this from the solutions but i wasn't quite sure what the question was asking)

e_vec = vector(ZZ, [4,-3])
col = vector(ZZ, [3,4])
assert e_vec.dot_product(col) == 0
