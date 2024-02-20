x <- c(24,35,12,6,17,8)

barplot(x)
colors() # Gives the list of colors that are available in R
barplot(x, col = 'slategray3') # colors the bar plot with light grey color. 
barplot(x, col = c('red3', 'slategray')) # this will color the bar plot with two colors 
palette() # give the current palette 

# Web page with R color swatches, color names, hex codes,
# RBG codes (in 0-255 and 0.00-1.00), and R index numbers;
# Browsable table on the page or in Google Sheets;
# downloadable as XLSX or PDF
browseURL("https://datalab.cc/rcolors")

# @reference from the course R Programming by  Barton Poulson  on LinkedIn Learning...!
