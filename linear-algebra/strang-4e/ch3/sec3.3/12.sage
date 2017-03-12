# 12. If V is the subspace spanned by (1,1,0,1) and (0,0,1,0), find:
# (a) a basis for the orthogonal complement V^perp
# (b) the projection matrix P onto V
# (c) The vector in V closest to the vector b = (0,1,0,-1) in V^perp

A = Matrix(ZZ, [[1,1,0,1],[0,0,1,0]]).transpose()
# Let V = C(A)
# (a) The orthongonal complement V^perp would be the nullspace of A^T
AT = A.transpose()
# a + b + d = 0
# c = 0
# a = -b - d
# [-b-d, b, 0, d]
Vperp = Matrix(ZZ, [[-1,1,0,0],[-1,0,0,1]]).transpose()

# (b) the projection matrix P onto V
P = A*(AT*A).inverse()*AT

# (c) the vector in V closest to the vector b
b  = Matrix(ZZ, [0,1,0,-1]).transpose()
p = P*b # p = [[0],[0],[0],[0]]
