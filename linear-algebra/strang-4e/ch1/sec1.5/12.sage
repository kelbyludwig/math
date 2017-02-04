# 12. How could you factor A into a product UL, upper triangular times lower triangular?
# Similarly to how one would factor LU, you use "elmination" matrices to zero
# out rows from A. The only difference, is we have different elimination matrix
# structure, which requires you work backwards. 

# Would they be the same factors as in A = LU ?
# Not necessarily as matrix mult is not necessarily commutative.

#U = Matrix(SR, [[1,l12,l13],[0,1,l23],[0,0,1]])
#l12 = l times row 2 minus row 1
#l13 = l times row 3 minus row 1
#l23 = l times row 3 minus row 2

A = Matrix(ZZ, [[1,1,1],[1,4,4],[1,4,8]])
U = Matrix(RR, [[1,(1/4),(1/8)],[0,1,(1/2)],[0,0,1]])
L = Matrix(RR, [[(6/8),0,0],[(1/2),2,0],[1,4,8]])

assert A == U*L
