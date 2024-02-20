# Creating the vector x and y  
x <- c(1,2,3)
y <- c(2,1,-3)

# using the transpose function t(x) to tanspose the single vector
x<- t(x)
y<- t(y)

# As we are passing single 1d array or a vector as the parameter, the t(x) function treates the single vector as the col of an matrix and then transposes to the row which is the output. 

# calculatig the dot product of the transposed matrices
dot<- sum(x*y)
dot


# Traditional Way 

# Convert the vector to matrix
x_mat = matrix(x)
x_mat
y_mat = matrix(y)
y_mat

# use the t() to transpose
x_t = t(x_mat)
y_t = t(y_mat)

#dot product of the transposed matricx
sum(x_t * y_t)
