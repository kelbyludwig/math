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

# 3. If phi : G -> H is an isomorphism, prove that G is abelian iff H is abelian. If phi is a
# homomorphism, what additional conditions on phi (if any) are sufficient to ensure that if 
# G is abelian, so is H?

# Assuming: phi is a isomorphism, G is abelian.
# Proving: The above implies H is abelian.
# Since G is abelian: 
#   xy = yx for any x, y in G.
# Since phi is an isomorphism:
#   phi(xy) = phi(x)*phi(y)
#   phi(yx) = phi(y)*phi(x)
#   phi(xy) = phi(yx) => phi(y)*phi(x) = phi(x)*phi(y)
# Thefore H is abelian.
# We can use a very similar proof starting with the assumption that H is
# abelian to prove that G is abelian.

# If phi is just a homorphism, and G and H are both abelian, what must be true of phi?
# My proof above glossed over this, but the first part of the proof (phi is an isomorphism and G is abelian => H is abelian)
# relies on the fact that phi is surjective. That is, given two elements x, y in G, phi(x) and phi(y)
# map to arbitrary elements in H. If phi was not surjective, this would not be a gaurantee.

# 4. Prove that multiplicative groups R - {0} and C - {0} are not isomorphic.

# 0+1i in C - {0} has order 4. There is no element in R - {0} that has order 4.
# pg 38 asserts that for all x in G, ord(x) == ord(phi(x)) where phi is an isomorphism from G to H.
x = 0+1j
assert(x^4 == 1)

# 6. Prove that the additive groups ZZ and QQ are not isomorphic.

# i had to nab this one from here because i got way stuck: https://math.stackexchange.com/questions/620551/prove-that-the-additive-groups-mathbbz-and-mathbbq-are-not-isomorphic/620553

# suppose phi is an isomorphism and phi(q) = 1 where q is in QQ and 1 is in ZZ.
# these assumptions suggest the follwowing equation should hold:
#   phi(q) = phi(q/2 + q/2) = phi(q/2) + phi(q/2) = 1
# if phi is an isomorphism, phi(q/2) should map to some element x in ZZ.
# Rewriting the equation above:
#   phi(q/2) + phi(q/2) = x + x = 1
# However, there is no value x in ZZ where this is true so phi cannot be an isomorphism.

# 7. Prove that D_8 and Q_8 are not isomorphic.

# it is not possible to great a bijection from D_8 to Q_8 where each element
# has order equal to its image.
D8 = DihedralGroup(4)
Q8 = QuaternionGroup()
D8ords = []
Q8ords = []
for e in D8.list():
    D8ords.append(e.order())
for e in Q8.list():
    Q8ords.append(e.order())

assert(sorted(D8ords) != sorted(Q8ords))
# print(sorted(D8ords))
# print(sorted(Q8ords))
