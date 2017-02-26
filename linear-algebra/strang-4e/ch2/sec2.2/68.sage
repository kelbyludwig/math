# 68. Show by example that these three statements are generally false:
# (a) A and A^T have the same nullspace.
# (b) A and A^T have the same free variables.
# (c) If R is the reduced from rref(A) then R^T is rref(A^T).

# (a)
# A and A^T will likely not have the same rank so their nullspace will have different
# dimensions.

# (b)
# If A is a non-square matrix (which is "generally" more common) the number of
# free variables could change (either increase or decrease) after a transpose
# operation. 

# (c)
# Tranposing a matrix will likely turn it into a completely seperate system of
# equations. That means the RREF form of these matrices will likely have no
# relation. (I think I could use a variation on this answer for all three
# problems :P) 
