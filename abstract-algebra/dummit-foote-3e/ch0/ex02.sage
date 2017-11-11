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

# 7. If p is prime prove that there do not exist nonzero integers a and b such that a^2 = pb^2 (i.e. sqrt(p) is not a rational number)

# assume a^2 = pb^2

# let a have a factorization of p1^a1 * p2^a2 * ... * ps^as
# let b have a factorization of q1^b1 * q2*b2 * ... * qt*bt

# a^2 would have a factorization of (p1^2*a1) * (p2^2*a2) * ... * (ps^2*as)
# b^2 would have a factorization of (q1^2*b1) * (q2^2*b2) * ... * (qt^2*bt)

# if a^2 = pb^2 there would be an odd power of p in a^2's factorization, as all
# of the exponents in b^2's factorization are even.
# this cannot be true, as the non-zero prime powers of a^2's factorization must
# be even.

# 10. Prove for any given positive integer N there exist only finitely many integers n
# with phi(n) = N where phi denotes Euler's phi-function. Conclude in particular that
# phi(n) tends to infinity as n tends to infinity.

# by definition we know:
# N = p1^(a1 - 1) * (p1 - 1) * p2^(a2 - 1) * (p2 - 1) * ... * ps^(as - 1) * (ps - 1)

# in other words, phi(n) is a function of the factors of n. phi(n) will grow if n has more
# different primes, larger primes, or larger exponents for its factors. as n
# grows, the number and/or size of those prime powers and/or their exponents
# would grow too. so it makes sense that as n tends towards infinity phi(n) does as
# well.

# intuitively, it seems unlikely that values of n much larger than N would continue
# produce n. if n is very large it must either: 1) have prime powers larger than N
# 2) have enough primes whose product is larger than N 3) have small primes that, 
# once it is raised to a power, is larger than N.
# i know thats a shitty proof but i'm okay with that

# 11. prove that if d divides n than phi(d) divides phi(n) where phi is Euler's phi function.

# d | n => n = dx for some x
# phi(d) | phi(n) = > phi(n) = phi(d)*y for some y

# d has prime factorization d = p1^a1 * ... * ps^as
# n has prime factorization n = q1^b1 * ... * qt^bt

# phi(d) = p1^(a1-1) * (p1-1) * ... * ps^(as-1) * (ps-1)
# phi(n) = q1^(b1-1) * (q1-1) * ... * qt^(bt-1) * (qt-1)

# if gcd(d,x) = 1
# phi(n) = phi(dx) = phi(d)*phi(x) => phi(d) | phi(n)

# if gcd(d,x) != 1
# even though there are some shared prime factors between d and x, it will
# still be possible to rewrite phi(n) = q1^(b1-1) * (q1-1) * ... * qt^(bt-1) * (qt-1) 
# as phi(d) * some number.
