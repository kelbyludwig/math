# 1. Let s be the permutation 
#       1->3    2->4    3->5    4->2    5->1
# and let t be the permutation
#       1->5    2->3    3->2    4->4    5->1
# Find the cycle decompositions of each of the following
# permutations: s, t, s^2, st, ts, (t^2)s.

# s:      (1 3 5)(2 4)
# t:      (1 5)(2 3)
# s^2:    (1 5 3)
# st:     (1 2 4 3)
# ts:     (2 5 3 4)
# (t^2)s: (1 3 5)(2 4)

# 5. Find the order of (1 12 8 10 4)(2 13)(5 11 7)(6 9).

# lcm(5, 2, 3, 2) = 30

# 10. Prove that if s is the m-cycle (a1 a2 ... am), then for all
# t in {1, 2, ..., m}, s^i(a_k) = a_{k+i}, where k+i is replaced
# by its least reside mod m when k+i > m. Deduce that ord(s) = m.

# s^0(a_k) = a_k 
# s^1(a_k) = a_{(k+1)%m}
# s^i(a_k) = s^(i-1)(a_{k+1%m}) = ... = a_{(k+i+1)%m}

# if s(a_k) = a_{(k+1)%m} the smallest k that maps to a1 is k = m.


