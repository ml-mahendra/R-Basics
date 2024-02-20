# CSV
df_csv <- read.csv('C:\\Users\\Desktop\\u\\Test\\heart.csv') 

' When we copy the path of a file, it will be in a back slash by default, but parse or our command wont understand that, 
 use either forward slash (/) instead (\) or use the double backslash (\\)'

# To read any particular file, we need that lib to be installed. 
read.xlsx('')  # For excel files
xmlparse('') # for XML Files
# Reading a text file

txt <- readLines("C:/Users/Desktop/U/Test/demo.txt") # here i am using forwrd shash
