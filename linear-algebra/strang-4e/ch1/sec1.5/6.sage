
# 6. Find E^2 and E^8 and E^(-1) if E = Matrix(ZZ, [[1,0],[6,1]])
E = Matrix(ZZ, [[1,0],[6,1]])
E2 = E^2
E8 = E^8
EINV = E.inverse()

# Note, that E^x => Matrix(ZZ, [[1,0],[6*x,1]])
six = var('six')
ES = Matrix(SR, [[1,0],[six,1]])
ES2 = ES^2
ES8 = ES^8
ESINV = ES.inverse()

# I think the point here is to show how matrix mult can be seen as function application.
# E*A => "Apply the function E to A"
# E^2*A = E*E*A => "Apply the function E to A, then apply the function E to the result"
# etc...
# Due to the way that matrix mult works, the given E will just scale 6 by the
# number of times E is applied.
