I2 = Matrix.identity(2)
Z2 = Matrix(ZZ,2,2)
# (a) A*A = -I 
MA = Matrix(ZZ, [[0,1],[-1,0]])
assert MA*MA == -I2
MB = Matrix(ZZ, [[1,1],[-1,-1]])
# (b) B*B = 0 where B != 0
assert MB*MB == Z2
# (c) CD = -DC where CD != 0
MC = Matrix(ZZ, [[0,1],[1,0]])
MD = Matrix(ZZ, [[-1,1],[-1,1]])
assert MC*MD == -MD*MC
# (d) EF = 0 where no entries in E or F are zero.
ME = Matrix(ZZ, [[1,-1],[1,-1]])
MF = Matrix(ZZ, [[1,1],[1,1]])
assert ME*MF == Z2
