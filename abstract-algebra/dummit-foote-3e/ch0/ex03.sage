# 4. Compute the remainder when 37^100 is divided by 29
Z29 = Zmod(29)
assert Z29(37^100) == 23

# 6. Prove that the squares of the elements in Z/4Z are just 0bar and 1bar.

# Z/4 = {0, 1, 2, 3}
# 0^2 = 0
# 1^2 = 1
# 2^2 = 0
# 3^2 = 1
# any element larger than 3 will have a least residue that maps to one of 
# these elements and therefore would be {0, 1} once squared.

# 7. Prove for any integers a and b that a^2 + b^2 never
# leaves a remainder of 3 when divided by 4 (use the previous exercise).

# elements in Z/4Z once squared will only either be 0 or 1.
# no combination of x + y where (x,y) are either 0 or 1 will equal 3.

# 8. Prove that the equation a^2 + b^2 = 3c^2 has no solutions in nonzero
# integers a, b, c.
