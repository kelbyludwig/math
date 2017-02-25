# 42. If Ax = b has infinitely many solutions, why is it impossible for Ax = B (new right-hand side) to have only one solution? Could AX = B have no solution?

# TODO(kkl): This makes sense to me intuitively but my proof here feels shakey.
# Ax=b has a solution if b exists in the the column space of A.
# If Ax = b is a solution, b can be expressed as a linear comb. of the columns of A.
# If Ax = B is a solution, B can be expressed as a linear comb. of the columns of A.
# In other words, b and B both exist in the same subspace. So if Ax = b then
# Ax = B cannot have just one solution.

# Ax = B could have no solutions as B could be outside C(A).
