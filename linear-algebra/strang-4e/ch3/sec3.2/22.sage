# 22. Project b = (1,0,0) onto the lines through a1 and a2 in Problem 21 and
# also onto a3 = (2,-1,2). Add the three projection p1 + p2 + p3.

b = vector(ZZ, [1, 0, 0])

a1 = vector(ZZ, [-1,2,2])
a2 = vector(ZZ, [2,2,-1])
a3 = vector(ZZ, [2,-1,2])

xhat1 = a1.dot_product(b) / a1.dot_product(a1)
p1 = xhat1*a1
e1 = b - p1
assert e1.dot_product(a1) == 0

xhat2 = a2.dot_product(b) / a2.dot_product(a2)
p2 = xhat2*a2
e2 = b - p2
assert e2.dot_product(a2) == 0

xhat3 = a3.dot_product(b) / a3.dot_product(a3)
p3 = xhat3*a3
e3 = b - p3
assert e3.dot_product(a3) == 0

assert p1+p2+p3 == b
