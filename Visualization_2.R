##################### Box Plots #########################################

library(tidyverse)

# Load data & Also convert all character variables to factors
df <- read_csv("state_trends.csv") |>
  mutate(across(where(is_character), as_factor)) |>
  print()

# BOXPLOT OF FREQUENCIES ###################################

?plot     # Get info on "Generic X-Y Plotting
?boxplot  # Get info on the "Box Plots" function

# Boxplot with defaults
boxplot(df$dance)

# Who is the outlier?
df |> 
  filter(dance > 90) |> # an approx value looking at the graph
  select(state, dance)

# Boxplot with options
df |>
  select(dance) |>
  boxplot(
    horizontal = T,  # Horizontal
    notch  = T,      # Confidence interval for median
    main   = "Boxplot of Searches for \"Dance\"",
    sub    = "(Source: state_trends.csv)",
    xlab   = "Searches for \"Dance\"",
    col    = "yellow"  # red3
  )

# BOXPLOTS FOR MULTIPLE VARIABLES ##########################

df |>
  select(basketball:hockey) |> # Plots box plots for games rom basketball to hokey
  boxplot()

# Who are the outliers on "hockey"?
df |> 
  filter(hockey > 45) |>
  select(state, hockey) |>
  arrange(desc(hockey))


################################ Scatter PLots #################################


df_sp <- read.csv('state_trends.csv') |>
  select (basketball : hockey) |>
  glimpse()

df_sp |> plot()

# two variable scatter plot 
df_sp |>
  select(soccer, hockey) |>
  plot()

# In detail 
df_sp |>
  select(soccer,hockey)|>
  plot(
    main = "Scatter Plot",
    xlab = 'Searchers for \"Soccer" ',
    ylab = 'Searchers for \"Hockey" ',
    col = 'red',
    pch = 3,  #psch = plotting character. we use 20 for small circles.
  )
?pch # Give other characters 



###################### Line charts #####################

library(datasets)
uspop
?ts # get info with time series objects
plot(uspop)

uspop |> 
  plot(
    main = "Us Population from 1750 to 1990",
    xlab = "Years",
    ylab = "Population (millions)"
  )
abline (v=1930, col= "lightgray")
text(1930, 20, "1930", col = "red")  # wht year, and at what Y axis value u need the naming. 
abline (v=1940, col= "lightgray")
text(1940, 10, "1940", col = "red")

# Using a specific plot that is for a time series
ts.plot(uspop)  # alternative : plot.ts(uspop)

# MULTIPLE TIME SERIES #####################################
# EuStockMarkets
EuStockMarkets

# Three different plot functions
plot(EuStockMarkets)     # Stacked windows
plot.ts(EuStockMarkets)  # Identical
ts.plot(EuStockMarkets)  # One window

# Plot with options
ts.plot(
  EuStockMarkets,
  col = rainbow(4))  # Color lines
legend(              # Add legend
  "topleft",         # Position
  legend = colnames(EuStockMarkets),  # Names for legend
  col = rainbow(4),  
  lty = 1            # Line type: solid
)
