heart_data <- read.csv('heart.csv')
class(heart_data)
View(heart_data)
dim(heart_data)
str(heart_data)
head(heart_data) # By default it will disply only first six rows
head(heart_data, 20) # gives first 20 rows
tail(heart_data) # Last 6 rows

# Changing the column Names

colnames(heart_data)
row.names(heart_data)

colnames(heart_data)[1] <- 'Paitent Age'  # Changin the first col name


# Unique values in all col

heart_data$ChestPainType  # use $ to get the data of that col.

unique(heart_data$ChestPainType) # unique value of chestpainttype col, length will give the lenght of all unique values. 

length(unique(heart_data$MaxHR)) 



###################### Subsetting #################################

heart_data1<- heart_data[1:1000, c(1,5)]
View(heart_data1)

############ Reshuffle COlumns

shuff_heart_data <- heart_data[,c(1,5,2,3,4,6,7,8,9,10,11,12)]

############# Dropping Col and Rows ##########################

shuff_heart_data$FastingBS <- NULL # Drops the col FastingBS

shuff_heart_data_N <- shuff_heart_data[-c(1:10),] # Drops the first 10 rows


############## Create Dummy Column ########################

shuff_heart_data$AgeCader <- ifelse( shuff_heart_data$`Paitent Age` > 34, 'Middle Age','Old Age')



################## Finding Difference b/w two cols ##########################

shuff_heart_data$DiffcHR <- shuff_heart_data$Cholesterol - shuff_heart_data$MaxHR


shuff_heart_data$SCPT <- paste(shuff_heart_data$Sex, shuff_heart_data$ChestPainType, sep = ' ')
tolower(shuff_heart_data$SCPT)


################## NA Values ######################################

is.na(shuff_heart_data$ST_Slope)
sum(is.na(shuff_heart_data$ST_Slope))

is.na(shuff_heart_data)

colSums(is.na(shuff_heart_data)) # gives the na values present in all cols. 

# replace a specific NA value

 shuff_heart_data[is.na(shuff_heart_data$RestingBP), "RestingBP"] <- 0
 
 # replace all NA at once
 
 shuff_heart_data[is.na(shuff_heart_data)] <- 0 # this will take only cols. 
 
 
 
 
 ##### TO clear all the objects in R
 
 rm(list = ls())  #ls is list of all objects got created under global environment. 
