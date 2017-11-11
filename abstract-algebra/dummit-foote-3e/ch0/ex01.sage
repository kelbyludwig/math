# In Exercises 1 - 4 let A be the set of 2 x 2 matrices with real number
# entries. 
# Let M = Matrix(RR, [[1, 1], [0, 1]])
M = Matrix(RR, [[1, 1], [0, 1]])
# Let B = { X in A s.t. MX = XM }
Bfilter = lambda x: M*x == x*M
# 1. Determine which of the following elements of A lie in B:
aset = [ Matrix(RR, [[1, 1], [0, 1]]),
         Matrix(RR, [[1, 1], [1, 1]]),
         Matrix(RR, [[0, 0], [0, 0]]),
         Matrix(RR, [[1, 1], [1, 0]]),
         Matrix(RR, [[1, 0], [0, 1]]),
         Matrix(RR, [[0, 1], [1, 0]]) ]
for a in filter(Bfilter, aset):
    print("%s\n---" % a)
# [ 1.00000000000000  1.00000000000000]
# [0.000000000000000  1.00000000000000]
# ---
# [0.000000000000000 0.000000000000000]
# [0.000000000000000 0.000000000000000]
# ---
# [ 1.00000000000000 0.000000000000000]
# [0.000000000000000  1.00000000000000]
# ---

# 2. Prove that if P and Q are in B, then P + Q is in B (where + denotes matrix summation)

# If P is in B then MP = PM
# If Q is in B then MQ = QM
# If P + Q is in B, then M(P+Q) must equal (P+Q)M
# Proof:
# The LHS can be rewritten as: M(P + Q) = MP + MQ 
# The RHS can be rewritten as: (P + Q)M = PM + QM
# Since P and Q are in B: MP = PM and MQ = QM
# Therefore:  MP + MQ = PM + QM = MP + QM = MP + MQ

# 3. Prove that if P and Q are in B then P * Q is in B.

# If P is in B then MP = PM
# If Q is in B then MQ = QM
# If P * Q is in B, then MPQ must equal PQM
# Proof: 
# MPQ = (PM)Q = PMQ = P(MQ) = PQM

# 4. Find conditions on p, q, r, s which determine precisely when [[p, q], [r, s]] is in B.
a,b,c,d = var('a b c d')
p,q,r,s = var('p q r s')
A = Matrix(SR, [[a, b], [c, d]])
B = Matrix(SR, [[p, q], [r, s]])
L = A*B
R = B*A
# Using the symbolic notation from above, the following conditions must be true:
# 1. a*p + b*r == a*p + c*q
# 2. a*q + b*s == b*p + d*q
# 3. c*p + d*r == a*r + c*s
# 4. c*q + d*s == b*r + d*s

# 5. Determine whether the following functions f are well defined:
# (a) f : Q -> Z defined by f(a/b) = a
# (b) f : Q -> Q defined by f(a/b) = a^2 / b^2

# (a) is not well-defined. f(1/1) = 1, f(2/2) = 2, but 1/1=2/2
# (b) is well-defined.

# 6. Determine whether the function f : R^+ => Z defined by mapping a real number r to the first digit to the right of the decimal point in a decimal expnsion of r is well-defined.

# If reals like 1.9999999... and 2.0 are considered equal than this function is
# not well-defined.

# 7. Let f : A => B be a surjective map of sets. Prove that the relation
#    a ~ b iff f(a) = f(b)
# is an equivalence relation whose equivalence classes are the fibers of f.

# Suppose a, b, c are in A.
# If f(a) = f(a) then a ~ a so the reflexive property holds
# If f(a) = f(b) => f(b) = f(a) then a ~ b => b ~ a so the symmetric property holds
# If f(a) = f(b) and f(b) = f(c) => f(a) = f(c) then a ~ b and b ~ c => a ~ c so the transitive property holds
# I'm not sure what I'm supposed to do with the equivalence class part... but this seems okay.
