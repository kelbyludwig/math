# (a) "If A^2 is defined then A is necessarily square."

# True. In order for matrix A to be multiplied by B (i.e. A*B), A must be an
# `a` by `b` matrix and B must be a `b` by `c` matrix. If A is squared, the
# column and row length must be the same.

# (b) "If AB and BA are defined then A and B are square."

# False. Assume A is an [a x b] matrix and B is a [c x d] matrix. For AB to be
# defined, b must equal c. In order for BA to be defined, d must equal a.  i.e.
# b == c, and d == a. Define e = b = c and f = d = a.  For AB and BA to be
# defined, A must be a [f x e] matrix and B must be a [e x f] matrix. 
# f is not required to equal e.
A = Matrix(ZZ, [[1],[2]])
B = Matrix(ZZ, [1,2])
A*B
B*A

# (c) "If AB and BA are defined then AB and BA are square."

# True.
# Let A be a [a x b] matrix.
# Let B be a [c x d] matrix.
# For AB to be defined: b == c.
# For BA to be defined: d == a.
# Define e = b = c and f = d = a.
# Rewrite A to be a [f x e] matrix.
# Rewrite B to be a [e x f] matrix.
# Therefore, AB is a [f x f] matrix. Which is square.
# Therefore, BA is a [e x e] matrix. Which is square.

# (d) "If AB = B then A = I"

# False. 
A = Matrix(ZZ, [[0,0],[0,0]])
B = Matrix(ZZ, [[0,0],[0,0]])
I = Matrix.identity(2)
assert A*B == B
assert A != I
