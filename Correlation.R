
library(tidyverse)  # Loads the `tidyverse` collection


# LOAD DATA 

# Also convert several adjacent variables to factors
df <- read_csv("state_trends.csv") |>
  select(  # Rename variables with `select`
    DS = data_science,  # New = old
    AI = artificial_intelligence,
    ML = machine_learning,
    DA = data_analysis,
    BI = business_intelligence,
    SS = spreadsheet,
    Stats = statistics) |> 
  print()

# CORRELATION MATRIX #######################################

# Scatterplot matrix
df |> plot()

# Correlation matrix
df |> cor()

# Rounded to 2 decimals
df |>
  cor() |>
  round(2)

# TEST AND CI FOR A SINGLE CORRELATION #####################

# Can test one pair of variables at a time.
# Gives r, hypothesis test, and confidence interval
cor.test(df$DS, df$DA)

# PACKAGES TO GET P-VALUES FOR MATRIX ######################

# The `Hmisc` package can get p-values for matrix
browseURL("https://cran.r-project.org/web/packages/Hmisc/")

