# 9. (a) If P = P^T * P show that P is a projection matrix.
#    (b) What subspace does the matrix P = 0 project onto?

# "The projection matrix P... has P^T = P and P^2 = P" (pg 213 of 5e)
# Suppose P = P^T * P, then in order to be a projection matrix both (1) and (2)
# must be true.
# (1) P^T = P
# Assume P = P^T * P
# P^T = P^T* (P^T)^T = P^T * P = P. (i.e. P^T = P)
# (2) P^2 = P
# Assume P = P^T * P
# P^2 = (P^T * P) * (P^T * P), using (1) we know that P = P^T * P 
# => P^2 = P^T * P * P = P*P = P^2
# Since (1) and (2) are true, P = P^T * P implies P is a projection matrix.

# (b) P projects onto span(0)
