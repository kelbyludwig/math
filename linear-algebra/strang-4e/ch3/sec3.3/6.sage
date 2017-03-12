# 6. Find the projection of b onto the column space of A:
A = Matrix(ZZ, [[1,1],[1,-1],[-2,4]])
b = Matrix(ZZ, [[1],[2],[7]])
# Split b into p + q with p in the column space and q perpendicular to
# that space. Which of the four subspaces contains q?

AT = A.transpose()
P = A*(AT*A).inverse()*AT
p = P*b
q = b - p
assert b == p + q # splitting up b
assert q.transpose()*A.column(0) == 0 # oh hey look q is perp. to A's columns
assert q.transpose()*A.column(1) == 0

# q is in the nullspace of A^T, as it is perp. to C(A)
