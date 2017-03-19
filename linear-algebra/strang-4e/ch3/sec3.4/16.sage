# 16. Express the Gram-Schmidt orthogonalization of a1,a2 as A = QR:

a1 = vector(ZZ, [1,2,2])
a2 = vector(ZZ, [1,3,1])

# Given n vectors a1 with m components, what are the shapes
# of A, Q, and R?

A = Matrix(RR, [a1,a2]).transpose()
# noramlize the first basis vector in Q
v1 = a1/a1.norm()

# non-normalized orthogonal vector to v1
iv2 = a2 - v1.dot_product(a2)*v1

# normalized second basis vector
v2 = iv2/iv2.norm()

Q = Matrix(RR, [v1,v2]).transpose()
# A = QR
R = Q.solve_right(A)
assert A == Q*R

# A is m x n
# Q is m x n
# R is n x n
