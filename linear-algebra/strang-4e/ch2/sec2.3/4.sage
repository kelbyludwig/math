# 4. If a, d, f in Problem 3 are all nonzero, show that the only solution to Ux = 0
# is x = 0. Then U has independent columns.

# Assume there is a non-zero vector y s.t. Ay = 0. i.e.
# a*y1 + b*y2 + c*y3 = 0
#        d*y2 + e*y3 = 0 
#               f*y3 = 0
# 
# Since the problem assumes f is nonzero and we assume f*y3 = 0, y3 must be zero.
# The linear equations can be rewritten as:
# a*y1 + b*y2 = 0
#        d*y2 = 0 
# Similar logic can be applied to y2 (and then y1). This is a contradiction and y must
# be the zero vector.
