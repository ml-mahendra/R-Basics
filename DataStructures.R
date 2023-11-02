################### Vectors ########################################

vec1 <- c(1,2,3,4)  #combination of the ll the values mentioned inside. c Stands for Combination
vec1

vec2 <- c("hello", "greetings") 

vec3 <- c(2+4i)

vec4 <- c(123, "Hi")  #Typecast all the elements to character class. 

#checking the class type of all the vectors, to know the data type of vector elements

vec1
class(vec1)

vec2
class(vec2)

vec3
class(vec3)

vec4
class(vec4)

v5 <- 1:100

v5[2] #Extract the 2nd ele
v5[length(v5)-4] #Extract the 4th ele from the end of the vector.

 
############# Matrix ###########################################

m1 <- matrix(c(1:8), nrow = 4, ncol = 2) # Creates an array with 4 rows and 2 columns. By Default it will add the values in col sequence. 

m2 <- matrix(c(12:24), nrow = 2, ncol = 4, byrow = TRUE) # If you pass more values or less values that either be more for the given rows and columns or less, it will throw an warning. 

class(m1)
dim(m1)

# When you want to add two or more matrices, It is must that the matrices are of same dimension. 

m1 + m2 # Both are different dimensions, so it will through an error. 

m3 <- matrix(c(20:30), nrow =4, ncol = 2)

m1 + m3 # Both are of same dimensions

# TO do the dot product (Matrix multiplication), the no of col of fitst matrix should be equal to the rows of the second matrix

m1 %*% m2 # %*% is the dot product 

m1 %*% m3 # Different dimensions for the dot product


# Extract an ele from the matrix

m1[  3,2  ]  # The first part is row and 2nd is col

n <- m1[4,1]
class(n) 

n1 <- m1 [2, ] # This means to extract all the col of the row 2

n2 <- m1[,1] # Here we are extracting, all the rows of 1st col
class (n2) 


n3 <- m1[ ,c(1:2)] # here we are extracting all row and the tow cols. 
class(n3) # Now the class of n3 will be Matrix or array




####################### Arrays ##################################

# Array is as same as matrix but it is an multi-dimensional datastructure. 

arr1 <- array(c(1:20), dim = c(2,3,4)) # Here we are creating an array with the values 1 to 20 and the dimenions of 2 rows and 3 cols and the no of matrixes in te array are 4. 
# when we want pass multiple values we use c that is we are passing an vector. 

arr1[, ,2] # this will extract the 2nd matrix from the arr1




######################## List ########################

list1 <- list(c(1:10), matrix(1:8, nrow=2, ncol=4), list(c(10:20)))

# Values of the list1 : 1st ele is a vector, 2nd is matrix , 3rd is an list. 

#Extract the elements of the list

list1[1] # when we use this [] command, this will give the ele of list that is the out is also the list. the class will be list
class(list1[1])

t <- list1[[1]] # Use the double squared brackets to get the exact data of the ele, that is vector or integer in our case. 
class(t)



################## Data Frame #####################

df <- data.frame(Class = c('1','2','3'), Students = c("Max", "Bill", "Leo"))
dim(df)

df[3, 2] # Extract 3rd row and 2nd col element.

colnames(df)
df[2,'Students'] # Gives the ele of 2nd row in the stu col. 


################## Factors #######################

fac1 <- factor(c('high','low','med','aqua'), levels = c('auqa','med','low','high')) #assign the values for the ele in the factor.
as.integer(fac1)
str(fac1)






