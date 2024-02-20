# For Loop
for (i in 1:10) {
  print(i)
}

# length of unique of every column
for (j in 1:ncol(heart_data)) {
  colmn <- heart_data[,j]
  clen <- length(unique(colmn))
  print(paste('the length of the unique for the column: ', colnames(heart_data[j]), 'is : ', clen))
}



# While Loop
k=2
while (k<50) {
  print(k)
  k<- k+2  
}

m <- 1
while (!colnames(heart_data[m]) == 'MaxHR') {
  colmn <- heart_data[,m]
  clen <- length(unique(colmn))
  print(paste('the lenght of the unique for the column: ', colnames(heart_data[m]), 'is : ', clen))
  m <- m+1
}





######## User define Function
unique_len_fun <- function(df)
{
  heart_data = df
  for (j in 1:ncol(heart_data)) {
    colmn <- heart_data[,j]
    clen <- length(unique(colmn))
    print(paste('the lenght of the unique for the column: ', colnames(heart_data[j]), 'is : ', clen))
   }
  return ("I am Done")
  }

unique_len_fun(heart_data)  
