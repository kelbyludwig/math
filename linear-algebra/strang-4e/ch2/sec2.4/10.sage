# 10. If A*x = b always has at least one solution, show that the only solution to A^T * y = 0 is
#     y = 0. Hint: What is the rank?

# A * x = b has at least one solution, therefore r must equal m 
# (otherwise, A*x = b could have zero solutions).  
# N(A^T) has dimension m - r. 
# For A^T * y = 0, y must be in A's left nullspace.  
# A is m by n, so m = r. Therefore N(A^T) has dimension 0. 
# That means that A must have a single vector 0 in its left nullspace.
