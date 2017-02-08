# 40. True or false (with a counterexample if false and a reason if true):
# (a) A 4 by 4 matrix with a row of zeros is not invertible.
# (b) A matrix with Is down the main diagonal is invertible.
# (c) If A is invertible then A^-1 is invertible.
# (d) If A^T is invertible then A is invertible.

# (a) True. From pg. 55: "If A is invertible, it has n pivots." 

# (b) False? Not 100% sure what "Is down the main diagonal" means.
A = Matrix(RR, [[1,0,0],[0,1,0],[0,0,1],[0,0,1]])

# (c) True. If A is invertible, A*A^-1 = I. By definition, A is the inverse
# of A^-1. Therefore, if A is invertible, A^-1 is as well.

# (d) True. In order for A^T to be inverse A^T must be sqaure. This means that
# A is also square. Furthermore, transposing a matrix does not affect the
# pivots. Up to this point in th book, the only defined requirement for a
# matrix having an inverse is that it has n pivots. Transposing a square
# matrix would not change that property.
