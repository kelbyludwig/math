# 8. If w1, w2, w3 are independent vectors, show that the sums v1 = w2 + w3, 
#    v2 = w1 + w3, v3 = w1 + w3 are independent. (Write c1v1 + c2v2 + c3v3 = 0 in
#    terms of the ws. Find and solve equations for the c's).

w1,w2,w3,c1,c2,c3 = var('w1 w2 w3 c1 c2 c3')

v1 = w2 + w3
v2 = w1 + w3
v3 = w1 + w3

c1*v1 + c2*v2 + c3*v3 # c2*(w1 + w3) + c3*(w1 + w3) + c1*(w2 + w3)
c2*w1 + c2*w3 + c3*w1 + c3*w3 + c1*w2 + c1*w3
c2*w1 + c3*w1 + c1*w2 + c1*w3 + c2*w3 + c3*w3
w1*(c2+c3) + w2*(c1) + w3*(c1+c2+c3) # still a linear combination of w1,w2,w3 which is indepedent
