# 8. From the cubics P_3 to the fourth-degree polynomials P_4, what matrix
#    represents multiplication by 2 + 3t? The columns of the 5 by 4 matrix A 
#    come from applying the transformation to 1,t,t^2,t^3.

t = var('t')

# T(x) = x*(2+3*t)
T = lambda x: ((2+3*t)*x).expand()

# basis of P_3
b = 1+t+t^2+t^3

# T(b1 = 1)
tb1 = T(1) # 3t + 2
tv1 = vector(ZZ, [2,3,0,0,0]) # vector rep of tb1

# T(b2 = t)
tb2 = T(t) # 3t^2 + 2t
tv2 = vector(ZZ, [0,2,3,0,0])

# T(b3 = t^2)
tb3 = T(t^2) # 3t^3 + 2t
tv3 = vector(ZZ, [0,0,2,3,0])

# T(b4 = t^3)
tb4 = T(t^3) # 3t^4 + 2tt
tv4 = vector(ZZ, [0,0,0,2,3])

A = Matrix(ZZ, [tv1, tv2, tv3, tv4]).transpose()
