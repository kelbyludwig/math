# 12. What multiple of a1 = [1,1] should be subtracted
# from a2 = [4,0] to make the result orthogonal to a1?
# Factor [[1,4],[1,0]] into QR with orthonoraml vectors
# in Q.

# a2 - x*a1 where (a2 - x*a1) dot a1 == 0 
# (a2 - x*a1) dot a1  can be written as:
# [4 - x, 0 - x] dot [1, 1]
# (4-x) + (0 - x) = 4 - x + 0 - x 
# = 4 - 2x
# 4 - 2x == 0 when x = 2.

a1 = vector(ZZ, [1,1])
a2 = vector(ZZ, [4,0])
assert a1.dot_product(a2) != 0
o = a2 - 2*a1 # [2, -2]
assert a1.dot_product(o) == 0


A = Matrix(RR, [a1, a2]).transpose()
# normalize a1 as the first basis vector in Q
v1 = a1/a1.norm()
# non-normalized orthogonal vector to v1
iv2 = a2 - v1.dot_product(a2)*v1
# noralized second basis vector
v2 = iv2/iv2.norm()

# the factorization
Q = Matrix(RR, [v1, v2]).transpose()
R = Q.inverse()*A
assert A == Q*R
