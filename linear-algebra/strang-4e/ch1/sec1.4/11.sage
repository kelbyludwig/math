A = Matrix(ZZ, [[2,1,4],[0,-1,1]])
B = Matrix(ZZ, [[1,1],[0,1],[1,0]])
C = A*B
C1 = Matrix(ZZ, [6,3]) 
# First row of AB
print("First row of AB: %s" % C1)
x = vector(ZZ, [1,1])
y = vector(ZZ, [0,1])
z = vector(ZZ, [1,0])
# Linear combination of row vectors
print("Linear combination of row vectors: (%s,%s,%s)" % (1,2,5))
print("%s" % (1*x + 2*y + 5*z))
