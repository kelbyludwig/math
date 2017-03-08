# 9. Find the orthogonal complement of the plane spanned by the vectors (1,1,2)
# and (1,2,3), by taking these to be the rows of A and solving Ax = 0. Remember that
# the complement is a whole line.

plane_matrix = Matrix(ZZ, [[1,1,2],[1,2,3]]) # the plane is the row space of this matrix

# manual reduction steps :P

red = Matrix(ZZ, [[1,1,2],[1,2,3]]) 
red = Matrix(ZZ, [[1,1,2],[0,1,1]]) # row 2 - row 1
red = Matrix(ZZ, [[1,0,1],[0,1,1]]) # row 1 - (row 2 - row 1)
assert red == plane_matrix.rref()

# equations written out from red
x,y,z = var('x y z')
eq1 = x + z == 0 # => x = -z
eq2 = y + z == 0 # => y = -z

null_vector = vector(SR,[-z,-z,z]).column()
null_vector = vector(ZZ, [-1,-1,1]).column()

assert plane_matrix*null_vector == zero_vector(2).column()

# The orthogonal complement of the span of those vectors is the line:
# [-1,-1,1] (and [0,0,0])
