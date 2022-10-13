############################################
#### Data import and Documentation in R ####
############################################

# start by cleaning the workspace
rm(list=ls())

# installing packages if needed or loading the library
install.packages("tidyverse")
library(tidyverse)

# exploring the 'vignettes'
# A vignette in Tidyverse is documentation that provides guidelines to a specific R package.
browseVignettes("readr")
browseVignettes("tibble")

# Checking if we have a data frame or a tibble
data("diamonds")
view(diamonds)
class(diamonds)
diamonds <- as_tibble(diamonds)
print(diamonds)

# What differences can you see between a tibble and a data frame?

# The readr package comes with some sample files from built-in datasets
readr_example()
read_csv(readr_example("chickens.csv"))
# R creates a tibble and prints out column names and data types

# to import spreadsheet data into R, use the readxl package
library(readxl)
# readxl also comes with some sample files from built-in datasets
readxl_example()
# to load the data set to R, use the function and specify the name of the dataset
view(read_excel(readxl_example("type-me.xlsx")))

# use the excel_sheets() function to list the names of the individual sheets 
excel_sheets(readxl_example("type-me.xlsx"))
# to specify a sheet by name or number, type “sheet =” followed by the name or number of the sheet 
view(read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion"))

# Let's try to download the data from elsewhere
# 1. Download a spreadsheet from the .xlsx file

my.data.1 <- read_excel("DinoNimi_1.xlsx")
view()
# 2. Download the data directly from Googlesheets
library(googlesheets4)
# Run the read_sheet function
# But first, you allow R to access the Google sheets by coping the link to the spreadsheet from the browser
my.data.2 <- read_sheet('https://docs.google.com/spreadsheets/d/1UBpbauzE4ADvjFyEor2jZ5KgT98GLHFQMWuOuPXdH7g/edit#gid=0')

my.data.2
# Download .csv file from andmed.stat.ee
# import the data into R by supplying the path to a file, as a result you get a tibble
# readr parses the data and specifies how each column should be converted from a character vector to the most appropriate data type

migration <- read_csv("RVR08_20221012-202141.csv")
view(migration)

class(migration)

class(migration$`Age group`)
class(migration$`Males Russian citizenship`)

# Let's visualize some of the data
hist(diamonds$price)

browseVignettes("ggplot2")
# With ggplot2 you create layers
# ggplot(data = my_data)+                 # point to your dataset "my_data"
# geom_point(                             # add a layer of points (dots)
#    mapping = aes(x = col1, y = col2),   # "map" data column to axes
#    color = "red")+                      # other specification for the geom
#  labs()+                                # here you add titles, axes labels, etc.
#  theme()                                # here you adjust color, font, size etc of non-data plot elements (axes, title, etc.)

ggplot(data = diamonds, mapping = aes(x = price)) +
  geom_histogram()

# Improving the "aesthetic" - visual property of plotted data
# geom_histogram(              # display histogram
#  binwidth = 1000,            # width of bins
#  color = "blue",             # bin line color
#  fill = "grey",              # bin interior color
#  alpha = 0.3)                # the width of the border line
ggplot(data = diamonds, mapping = aes(x = price)) +
  geom_histogram(            
  binwidth = 1000,
  color = "blue",
  fill = "dark blue",
  alpha = 0.3) 
  
### Data documentation. Creating reports ###
  
install.packages("rmarkdown")
library(rmarkdown)

install.packages("knitr")
library(knitr)

# Create your first Rmd file, use Rmd and R Notebooks. What's the difference?

##### END OF SESSION ######
