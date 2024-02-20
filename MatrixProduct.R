# Creating the matrices ,1 and m2
m1 <- matrix(c(1,4, 2,5),nrow = 2, ncol = 2)
m1
m2 <- matrix(c(1,0, 0,2), nrow =2,ncol=2)
m2

# Calculating their transpose
m1_t  = t(m1)
m1_t
m2_t = t(m2)
m2_t

# Calculating the sum of the transposed matrices
sum = m1_t + m2_t
sum

# Calculating inner product
product = m1_t %*% m2_t
product


