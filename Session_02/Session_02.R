# My first R script
# You can use # for commenting
# It's good practice to start with rm() function to clear
# your workspace from all the objects and start with a clean environment.

rm(list=ls())

#########################
#### The basics of R ####
#########################
# Basic data types - NUMBERS
# Let's first use R as a calculator and do some magic with numbers 
# (exercise from "Hands-on Programming with R" Garrett Grolemund)


# Choose any number and add 2 to it.
# addition
35 + 2
# Multiply the result by 3.
# multiplication
37 * 3
# Subtract 6 from the answer.
# subtraction
111 - 6
#Divide what you get by 3.
# division
105 / 3

# The answer shoud be the same as your first number :)
# R displays the answer, but doesn't remember it. 
# We need to create an R object to keep the answer in R environment.

x <- 35

# R functions and their arguments

rm() # allows you to remove the variables saved in your workspace

rm(x) # now the object x is not in your workspace anymore
ls() # allows you to see all the variables saved in your workspace

# Functions in R

seq(56)
1:56

# Every function has a Help page with the description and usage examples

?seq()
seq(1,9, by=2)

# it's possible to create a sequence without using this function, e.g.
1:56

#Arguments for the functions
mean() # this command doesn't work as we didn't specify the argument (see the help page)
?mean

# now let's create a new object (a vector), using c=combine
# we're creating a sequence from 0 to 10 and one more integer - 50

a <- c(0:10, 50) # check the Environment tab for the object description

# Now we can run our 'mean' function on the created vector (object a)
# and get a result

b <- mean(a) # the answer is 8.75, which is a mean for 0+1+2+3+4+5+6+7+8+9+10+50/12=
b

# Let's take a more meaningful example. 
# You have to calculate the mean for the student's school grades (ranging from 2 to 5)
# We need to create an object with our data for calculating the mean
# If you have more than more than one element in your vector, 
# you can combine an element with the c function

my.mean <- c(4, 4, 5, 2, 3, 4) # c stands for "combine"
mean(my.mean) # we can see the answer is 3.7, so we might give our student a '4'
              # as a final grade (if we want to base our grading on the means :)

median(my.mean) # the result for the median supports our conclusion

# Let's practice more and create other objects in R
# Creating a vector
d <- 1:56

# Empty vectors can be created with the vector() function
e <- vector()

# Creating the same vector as in 'd' object, but with a different command:

y <- seq(56) # creating a vector with the sequence function
y

y <- seq(1,9, by=2) # creating another vector with the sequence, 
                    # look at the Help page to understand how we define the function
y    # check the 'Environment' tab to see that now we have a new 'y' object
     # R will overwrite the R object content without asking you, if you use the same object name


# Data sets 
# Objects provide an easy way to store data sets in R. 
# In fact, R comes with many toy data sets pre-loaded. 
# Examine the contents of mtcars data set to see a toy data set that is used in many tutorials:

# Loading the data set, function 'load()'

data(mtcars)

# Print the first 6 rows

?head   # check the Help page to understand the function
head(mtcars, 6)

# you can learn more about the object by running "str"=structure function
str(mtcars)


# R data types
# R has five basic or “atomic” classes of objects: character, numeric (real numbers), integer, complex, logical (True/False)
# Examine the PlantGrowth dataset and identify the types of data:
# Loading 
data("PlantGrowth")

str(PlantGrowth)
class(PlantGrowth)
typeof(PlantGrowth)
length(PlantGrowth)
attributes(PlantGrowth)
