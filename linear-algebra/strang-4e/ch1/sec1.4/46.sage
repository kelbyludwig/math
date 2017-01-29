A = Matrix(ZZ, [[1,1],[1,1]])
B = Matrix(ZZ, [[1,1],[1,1]])
C = Matrix(ZZ, [[1],[1]])
D = Matrix(ZZ, [[1],[1]])
A*C + B*D

BLOCK = block_matrix([[A,C],[B,D]])
