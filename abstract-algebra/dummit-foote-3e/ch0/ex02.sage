# 1. For each of the following pairs of integers a and b, determine their greatest common divisor, their least common multiple, and write their greatest common divisor in the form ax + by for some integers x and y.

# (a) a = 20, b = 13
# gcd:  20 = 1*13 + 7
#       13 = 1*7 + 6
#        7 = 1*6 + 1
#        6 = 6*1 + 0
assert gcd(20, 13) == 1
# xgcd:  1 = 7 - 6
#          = (20 - 13) - (13 - 7)
#          = 20 - 13 - 13 + 7
#          = 20 - 2*13 + 20 - 13
#          = 2*20 - 3*13
assert 2*20 - 3*13 == 1
# lcm: (20*13) / 1 = 260
assert lcm(20, 13) == 260

# (b) a = 69, b = 372
# gcd: 372 = 5*69 + 27
#       69 = 2*27 + 15
#       27 = 1*15 + 12
#       15 = 1*12 + 3
#       12 = 4*3 + 0
assert gcd(69, 372) == 3
# xgcd: 3 = 15 - 12
#         = (69 - 2*27) - (27 - 15)
#         = 69 - 3*27 + 15
#         = 69 - 3*(372 - 5*69) + (69 - 2*27)
#         = 69 - 3*372 + 15*69 + 69 - 2*27
#         = 17*69 - 3*372 - 2*27
#         = 17*69 - 3*372 - 2*(372 - 5*69)
#         = 17*69 - 3*372 - 2*372 + 10*69
#       3 = 27*69 - 5*372
# lcm: (69*372) / 3 = 8556
assert lcm(69, 372) == 8556

# and so on...

# 2. Prove that if the integer k divides the integers a and b then k divides
#    as + bt for every pair of integers s and t.

# if k | a => a = k*x for some x
# if k | b => b = k*y for some y

# assume k | a
# assume k | b
# if k | as + bt for all pairs of integers (s, t) then
#   as + bt = k*z for some z
# we can rewrite:
#   as + bt
#   kxs + kyt
#   k(xs + yt)
# which is implies as + bt divides k

# 3. Prove that if n is composite then there are integers a and b such that 
#    n divides ab but n does not divide either a or b

# if n is composite it has at least one divisor not equal to 1 or n. 
# let n = st where s != 1 or s != n and t is a product of the remaining divisors of n
# t cannot be 1 as that would imply that n is prime. 
# t also cannot be n as that would imply that s is 1.
# both s and t must be strictly less than n.
# let a = s
# let b = t 
# n cannot divide neither s or t because s,t < n.
# however, ab = st = n and n | n.
