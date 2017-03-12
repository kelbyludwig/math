# 14. What matrix P projects every point in R^3 onto the line of intersection
#     of the planes x + y + t = 0 and x - t = 0?


x,y,t = var("x y t")
A = Matrix(ZZ, [[1,1,1],[1,0,-1]])

# nullspace of A
# x - t  = 0 => x = t
# y + 2t = 0 => y = -2t
null = vector(SR, [t, -2*t, t])
P = Matrix(ZZ, [[0,0,1],[0,0,-2],[0,0,1]])
