# 20. If A has rank r, then it has an r by r submatrix S that is invertible.
# Find that submatrix S from the pivot rows and pivot columns of each A:
#   A1 = Matrix(ZZ, [[1,2,3],[1,2,4]])
#   A2 = Matrix(ZZ, [[1,2,3],[2,4,6]])
#   A3 = Matrix(ZZ, [[0,1,0],[0,0,0],[0,0,1]])


A1 = Matrix(ZZ, [[1,2,3],[1,2,4]]) 
A1 = Matrix(ZZ, [[1,2,3],[0,0,1]]) 
A1 = Matrix(ZZ, [[1,2,0],[0,0,1]]) 
# A1 has rank 2
r = A1.rank()
# invertible submatrix 
SA1 = Matrix(ZZ, [[2,3],[2,4]])

A2 = Matrix(ZZ, [[1,2,3],[2,4,6]])
A2 = Matrix(ZZ, [[1,2,3],[0,0,0]])
# A2 has rank 1
r = A2.rank()
# invertible submatrix
SA2 = Matrix(ZZ, [[1]])

A3 = Matrix(ZZ, [[0,1,0],[0,0,0],[0,0,1]])
# A3 has rank 2
r = A3.rank()
# invertible submatrix... i assume row switching is fair game?
SA3 = Matrix(ZZ, [[1,0],[0,1]])
