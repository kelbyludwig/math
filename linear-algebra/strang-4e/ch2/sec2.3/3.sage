# 3. Prove that if a = 0, d = 0, or f = 0 (3 cases), the columns of U are dependent:
#    U = Matrix(SR, [[a,b,c],[0,d,e],[0,0,f]])

a,b,c,d,e,f = var('a b c d e f')
z = vector(ZZ, [0,0,0])

# "The columns of A are linearly independent when the only solution to Ax=0 is x=0."

# case 1: a = 0
# U would have a column of zeroes which cannot be independent from other
# vectors.
U = Matrix(SR, [[0,b,c],[0,d,e],[0,0,f]])
x = vector(ZZ, [1,0,0]) 
assert U*x == z

# case 2: d = 0
# U's second column would be missing a pivot 
U = Matrix(SR, [[a,b,c],[0,0,e],[0,0,f]])
x = vector(SR, [-1/a,1/b,0])
assert U*x == z

# case 3: f = 0
# U's third column would be missing a pivot.
# x3 has some flexibility here.
