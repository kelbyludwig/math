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
