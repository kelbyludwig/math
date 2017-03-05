# 18. In the vector space P_3 of all p(x) = a0 + a1*x + a2*x^2 + a3*x^3, let
#     S be the subset of polynomials with integral 0 to 1 p(x)dx = 0 . 
#     Verify that S is a subspace and find a basis.

# To prove S is a subspace the following must be true:

# 1. The "zero vector" is in S.
# The integral of 0 is 0 so 0 is in S.

# 2. If u and v are in S, u+v is in S
# Define the integral from the problem to be a function T(p(x)) 
# Assume p1(x) and p2(x) are in S.
# The properties of integral state that 
# TP = T(p1(x) + p2(x)) = T(p1(x)) + T(p2(x))
# Since T(p1(x)) = 0 and T(p2(x)) = 0 then TP = 0.
# Therefore, T(p1(x) + p2(x)) is in S.

# 3. If u is in S, c*u is in S.
# The properties of integrals state that T(c*p(x)) == c*T(p(x))
# Since p(x) is in S, c*T(p(x)) = c*0 = 0.
# Therefore, T(c*p(x)) is in S. S is a subspace.

# p(x) = a0 + a1*x + a2*x^2 + a3*x^3
# integral of p(x) from 0 to 1:
# a0*x + a1*1/2*x^2 + a2*1/3*x^3 + a3*1/4*x^4 where x = 1 
# a0   + a1*1/2     + a2*1/3     + a3*1/4     = 0 
# a0 =  -a1*1/2     - a2*1/3     - a3*1/4
# a0 must meet the criteria in the equation above

# (-a1*1/2 - a2*1/3 - a3*1/4) + a1*x + a2*x^2 + a3*x^3
# p(x) = a1*(-1/2+x) + a2*(-1/3+x^2) + a3*(-1/4+x^3)

# b1 = -1/2*a1 + a1*x
b1 = vector(RR, [-1/2, 1, 0, 0])

# b2 = -1/3*a2 + a2*x^2
b2 = vector(RR, [-1/3, 0, 1, 0])

# b3 = -1/4*a3 + a3*x^3
b3 = vector(RR, [-1/4, 0, 0, 1])

# all P3 which span(b1,b2,b3) will have a zero integral 
# when taken from 0 to 1.
