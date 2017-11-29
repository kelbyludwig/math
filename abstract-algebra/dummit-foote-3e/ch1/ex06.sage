# 2. If phi : G -> H is an isomorphism, prove that ord(phi(x)) == ord(x) for all x in G.
# Deduce that any two isomorphic groups have the same number of elements of order n for
# each n in ZZ^+. Is the result true if phi is only assumed to be a homomorphism?

# phi being an isomorphism implies: phi(xy) = phi(x)*phi(y) for x, y in G
# We can generalize phi to multiple group operations: 
#   suppose a = xx
#   phi(a) = phi(xx) = phi(x)*phi(x)
#   phi(ax) = phi(xx)*phi(x) = phi(x)*phi(x)*phi(x) = phi(xxx)
#   and so on...
# Suppose ord(x) = b => x^b = 1
# This means:
#   phi(x^b) = phi(x*x*...*x) = phi(x)*phi(x)*...*phi(x) = phi(x)^b
# Since phi(x^b) = phi(1) = phi(x)^b 
# Now, we must prove that:
#   phi(1) maps to the identity in H
#   b is the smallest integer such that phi(x)^b = phi(1)

# Is phi(1) the identity in H?
# It must be the case that:
#   phi(x) = phi(1x) = phi(1)*phi(x) where x is a random element in G
# Although it is not necessarily true that a specific element phi(x) won't have 
# multiple elements e s.t. x = ex, we know that there is a unique identity element
# for all elements in a group. Since we are dealing with an arbritrary element x in
# G and phi is a bijection, it must be the case that phi(1) maps to a single element
# that is an identity for any phi(x). I believe this is also why the claim the problem
# makes will not hold if phi is only assumed to be a homomorphism. If phi(1) could map
# to multiple elements in H, we cannot gaurantee that phi(1) will not map to elements
# that are not the identity in H but behave like the identity for a given specific element.

# Is b is the smallest integer such that phi(x)^b = phi(1)
# Suppose ord(x) = b but ord(phi(x)) = c where c < b.
# ord(phi(x)) = c => phi(x)^c = phi(1) => phi(x^c) = phi(1)
# If phi is an isomorphism, and we just proved that only the identity element in G maps to the
# identity element in H, x^c must be the identity. This is a contradiction, as ord(x) = b
# but x^c = 1 and c < b. Therefore, b is the smallest integer such that phi(x)^b = phi(1) and
# ord(phi(x)) == ord(x).
