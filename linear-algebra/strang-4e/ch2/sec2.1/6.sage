# 6. Let P be the plane in 3-space with equation x + 2y + z = 6. What is the equation of
#    the plane P0 through the origin parallel to P? Are P and P0 subspaces of R3?

# P0 = x + 2y + z = 0 

# Let a,b be vectors in P. a can be written as (a,b,c) where a+2b+c=6. b can be
# written as (d,e,f) where d+2e+f=6.
# Is a+b in P?
# a+b = (a+d,b+e,c+f) and a+b satisifies a + d + 2(b+e) + c + f = 6
# a + d + 2(b+e) + c + f = a+d+2b+2e+c+f  = (a+2b+c)+(d+2e+f)
# Becuase a and b where in P =>
# (a+2b+c)+(d+2e+f) = 6+6 = 12 != 6. Therefore, a+b is not in P.

# Using a similar proof from above, if a and b are in P0, a+b would be in P0.
# Is k*a in P0 (where k is some constant)
# k*a = ka+2kb+kc = k(2+2b+c) = k*0 = 0
# Therefore, P0 is a subspace.
