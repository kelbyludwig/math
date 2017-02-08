# 12. If A is invertible, which properties of A remain true for A^-1?
#     (a) A is triangular.
#     (b) A is symmetric.
#     (c) A is tridiagonal.
#     (d) All entries are whole numbers.
#     (e) All entries are fractions.

# (a) Triangularity remains. This can be visualized with Gauss-Jordan.
# Consider two cases: A is upper triangular, or A is lower triangular. If A is
# upper-triangular, Gauss-Jordan will use backwards elimination on the
# augmented matrix. This does not affect the zeros below the pivot. A similar
# argument can be applied to lower-triangular matrices.

# (b) Symmetry remains. For symmetric matrices A^T = A. From pg. 56 of the 
# book (A^-1)^T = (A^T)^-1. Since A^T = A, (A^-1)^T = A^-1. In other words,
# the transpose of A inverse is equal to A inverse. This is the definition
# of a symmetric matrix.

# (c) Tridiagonality does not remain. For example:
A = Matrix(RR, [[1,4,0,0],[3,4,1,0],[0,2,3,4], [0,0,1,3]])

# (d) Entries would not necessarily remain whole. For example:
A = Matrix(RR, [[1,4,0,0],[3,4,1,0],[0,2,3,4], [0,0,1,3]])

# (e) Rational numbers are closed under multiplication and addition so a matrix
# consisting of rational numbers would have rational entries as well.
