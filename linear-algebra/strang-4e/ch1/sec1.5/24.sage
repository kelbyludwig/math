# 24. What three elimination matrices E21, E31, E32 put A into upper triangular form
#     E32*E31*E21*A = U?  Multiply by E^-1, E^-1 and E^-1 to factor A into LU where
#     L = E21^-1 * E31^-1 * E32^-1. Find L and U.

A = Matrix(ZZ, [[1,0,1],[2,2,2],[3,4,5]])
E21 = Matrix(ZZ, [[1,0,0],[-2,1,0],[0,0,1]])
E31 = Matrix(ZZ, [[1,0,0],[0,1,0],[-3,0,1]])
E32 = Matrix(ZZ, [[1,0,0],[0,1,0],[0,-2,1]])

L = E21.inverse() * E31.inverse() * E32.inverse()
U = L.inverse() * A

assert A == L*U
