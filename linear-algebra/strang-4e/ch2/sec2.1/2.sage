# 2. Which of the following subsets of R3 are actually subspaces?

# (a) The plane of vectors (b1,b2,b3) with first component b1 = 0

    # (a) is a subspace. Define the plane to be P, and suppose x and y are vectors in P.
    # x = (0,x2,x3) for some x2,x3
    # y = (0,y2,y3) for some y2,y3
    # x + y = (0, x2+y2, x3+y3) => x+y is in P
    # cx = (c0, cx2, cx3) = (0,cx2,cx3) => cx is in P.

# (b) The plane of vectors b with b1 = 1.

    # Not a subspace. For example, let x = (1,2,3).
    # x+x = (2,4,6) => x+x is not in the space.

# (c) The vectors b with b2b3 = 0 (this is the union of two subspaces, the
# plane b2 = 0 and the plane b3 = 0).

    # (c) is not a subspace.  For example,
    # x = (1,0,1) is in (c)
    # y = (0,1,0) is in (c)
    # x+y = (1,1,1) is not in (c)

# (d) All combinations of two given vectors (1,1,0) and (2,0,1).

    # (d) is a subspace as it spans all of R3.

# (e) The plane of vectors (b1,b2,b3) that satisfy b3-b2+3*b1 = 0.

    # (e) describes a nullspace so its a subspace.
