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

# 5. Show that GL_n(F) is a finite group iff F has a finite number of elements.

# (From page 35) Suppose |F| has a finite order q, then:

# Fact 0: ord(GL_n(F)) = (q^n - 1)*(q^n - q)*(q^n - q^2)* … *(q^n - q^(n-1))

# To prove the claim in the problem we must prove two facts:

# Fact 1: F has a finite number of elements => GL_n(F) is finite.
# Suppose F has a finite number of elements but GL_n(F) is infinite. This is not possible by Fact 0 as the order of GL_n(F) must be finite. This is a contradiction so Fact 1 must hold.

# Fact 2: GL_n(F) is finite => F has a finite number of elements.
# Suppose GL_n(F) is finite but ord(F) is infinite. The definition of GL_n(F) is:
# { A s.t. A is an n x n matrix with entries from F and det(A) != 0 }
# If GL_n(F) is finite, it must be the case that there are finite elements A. 
# However, there certainly infinite elements in this group. 
# For example, the set of n x n matrices with non-zero diagonal elements from F. 
# This is a contradiction so Fact 2 must hold as well.

