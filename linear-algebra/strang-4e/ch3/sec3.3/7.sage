# 7. Find the projection matrix P onto the space spanned by a1 = (1,0,1)
# and a2 = (1,1,-1).

A = Matrix(ZZ, [[1,0,1],[1,1,-1]]).transpose()
AT = A.transpose()
P = A*(AT*A).inverse()*AT
