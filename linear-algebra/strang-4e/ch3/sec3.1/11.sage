# 11. The fundamental theorem is often stated in the form of "Fredholm's
# alternative:" For any A and b, one and only one of the following systems has
# a solution:
#   (i) Ax = b
#   (ii) A^T*y = 0, y^T*b != 0
# Either b is in the column space C(A) or there is a y in N(A^T) such that y^T*b != 0.
# Show that it is contradcitory for (i) and (ii) to both have solutions.

# Assume both (i) and (ii) are true. 

# Ax = b => y^T*A*x != 0 and A^T*y = 0
# We have two equations:
# 1) y^T*A*x != 0 
# 2) A^T*y    = 0
# If we transpose (2), We have:
# 2) (A^T*y)^T = 0^T => y^T*A = 0^T
# We can inject the new form of (2) into (1)
# 1) 0^T*x != 0
# Which cannot be true. Therefore, both (i) and (ii) cannot both have solutions.
