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

# 20. For x an element in G show that x and x^-1 have the same order

# suppose x has order a. i.e. x^a == 1 (using multiplicative group shorthand)
# (x^-1)^a == x^-a == (x^a)^-1 == 1^-1 = 1

# 22. If x and g are elements of the group G, prove that |x| = |g^-1 * x * g|. Deduce that |ab| = |ba| for all a, b in G.

# assume that |x| != |g^-1 * x * g|
# note that: 
# (g^-1 * x * g)^2 = (g^-1 * x * g) * (g^-1 * x * g) = g^-1 * x^2 * g
# this generalizes to:
# (g^-1 * x * g)^n = (g^-1 * x^n * g)

# another way to write:
# |x| != |g^-1 * x * g|
# is 
# 1 = x^n != (g^-1 * x * g)^n
#         != (g^-1 * x^n * g)
#         != (g^-1 * 1 * g)
#         != (g^-1 * g)
#         != 1
# by contradiction they must be equal

# additionally, if
#   |x| = |g^-1 * x * g|
#=> |gx| = |g*g^-1 * x * g|
#=> |gx| = |xg|

# 25. Prove that if x^2 = 1 for all x in G then G is abelian

# G being abelian implies ab = ba for all a,b in G
# if x^2 = 1 for all x in G, then x must be its own inverse
# suppose a, b are in G 
# this implies that a^2 = b^2 = (ab)^2 = (ba)^2 = 1
# suppose ab != ba
# ab != ba
# aab != aba
# aabb != abab
# a^2b^2 != (ab)^2
# 1*1 != 1
# which is a contradiction

# 31. Prove that any finite group G of even order contains an element of order 2.
# [Let t(G) be the set { g in G s.t. g != g^-1 }. Show that t(G) has an even 
# number of elements and every nonidentity element of G ~ t(G) has order 2.]

# Let t(G) be the set { g in G s.t. g != g^-1 }
# since G is finite t(G) is finite. We can write the elements of t(G) like
# an ordered set of pairs like:
# (a, b) = 1 ; which implies that ab = 1
# (b, c) = 1 ; which implies that bc = 1
# and so on...
# these pairs would never repeat an element, as that would imply that G
# does not have uniquely determined inverses.
# therefore, the set t(G) has an even number of elements as there would
# be N sets of 2 elements.

# G must have an identity element which would not be in t(G).
# so the finite group G is compromised of at least the elements of t(G), the identity.
# That is: G = t(G) + e + X ; where X is all remaining elements in G
# a non-identity element x with order 2 implies that x^2 = 1, or in other words
# x^-1 = x. Therefore any elements in X have order 2.
# There must be at least one element in X because otherwise G would have
# an odd order which contradicts the original assumption.
