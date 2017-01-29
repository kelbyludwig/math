def E(l,x,y):
    I3 = identity_matrix(3)
    I3[x-1,y-1] = l
    return I3

A = Matrix(ZZ, [[1,1,1],[2,2,2],[3,3,3]])

# (a)
E21 = E(-5,2,1)
print(E21*A)
print("---")

# (b)
E32 = E(7, 3,2)
print(E32*A)
print("---")

# (c)
SWAP = Matrix(ZZ, [[0,1,0],[0,0,1],[1,0,0]])
print(SWAP*A)
