# 8. Which of the following descriptions are correct? The solutions x of
#    A*x = Matrix(ZZ, [[1,1,1],[1,0,2]]) * Matrix(SR, [[x1],[x2],[x3]]) = Matrix(ZZ, [[0],[0]])
#    form...

# (a) a plane
# no 

# (b) a line
# yes. The solutions x can be represented by the intersection of the following
# two equations: x1+x2+x3=0 and x1+2x3=0.
# The equations individually are planes, and their intersection is a line.
# An example plot:
var('x1,x2,x3')
plane_1=implicit_plot3d(x1+x2+x3==0,(x1,-10,10),(x2,-10,10),(x3,-10,10),opacity=0.7,color='red')
plane_2=implicit_plot3d(x1+2*x3==0,(x1,-10,10),(x2,-10,10),(x3,-10,10),opacity=0.7,color='blue')

plane_1+plane_2

# (c) a point
# no

# (d) a subspace
# yes, the solutions here form a nullspace which is a subspace.

# (e) the nullspace of A
# yes

# (f) the columnspace of A
# no
