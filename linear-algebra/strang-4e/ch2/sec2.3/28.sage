# 28. True or false (give a good reason)?
#     (a) If the columns of a matrix are dependent, so are the rows.
#     (b) The column space of a 2 by 2 matrix is the same as the row space.
#     (c) The column space of a 2 by 2 matrix has the same dimension as its row space.
#     (d) The columns of a matrix are a basis for the column space.

# (a) False. A m x n matrix with m < n and independent rows could have dependent columns. e.g.
A = Matrix(ZZ, [[1,0,0],[0,1,0]])

# (b) False. A counter-example:
A = Matrix(ZZ, [[1,1],[0,0]])

# (c) True. The rank of column space and row space are the same.

# (d) False. The columns of a matrix could be linearly dependent.
