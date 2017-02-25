# 26. If A is 2 by 3 and C is 3 by 2, show from its rank that CA != I. Given an
# example in which AC = I. For m < n, a right inverse is not a left inverse.

# The max rank of A and C is 2. 
# By the facts proved in problem 24:
# Rank(CA) <= Rank(C) and Rank(CA) <= Rank(A)
# or Rank(CA) <= Min(Rank(A), Rank(C))
# Therefore Rank(CA) <= 2
# Since I would have rank 3, CA != I.

C = Matrix(ZZ, [[1,0],[0,1],[0,0]])
A = Matrix(ZZ, [[1,0,0],[0,1,0]])
I = Matrix.identity(2)
assert I == A*C
