# 4. Wirte out E^2 = ||Ax - b||^2 and set to zero its derivatives with respect
# to u and v, if 
A = Matrix(ZZ, [[1,0],[0,1],[1,1]])
u,v = var('u v')
x = Matrix(SR, [[u],[v]])
b = Matrix(ZZ, [[1],[3],[4]])
# Compare the resulting equations with A^T * A * xhat = A^T * b, confirming
# that calculus as well as geometry gives the normal equations. Find the 
# solution xhat and the projection p = A*xhat. Why is p = b?

# E = ||Ax - b||^2 = (u - 1)^2 + (v - 3)^2 + (u + v - 4)^2
# dE/du = 2*(u-1) + 2*(u+v-4) = 4*u + 2*v - 10 
# dE/dv = 2*(v-3) + 2*(u+v-4) = 2*u + 4*v - 14 

# dE/du is zero when: 4*u + 2*v - 10 = 0 
# dE/dv is zero when: 2*u + 4*v - 14 = 0 
# reducing the equations by two:
ATA_der = Matrix(ZZ, [[2,1],[1,2]]) 
b_der = Matrix(ZZ, [[5],[7]])

lhs = A.transpose() * A
rhs = A.transpose() * b
assert ATA_der == lhs
assert b_der == rhs
xhat = lhs.solve_right(rhs)
p = A*xhat
assert p == b
# p is equal to b because b is a linear combination of A's columns.
