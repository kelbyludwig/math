# 3. Find also the projection of b = (0,3,0) and a3 = (2/3, -1/3, 2/3), and 
# add the three projections. Why is P = a1*a1^T + a2*a2^T + a3*a3^T == I?

a1 = vector(RR, [2.0/3.0, 2.0/3.0, -1.0/3.0])
a2 = vector(RR, [-1.0/3.0, 2.0/3.0, 2.0/3.0])
a3 = vector(RR, [2.0/3.0, -1.0/3.0, 2.0/3.0])
b = vector(RR, [0,3,0])

Q = Matrix([a1, a2, a3]).transpose()
P = Q*Q.transpose()
# assert Q is orthonormal
assert Q.transpose() * Q == Matrix.identity(3)

p1 = a1.column()*a1.row() # projection matrix for a1
p2 = a2.column()*a2.row() # projection matrix for a2
p3 = a3.column()*a3.row() # projection matrix for a3

assert p1+p2+p3 == Matrix.identity(3) 
# p1+p2+p3 is the projection matrix onto a1,a2,a3 which,
# due to the size of the vectors span all of R^3. Therefore,
# their sum is I.
p = P*b
assert p == b
