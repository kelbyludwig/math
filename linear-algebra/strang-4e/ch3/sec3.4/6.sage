# 6. Find a third column so that the matrix
x,y,z = var('x y z')
Q = Matrix(SR, [[1/sqrt(3), 1/sqrt(14), x], [1/sqrt(3), 2/sqrt(14), y], [1/sqrt(3), -3/sqrt(14), z]])
# is orthogonal. It must be a unit vector that is orthogonal to the other
# columns; how much freedom does this leave? Verify the rows automatically
# become orthonoraml at the same time.

# x/sqrt(3)  +  y/sqrt(3)  +  z/sqrt(3) == 0
# x/sqrt(14) + 2y/sqrt(14) - 3z/sqrt(14) == 0

A = Matrix(RR, [[1/sqrt(3), 1/sqrt(3), 1/sqrt(3)], [1/sqrt(14), 2/sqrt(14), -3/sqrt(14)]])
# looking for A*x == 0
Arref = Matrix(ZZ, [[1,0,5], [0,1,-4]])
# x + 5z = 0 
# y - 4z = 0
# x = -5z, y = 4z
x = vector(ZZ, [-5, 4, 1])
# x is in the nullspace of the known columns of Q, so it
# must be orthogonal to the known columns of Q.
# It is not a unit vector though...
xu = x/x.norm() #now it is

Q2 = Matrix(SR, [[1/sqrt(3), 1/sqrt(14), xu[0]], [1/sqrt(3), 2/sqrt(14), xu[1]], [1/sqrt(3), -3/sqrt(14), xu[2]]])

assert Q2.transpose()*Q2 == Matrix.identity(3)

# To answer "how much freedom does this leave?"
# Selecting a third column just involved picking any vector from the nullspace
# of A's known columns.

# "Verify that the rows automatically become orthonormal at the same time."
# Huh?
