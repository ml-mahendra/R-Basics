# CSV

df_csv <- read.csv('C:\\Users\\Desktop\\u\\Test\\heart.csv') 


' When we copy the path of a file, it will be in back slash by default, but parse or our command wont understand that, 
 use either forward shash (/) instead (\) or use the double back slash (\\)'

# To read any particular file, we need that lib to be installed. 

read.xlsx('')  # For excel files

xmlparse('') # for Xml Files

# Reading a text file

txt <- readLines("C:/Users/Desktop/U/Test/demo.txt") # here i am using forwrd shash
