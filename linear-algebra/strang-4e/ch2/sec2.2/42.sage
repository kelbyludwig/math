# 42. If Ax = b has infinitely many solutions, why is it impossible for Ax = B
# (new right-hand side) to have only one solution? Could Ax = B have no
# solution?

# Let A be an m by n matrix. If Ax = b has infinitely many solutions, 
# one of the following statements must be true:
    # Statement A) m < n AND Rank(A) = m
    # or
    # Statement B) Rank(A) < m AND Rank(A) < n

# If Ax = B has one solution, then one of the follwing statements must be true:
    # Statement C) Rank(A) = n AND n < m
    # or
    # Statement D) Rank(A) = n AND Rank(A) = m

# Assume statement A is true:
    # Statement C cannot be true. Statement A assumes m < n. This contradicts
    # Statement C which states n < m.

    # Statement D cannot be true. Statement A assumes m < n. This contradicts
    # Statement D which states n == m.

# Assume statement B is true:
    # Statement C cannot be true. Statement B assumes Rank(A) < n. This
    # contradicts Statement C which states Rank(A) = n.

    # Statement D cannot be true. Statement B assumes Rank(A) < n. This
    # contradicts Statement D which states Rank(A) = n.

# Therefore, working under the assumption that either Statement A or Statement
# B are true, contradicts the requirements for Ax = B to have one solution.

# If Ax = b has infinite solutions, Ax = B could have zero solutions.  This
# could be true if Rank(A) < m AND Rank(A) < n.

