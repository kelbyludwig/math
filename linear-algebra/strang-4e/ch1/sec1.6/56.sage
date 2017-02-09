# 56. If A = A^T and B = B^T, which of these matrices are certainly symmetric?

# (a) A^2 - B^2
# Certainly symmetric. From pg. 57 we know that R*R^T is symmetric. Therefore,
# A^2 = A*A = A*A^T is symmetric.  Similar logic can be applied to B.
# Subtraction of two symmetric matrices would result in a symmetric matrix.
# This is true, because all non-pivot entries of a symmetric matrix A_ij would
# be equal to their transposed counterparts A_ji. This is true of B_ij and B_ji
# as well. Because A^2 and B^2 are symmetric, subtraction for non-pivot entries
# would follow the formula: A_ij - B_ij. Since A_ij = A_ji and B_ij = B_ji:
# A_ij - B_ij = A_ji - B_ji. Therefore, after subtraction the resulting matrix
# would still be symmetric.

# (b) (A+B)*(A-B)
# Not guaranteed to be symmetric. 
A = Matrix(ZZ, [[1,2],[2,1]])
B = Matrix(ZZ, [[2,4],[4,3]])
C = (A+B)*(A-B)
assert A == A.transpose()
assert B == B.transpose()
assert C != C.transpose()

# (c) ABA
# Certainly symmetric.
# The transpose of ABA is (ABA)^T. 
# => ABA == A^T*B^T*A^T (pg. 56)
# We assumed A=A^T and B=B^T, therefore:
# => ABA == ABA

# (d) ABAB
# Not guaranteed to be symmetric. 
# ABAB == B^T * A^T * B^T * A^T 
# Using similar logic from (c): ABAB == BABA
# Therefore, ABAB is only symmetric when ABAB == BABA.
