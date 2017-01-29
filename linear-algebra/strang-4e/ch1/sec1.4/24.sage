A = Matrix(ZZ, [[1,1,0],[4,6,1],[-2,2,0]])
# subtract 4x row 1 from row 2 and add 2x row 1 from from row 3.
E21 = Matrix(ZZ, [[1,0,0],[-4,1,0],[2,0,1]])
# subtract 2x row 2 from row 3.
E31 = Matrix(ZZ, [[1,0,0],[0,1,0],[0,-2,1]])
# add 1x row 3 to row 1. i don't think i need this but oh well.
E32 = Matrix(ZZ, [[1,0,1],[0,1,0],[0,0,1]])
M = E32*E31*E21
