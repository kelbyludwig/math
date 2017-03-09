# 12. Find a basis for the orthogonal complement of the row space of A:

A = Matrix(ZZ,[[1,0,2],[1,1,4]])

# Split x = (3,3,3) into a row space component x_r and nullspace component x_n.

# A basis for the orthogonal complement of the row space are vectors that span 
# the nullspace of A.

# manual reduction :P
Ared = Matrix(ZZ,[[1,0,2],[1,1,4]])
Ared = Matrix(ZZ,[[1,0,2],[0,1,2]]) # row 2 = row 2 - row 1
assert Ared == A.rref()

# finding a nullspace basis.... manually
a,b,c = var('a b c')
eq1 = a+2*c == 0
eq2 = b+2*c == 0
# a solution that satisifies eq1 and eq2...
null_basis_vector = vector(SR, [-2*c,-2*c,c]).column()
null_basis_vector = vector(ZZ, [-2,-2,1]).column()
assert A*null_basis_vector == zero_vector(2).column()
# null_basis_vector is a basis for the orthogonal complement of A's row space.

x = vector(ZZ, [3,3,3])
null_basis_vector = vector(ZZ, [-2,-2,1])
assert x == A.row(1)-null_basis_vector # x == xr + xn
