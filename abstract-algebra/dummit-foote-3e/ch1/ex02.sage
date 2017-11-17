# 1. Compute the order of each of the elements in the following groups:
# (a) D_6
# (b) D_8
# (b) D_10

# (a)
# doing this manually...
# D_6 = D_2*3 = {1, r, r^2, s, sr, sr^2}
# ord(1)    = 1 | 1
# ord(r)    = 3 | r^3 = 1
# ord(r^2)  = 3 | (r^2)(r^2)(r^2) = r^3*r^3 = 1*1
# ord(s)    = 2 | s^2 = 1
# ord(sr)   = 2 | (sr)^2 = srsr = ss(r^-1)r = ss = 1
# ord(sr^2) = 2 | (sr^2)^2 = srrsrr = sr(s(r^-1))rr = srsr = 1
manual_solutions = [1, 3, 3, 2, 2, 2]

# doing this with sage...
D_6 = DihedralGroup(3)
assert D_6.order() == 6
# https://www.math.ucdavis.edu/~anne/SQ2014/thematic_tutorials/group_theory.html#permutation-groups
# sage uses "disjoint cycle notation" to describe permutations. wikipedia describes this notation here: 
# https://en.wikipedia.org/wiki/Permutation#Cycle_notation
# elem.dict() is an intuitive (albeit longer) representation of a Dihedral Group element.
auto_solutions = map(lambda x: x.order(), D_6)
from collections import Counter as ctr
assert ctr(manual_solutions) == ctr(auto_solutions) # not a perfect comparison but good enough

# (b)
# doing this manually...
# D_8 = D_2*4 = {1, r, r^2, r^3, s, sr, sr^2, sr^3}
# ord(1)    = 1
# ord(r)    = 4 | rrrr = r^4 = 1
# ord(r^2)  = 2 | (r^2)(r^2) = r^4 = 1
# ord(r^3)  = 4 | (r^3)(r^3)(r^3)(r^3) = r^12 = (r^4)^3 = 1
# ord(s)    = 2
# ord(sr)   = 2 | srsr = ss(r^-1)r = 1*1 = 1
# ord(sr^2) = 2 | srrsrr = srs(r^-1)rr = srsr = 1
# ord(sr^3) = 2 | srrrsrrr = srrs(r^-1)rrr = srrsrr = 1

# this already feels pretty redundant so i'm moving on...
