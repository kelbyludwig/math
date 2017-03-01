# 34. Prove that if V and W are three-dimensional subspaces of R^5, then V and
# W must have a nonzero vector in common. Hint: Start with bases for the two
# subspaces, making six vectors in all.

# Let V's basis vectors be: [v1, v2, v3]
# Let W's basis vectors be: [w1, w2, w3]
# Assume all basis vectors in W are indepdent from all basis vectors in V. 
# If that is the case, we can add the vector w1 to V and increase the dimension.
# This can be done wth w2 as well. However, at that point, V would have rank 5
# and would span R^5. If w3 was then added, it must be the case that w3 is 
# not indepdent from the basis of V.
