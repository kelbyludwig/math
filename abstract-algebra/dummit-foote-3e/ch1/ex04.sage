# 2. Write out all elements in GL_2(F_2) and compute the order of each element.

F = GF(2)
MS = MatrixSpace(F, 2, 2)
unfiltered_elems = MS.list()
d0 = lambda x: x.determinant() != 0
elems = filter(d0, unfiltered_elems)
for e in elems:
    print("ord(\n%s) = %d" % (e, e.multiplicative_order()))

# output:
# ord(
# [1 0]
# [0 1]) = 1
# ord(
# [0 1]
# [1 0]) = 2
# ord(
# [1 1]
# [1 0]) = 3
# ord(
# [1 1]
# [0 1]) = 2
# ord(
# [1 0]
# [1 1]) = 2
# ord(
# [0 1]
# [1 1]) = 3

# 4. Show that if n is not a prime then Z/nZ is not a field.

# If n is not prime, then n can be written as n = ab where a and b are integers that are not congruent to zero in Z/nZ. Since n = ab then ab is in the equivalence class 0. 

# Suppose a has inverse x. If Z/nZ is a field, the following must hold:

# a(b + x) = ab + ax

# Which is equivalent to:

# a(b + x) = 0 + 1
# a(b + x) = 1

# Which implies that (b + x) is a’s inverse. If x is a’s inverse, then it must be the case that b is congruent to 0, which is a contradiction.
