X = Matrix(ZZ, [[1,0,0], [1,1,0], [1,1,1]])
B = Matrix.identity(3)
b = Matrix(ZZ, [[3],[5],[8]])
A = B * X.inverse()
x = A.inverse() * b
