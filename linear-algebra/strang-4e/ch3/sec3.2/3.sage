# 3. What multiple of a = (1,1,1) is closest to the point b = (2,4,4)?
#    Find also the point closest to a on the line through b.

a = vector(ZZ, [1,1,1])
b = vector(ZZ, [2,4,4])

# find the projection of b onto the span of a.
xhat = a.dot_product(b) / a.dot_product(a)
p = xhat*a
e = b - p
# 10/3 is the multiple of a is the closest to b
assert e.dot_product(a) == 0

xhat2 = b.dot_product(a) / b.dot_product(b)
p2 = xhat2*b
e2 = a - p2
# (5/9, 10/9, 10/9) is the closest to a on the line through b.
assert e2.dot_product(b) == 0
