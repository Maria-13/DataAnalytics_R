############################################
#### The basics of R. R data frames     ####
############################################

# start by cleaning the workspace
rm(list=ls())

# Download and explore the R datasets package
library(datasets)
library(help = "datasets")

# We're going to look at Titanic dataset
# to load the data into your environment, use data(Titanic)
data(Titanic)
Titanic  # this is one way to look at the dataset 

class(Titanic) # check what type of data object this is
# It's a contingency table, i.e. an array of integer values
# Let's turn it into a data frame
df <- as.data.frame(Titanic) 
head(Titanic)
str(Titanic)


# Exploring a dataset in R
# Simple Exploratory Data Analysis (EDA)
# head() - see the first 6 rows of a dataset
# tail() - see the last 6 rows 
# str() - explore the structure of a dataset
# dim() - display the dimensions of the table
# names() - find the column names
# nrow() and ncol() - calculate number of rows or columns
# summary() - find descriptive statistics of a dataset or a vector
# view() - view the data set
# colSums() and is.na() - count NA values by column
# min(), max(), range() - provide the minimum and maximum
# mean() - compute the mean
# median() - compute the median
# quantile() - compute the first and third quartiles by setting the second argument to 0.25 or 0.75
# IQR() - compute the interquartile range (i.e., the difference between the first and third quartile) 
# sd() - compute standard deviation
# var() - compute variance

# Extracting data
# Let's extract the data about children who survived, what conclusions can you make?
children <- df[df$Age == "Child", ]
survivied <- children[children$Survived == "No" , ]

##### END OF SESSION ######
