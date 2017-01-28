a,b,c,d = var('a b c d')
# symbolic matrix A
A = Matrix(SR, 2,2, [a,b,c,d])
E = Matrix(ZZ, [[1,7],[0,1]])

print("E*A:")
# note the second row of A is the same in E*A
# [a + 7*c b + 7*d]
# [      c       d]
print(E*A)

print("A*E:")
# note the first column of A*E uses unmodified values from A.
# [      a 7*a + b]
# [      c 7*c + d]
print(A*E)
