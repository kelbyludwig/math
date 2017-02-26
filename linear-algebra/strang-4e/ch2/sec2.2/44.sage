# 44. Give examples of matrices A for which the number of solutions to Ax = b is:
#     (a) 0 or 1, depending on b.
#     (b) infinity, regardless of b.
#     (c) 0 or inf., depending on b.
#     (d) 1, regardless of b.

# (a)
A = Matrix(ZZ, [[1,0],[0,1],[0,0]])

# (b)
A = Matrix(ZZ, [[1,0,0],[0,1,0]])

# (c)
A = Matrix(ZZ, [[1,0,0,0],[0,1,0,0],[0,0,0,0],[0,0,0,0]])

# (d)
A = Matrix(ZZ, [[1,0,0],[0,1,0],[0,0,1]])
