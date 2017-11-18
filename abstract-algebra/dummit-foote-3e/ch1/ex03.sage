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

# 11. Let s be the m-cycle (1 2 ... m). Show that s^i is also a
# m-cycle iff i is relatively prime to m.

# m = 6
# s   = (a1 a2 a3 a4 a5 a6)
# s^2 = (a1 a3 a5)(a2 a4 a6)

# a cycle is created by iteratively calling s^i on some 
# starting element
# s^i(j) = i+j % m
# s^i(s^i(j)) = s^i(i+j % m) = i+i+j % m
# s^i(s^i(s^i(j))) = ... = i+i+i+j % m
# ...
# in order for s^i to be a m-cycle, iteratively calling
# s^i must produce m different elements.
# that is the following constraint must hold:
# xi + j != yi + j (mod m) for any 1 <= x,y <= m s.t. x!=y
# this simplifies to:
# ix != iy (mod m) 
# which if gcd(i, m) != 1 this will not hold for
# x = m / gcd(i, m) [derived from x*gcd(i,m) = m]
# y = m
# which are both in the range 1 <= x,y <= m
# but if gcd(i, m) = 1 this would imply that x = y which
# means the constraint still holds
