# 2. Reduce A and B to echelon form, to find their ranks. Which variables are free?
#    A = Matrix(ZZ, [[1,2,0,1],[0,1,1,0],[1,2,0,1]])
#    B = Matrix(ZZ, [[1,2,3],[4,5,6],[7,8,9]])
#    Find the special solutions to Ax = 0 and Bx = 0. Find all solutions.

Aorig = Matrix(ZZ, [[1,2,0,1],[0,1,1,0],[1,2,0,1]]) # Ax = b = [b1,b2,b3]
Aredu = Matrix(ZZ, [[1,2,0,1],[0,1,1,0],[0,0,0,0]]) # Ax = b = [b1,b2,b3-b1]
Aredu = Matrix(ZZ, [[1,0,-2,1],[0,1,1,0],[0,0,0,0]]) # Ax = b = [b1-2b2,b2,b3-b1]

assert Aredu == Aorig.rref() #assert that my reduced A matches sages
assert 2 == Aorig.rank() #assert that A has two pivot variables
assert (2,3) == Aorig.nonpivots() #assert that the 2nd and 3rd columns are not pivots

# finding special solutions:
# R = Aredu; R*x = 0 consists of the following linear equations:
# a-2c+d = 0  => a = 2c - d
# b+c = 0  => b = -c
a,b,c,d = var('a b c d') # let x = [a,b,c,d]
# The special solutions can be written as:
x1 = vector(SR, [2*c-d, -c, c, d])
# or 
x2 = c*vector(ZZ, [2,-1,1,0]) + d*vector(ZZ,[-1,0,0,1])
assert x1 == x2
