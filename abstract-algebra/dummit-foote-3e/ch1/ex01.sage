# 9. Let G = { a + b*sqrt(2) in RR s.t. a, b are in QQ }
#    (a) Prove that G is a group under addition
#    (b) Prove that the nonzero elements of G are a group under
#        multiplication ["Rationalize the denominators" to find
#        multiplicative inverses.]

# (a) 
# i. Is G closed?
a, b, c, d, e, f = var('a b c d e f')
x1 = a + b*sqrt(2)
x2 = c + d*sqrt(2)
x3 = e + f*sqrt(2)
expand(x1+x2) #=> 
expand(x1+x2) #=> sqrt(2)*b + sqrt(2)*d + a + c
# sqrt(2)*b + sqrt(2)*d + a + c
# sqrt(2)*(b + d) + (a + c)
# The above is still "in" G

# ii. Is G associative?
# Yes.
expand(x1+(x2+x3))
expand((x1+x2)+x3)

# iii. Does G have an identity element?
# Yes. (a, b) = (0, 0)
assert x1.subs(a == 0, b == 0) == 0

# iv. Does each element of G have an inverse?
# Yes. (a, b)^-1 = (-a, -b)

# (b)
# i. Is G closed?
# Yes.
expand(x1*x2) #=> sqrt(2)*b*c + sqrt(2)*a*d + a*c + 2*b*d
# sqrt(2)*b*c + sqrt(2)*a*d + a*c + 2*b*d
# sqrt(2)*(b*c + a*d) + (a*c + 2*b*d)

# ii. Is G associative?
# Yes.

# iii. Does G have an identity element?
# Yes. (a=1, b=0)

# iv. Does each element of G have an inverse?
# (a + b*sqrt(2)) * ainv == 1
# ainv = 1 / (a + b*sqrt(2))
#      = (a - b*sqrt(2) / (a - b*sqrt(2))*(a + b*sqrt(2))
#      = (a - b*sqrt(2)) / (a^2 - 2*b^2)
#      = a/(a^2 - 2*b^2) - (b/(a^2 - 2*b^2))*sqrt(2)
#      this is also in G

# 14. Find the orders of the following elements of the multiplicative
#     group (ZZ/36ZZ)^x:
#     1, -1, 5, 13, -13, 17
Z = Zmod(36)
assert Z(1)^1 == 1
assert Z(-1)^2 == 1
assert Z(5)^6 == 1
assert Z(13)^3 == 1
assert Z(-13)^6 == 1
assert Z(17)^2 == 1
