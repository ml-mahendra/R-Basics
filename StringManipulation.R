
# sub & gsub

v1 <- c('R tutorial', 'Python tutorial', 'rust Tutorial julia tutorial')

v2 <- sub('tutorial','classes',v1) # this will replace tutorial with classes. Sub is case sensitive. so it will ignore rust Tutorial as it has T. 

v3 <- sub ('tutorial','classes',v1, ignore.case = TRUE) # Now we made ignore case true, which means it avoids cases and replace all.

#sub command will replace on ly the first occurance of the word. so we use gsub command

v4 <- gsub('tutorial','classes',v1, ignore.case = TRUE)


#grepl & grep

v5 <- c('R tutorial', 'Python tutorial', 'rust Tutorial' ,'julia classes')
t <- grepl('tutorial',v5) # grepl is used to search.. it will return an boolean value. what we want to search and where we need to mention them in the grepl(,)

c <- grep('tutorial',v5) # used to search at which place the search str is present. It gives indexs of the search ele.

v5[c] # extract the index of the search elements. 



# Stringssplit

a<- "hello this is r programming"
b<- strsplit(a," ")  # When used strsplit the out put will be in list by default.
class(b)

c<- unlist(b) # to unlist 
class(c)
