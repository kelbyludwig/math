# 27. Suppose A and B have the same reduced-row echelon form R. Explain how to
# change A to B by elementary row operations. So B equals an _______ matrix
# times A.

A = Matrix(ZZ, [[1,2,3],[4,5,2],[3,2,2]])
B = Matrix(ZZ, [[3,2,1],[2,2,1],[3,3,1]])
assert A.rref() == A.rref()
EA = A.solve_right(A.rref())
EB = B.solve_right(B.rref())
assert A*EA == A.rref()
assert B*EB == B.rref()
assert EB.inverse()*EA*A == B # "So B equals an invertible matrix times A"

# for each pivot column, multiply the pivot row by an "elimination matrix" that
# inserts the appropriate value in the matrix. For example, the following
# elimination matrix E23 inserts the value 2 in row 2 column 3 of B's RREF.
E23 = Matrix(ZZ, [[1,0,0],[0,1,2],[0,0,1]])
B.rref() * E23 # This operation gets B's RREF closer to the original A.

# This process can be done a column at a time, until all linearly independent
# rows are filled out.  If A and B had linearly dependent rows, nothing needs
# to be done until the linearly independent rows are "restored". Once that is
# done, the depedent rows can be filled out using linear combinations of the
# rows they are dependent on.
