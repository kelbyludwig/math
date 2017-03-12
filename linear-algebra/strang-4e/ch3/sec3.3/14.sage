# 14. The vectors a1 = (1,1,0) and a2 = (1,1,1) span a plane in R^3. Find the
# projection matrix P onto the plane, and find a nonzero vector b that is
# projected to zero.

a1 = vector(ZZ, [1,1,0])
a2 = vector(ZZ, [1,1,1])
A = Matrix(ZZ, [[1,1,0],[1,1,1]]).transpose()
AT = A.transpose()

P = A*(AT*A).inverse()*AT

# [1/2 1/2   0]
# [1/2 1/2   0]
# [  0   0   1]

# .5x + .5y  = 0
# z = 0 

b = vector(ZZ, [2,-2,0])
assert P*b == zero_vector(3)
