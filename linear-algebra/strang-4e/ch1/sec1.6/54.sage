# When you transpose a block matrix M = Matrix([[A,B],[C,D]]) the result is M^T = ????.
# Under what conditions on A, B, C, D is the block matrix symmetric?

# M^T = Matrix([[A,C],[B,D]]). i.e. The matrix entries work just like other entries.
A = Matrix(ZZ, [[1,0],[0,1]])
B = block_matrix([[A,A*2],[A*3,A*4]])
BT = block_matrix([[A,A*3],[A*2,A*4]])
assert B.transpose() == BT

# If B == C then the block matrix is symmetric. E.g.
A = Matrix(ZZ, [[1,0],[0,1]])
B = block_matrix([[A,A*2],[A*2,A*4]])
assert B.transpose() == B

# I think the point here is that matrices-as-entries are no different
# than typical integer,real number,etc. matrices.
