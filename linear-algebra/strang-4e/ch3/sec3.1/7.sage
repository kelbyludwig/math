# 7. Find a vector x orthogonal to the row space of A, and a vector y orthogonal to the 
# column space, and a vector z orthogonal to the nullspace:

A = Matrix(ZZ, [[1,2,1],[2,4,3],[3,6,4]])

# a vector x orthogonal to the row space of A
# "The nullspace N(A) and the row space C(A^T) are orthogonal subspaces..."
x = A.right_kernel_matrix() # the nullspace has dim 1
# assert each row vector is orthogonal to x
for row in A.rows():
    assert row.dot_product(x.row(0)) == 0

# a vector y orthogonal to the column space
# the left nullspace and the columns space are orthogonal
y = A.left_kernel().matrix()
for column in A.columns():
    assert column.dot_product(y.row(0)) == 0

# a vector z orthogonal to the nullspace
# the nullspace and the row space are orthogonal

ns = A.right_kernel_matrix().row(0) # a vector representing the dim 1 nullspace
z = A.row(0)
assert ns.dot_product(z) == 0 
