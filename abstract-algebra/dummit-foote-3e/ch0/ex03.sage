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

# considering the equation mod 4...
# a^2 + b^2 = 3c^2  (mod 4)
# based on the results from 6, this will only hold with a,b,c are zero or the
# equivalence class of 2 (mod 4).
# since we are only interested in nonzero solutions, a,b,c have to be in the 
# equivalence class of 2 (mod 4)
# if a,b,c are all in the equivalence class 2 (mod 4), they all have a shared
# factor of 2
# we can then write: a = 2a', b = 2b', c = 2c'
# and then rewrite the equation as:
# (2a')^2 + (2b')^2) = 3(2c')^2  (mod 4)
# =>
# 2(a'^2 + b'^2) = 6(c'^2) (mod 4)
# a'^2 + b'^2 = 3c'^2 (mod 4)
# which makes (a'=a/2, b'=b/2, c'=c/2) another solution to the equation.

# if a',b',c' are a solution to the equation they *also* must have a shared
# factor of 2 (again from results of prob 6). that is: a'' = a'/2 = a/4, b'' = b'/2 = b/4, etc.
# this behavior will continue on until a,b, or c can no longer be an integer
# so there is a contradiction.
