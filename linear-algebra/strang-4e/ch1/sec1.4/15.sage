# suppose A commutes with every 2x2 matrix
# show that a = d and b = c = 0
# i.e. A is a multiple of the identity

# Proof by contradiction: 
# suppose a == d, b = c = 0, and AB != BA.
a,b,c,de,f,g,h = var('a b c d e f g h')

# A is a symbolic matrix that fits our constraints for A
# i.e. a == d and b == c == 0
A = Matrix(SR, 2,2, [a,0,0,a])

# B is any other 2x2 matrix
B = Matrix(SR, 2,2, [e,f,g,h])

# NOTE(kkl): I believe this proves that matrices that are
# multiples are the identity are always commutative but I don't
# believe this proves that the *only* matrices that are always
# commutative are in that form.
try:
    assert A*B != B*A
except AssertionError:
    print("contradiction: failed to assert commutativity.")
    print("A*B:")
    print(A*B)
    print("B*A:")
    print(B*A)
