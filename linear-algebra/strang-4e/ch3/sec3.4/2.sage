# 2. Project b = vector(RR, [0,3,0]) onto each of the orthonormal vectors a1 =
# vector(RR, [2.0/3.0, -1.0/3.0, 2.0/3.0]) and a2 = vector(RR, [-1.0/3.0,
# 2.0/3.0, 2.0/3.0]), and then find its projection p onto the plane a1 and a2.

# THe project matrix onto the space spanned by a1 and a2...
a1 = vector(RR, [2.0/3.0, -1.0/3.0, 2.0/3.0])
a2 = vector(RR, [-1.0/3.0, 2.0/3.0, 2.0/3.0])
b = vector(RR, [0,3,0])

Q = Matrix([a1, a2]).transpose()
P = Q*Q.transpose()
# assert Q is orthonormal
assert Q.transpose() * Q == Matrix.identity(2)

p = P*b
