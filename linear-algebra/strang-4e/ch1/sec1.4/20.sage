t1 = var('t1')
t2 = var('t2')
ASF = lambda t: Matrix(SR, [[cos(t), -sin(t)],[sin(t), cos(t)]])

# symbolic trig identities
ti = {}
ti[cos(t1 + t2)] = cos(t1)*cos(t2) - sin(t1)*sin(t2)
ti[sin(t1 + t2)] = sin(t1)*cos(t2) + cos(t1)*sin(t2)
tif = lambda t: t.substitute(ti)

M1 = ASF(t1) * ASF(t2)
M2 = ASF(t1 + t2)

# apply the trig identies to each row
M2[0] = map(tif, M2[0])
M2[1] = map(tif, M2[1])
assert M1 == M2
