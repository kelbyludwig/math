# 18. We want to fit a plane y = C + Dt + Ez to the four points:
# 1) y = 3 at t = 1, z = 1
# 2) y = 6 at t = 0, z = 3
# 3) y = 5 at t = 2, z = 1
# 4) y = 0 at t = 0, z = 0 

# (a) Find 4 equations in 3 unknowns to pass a plane through the points
#     (if there is such a plane).

A = Matrix(ZZ, [[1,1,1], [1,0,3], [1,2,1], [1,0,0]])
C,D,E = var("C D E")
x = vector(SR, [C,D,E])
b = Matrix(ZZ, [[3],[6],[5],[0]])

# (b) Find 3 equations in 3 unknowns for the best least-squares solution.
lhs = A.transpose() * A # three equations
rhs = A.transpose() * b # three unknowns
xhat = lhs.solve_right(rhs) # least-squares solution
p = A*xhat
