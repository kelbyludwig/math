# 5. In n dimensions, what angle does the vector (1,1,1,....,1) make with the
# coordinate axes? What is the projection matrix P onto that vector?


theta,n = var('theta n')
a = vector(ZZ, [1,1,1]) # the special vector, can assume a is a n-vector
# take the x-axis for example, which contains the vector:
xvec = vector(ZZ, [1,0,0]) # can assume n-vector for generality
xvec.dot_product(a) # 1

# the dot product of an axis and the all ones vector with always be one.

# the norm of a (of dimension n) will always be the sqrt(n).
# the norm of an axis will always be 1.

# the angle of a must be (by the formula on 173)
cos(theta) == 1/(1*sqrt(n))
# =>
theta == arccos(1/sqrt(n))
