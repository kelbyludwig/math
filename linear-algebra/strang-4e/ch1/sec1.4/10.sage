# (a) False assuming A and B do not necessarily result in a 3-column matrix. 
#       e.g. A = [a,b,a] and B = [[c],[d],[c]]
A = Matrix(ZZ, [1,1,1])
B = Matrix(ZZ, [[1],[1],[1]])
#     Otherwise, true. 
#     Columns of AB are the linear combinations of each row of A with a column
#     of B. If the columns of B are equal, so are the columns of AB.

# (b) False
AE = Matrix(ZZ, [[1,2,3],[4,5,6],[7,8,9]])
BE = Matrix(ZZ, [[1,1,1],[2,3,4],[1,1,1]])
CE = AE*BE

# (c) True (Assuming result has at least 3 columns)
#     Row X in AB will be the linear combinations of Row X in A with each column
#     in B. If Row X and Row Y in A are equal so will Row X and Row Y in AB.

# (d) False. Matrix multiplication is not always commutative and the following
#     equations are equivalent 
#       (AB)^2 = (A*B) * (A*B) = ABAB
#       A^2 * B^2 = A*A * B*B = AABB
#       AABB != ABAB  for all AB
A = Matrix(ZZ, [[1,2],[3,4]])
B = Matrix(ZZ, [[2,3],[4,5]])
AB = A*B
AA = A*A
BB = B*B
assert AB*AB != AA*BB
