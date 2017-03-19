# 32. (a) Find a basis for the subspace S in R^4 spanned by all solutions of
#          x1 + x2 + x3 - x4 = 0
#     (b) Find a basis for the orthogonal complement of S.
#     (c) Find b1 in S and B2 in S's ortho. comp. so that b1 + b2 = b = (1,1,1,1).

# x1 + x2 + x3 - x4 = 0

A = Matrix(QQ, [1,1,1,-1])
S = A.right_kernel(basis='pivot').matrix().transpose()

# since the span of S's columns are the nullspace of A, a basis for the
# ortho. comp. of S is the rowspace of A.
Scomp = span(A) # [1,1,1, -1] is a basis for S's orth. comp.

sc = Scomp.random_element()
na = A.right_kernel(basis='pivot').random_element()
assert sc.dot_product(na) == 0

# we can use an augmented matrix to solve for x (AUG*x = b)
AUG = S.augment(A.transpose()).transpose() # using the span of rows because that is more intuitive to me
b = Matrix(ZZ, [1,1,1,1]).transpose()
x = AUG.solve_right(b)
assert AUG*x == b
