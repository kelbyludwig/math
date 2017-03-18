# 4. If Q1 and Q2 are orthogonal matrices, so that Q^T*Q == I, show that Q1*Q2
# is also orthogonal. If Q1 is rotation through theta, and Q2 is rotation
# through phi, what is Q1*Q2. Can you find the trigonometric identities for
# sin(theta + phi) and cos(theta + phi) in the matrix multiplication Q1*Q2?

# Assume Q1*Q2 is _not_ orthogonal but Q1 and Q2 are.
# => A1)   (Q1*Q2)^T * Q1*Q2 != I
# => A2)   Q2^T*Q2 == I and Q1^T*Q1 == I
# We can rewrite A1 as follows:
# (Q1*Q2)^T * Q1*Q2  = Q2^T*Q1^T*Q1*Q2 
# = Q2^T*(I)*Q2 = Q^2*Q2 = I
# In other words, A1 is contradicted if A2 is true.
# Therefore, it must be true that Q1*Q2 is also orthogonal.

# Q1 is rotation through theta
theta, phi = var('theta phi')
Q1 = Matrix(SR, [[cos(theta), -sin(theta)],[sin(theta), cos(theta)]])
Q2 = Matrix(SR, [[cos(phi), -sin(phi)],[sin(phi), cos(phi)]])

sin(theta+phi) == sin(theta)*cos(phi) + cos(theta)*sin(phi)
cos(theta+phi) == cos(theta)*cos(phi) + sin(theta)*sin(phi)
sin(theta-phi) == sin(theta)*cos(phi) - cos(theta)*sin(phi)
cos(theta-phi) == cos(theta)*cos(phi) - sin(theta)*sin(phi)
# ^ yes those identities are in Q1*Q2
# which makes sense because you are applying two rotation
# transformations which is like rotating the space by theta+phi
