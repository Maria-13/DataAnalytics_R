############################################
#### The basics of R. R data structures ####
############################################

# start by cleaning the workspace
rm(list=ls())

# Let's start with creating numeric vectors:
x <- seq(1,10)
my.numbers <- c(23,45,67,23,56)

# identifies the vector type (double, integer, logical, or character)
typeof(x)
# [1] "integer"

typeof(my.numbers)
# [1] "double"

# Let's explore 'as.double' and 'is.double' functions in R
# By default, if you create numeric values 
# using the x <- 1:10 method or seq() function, the numeric values will be coded as integer. 
# Check our x object as example.
# If you want to change a double to an integer or vice versa, you can specify one of the following:
# as.double function converts integers to double-precision values
# as.numeric is identical to as.double()
# as.integer converts doubles to integers

# Let's create a vector with integers and check its type
int.var <- c(1L, 6L, 10L)
typeof(int.var)

# Now let's convert this variable into a double
as.double(int.var)     
# the output [1]  1  6 10
# Let's store this variable in an object
int.var <- as.double(int.var)  # check in the Environment tab how the variable class has changed and confirm this with the typeof() function
typeof(int.var)

# identical to as.double()
as.numeric(int.var)    
## [1]  1  6 10

# Let's convert doubles to integers
double.var <- c(1, 2, 4)
typeof(double.var)
as.integer(double.var)      
# [1] 1 2 4
# Let's store this variable in an object with the same name, but now the data type is different
double.var <- as.integer(double.var)
double.var
# Output: [1] 1 2 4

# Let's use as.double function and create some arithmetic operations for two R objects

# Take the first number from the user
x <- readline(prompt='Enter the first number:')

# Let's also look at 'readline' function
?readline

# convert character to numeric
a <- as.double(x)

# take another number from the user
y <- readline(prompt='Enter the second number:')

# convert character to numeric
b <- as.double(y)

# Store their addition into another variable and print the result
sum <- a + b
sum

# Store their subtraction into another variable and print the result
sub <- a - b
sub

# Store their division into another variable and print the result
div <- a / b
div

# Store their multiplication into another variable and print the result
mul <- a * b
mul

# Let's check if our data object has the data type double
# hint: use the is.double function
is.double(x)
is.double(b)

# is.double or is.integer or is.character functions help you see the answer to the question: "Is this variable/object a double?" T or F

# Let's work with logical vectors:
# create a logical vector with length 5 (i.e. with five values/data points)
# logical vectors can have NA values and TRUE, FALSE values
# print the type of vector and the vector contents

log.vec <- c(TRUE, FALSE, FALSE, NA, TRUE, NA)
log.vec
typeof(log.vec)

# Let's create a logical vector from comparisons
# We create a vector with some values
comparison <- 2:20

# then we create a logical vector of the same length as 'comparison' with 
# values FALSE corresponding to elements of x where the condition is not met and TRUE where it is met
temp <- comparison > 13
temp
# Output: [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE


# Another example: we take a numeric vector and check if the items are even (%%2) or not, using the == operator
d <- c(2, 3, 7, 6, 1)
result <- d%%2 == 0
result
# Output: [1]  TRUE FALSE FALSE  TRUE FALSE


# Let's create a 'character' vector
sample <- c("boy", "girl", "girl", "boy", "girl")

# and look at factors with factor() function
sample1 <- factor(sample)
sample1
class(sample)
typeof(sample)

# Use the levels function to check the levels if you need
levels(sample1)

# Let's look at lists - another data structure in R
# Lists can contain different data types
# Let’s create a list containing a list with numbers and a list with character strings
my.list <- list(c(1, 2, 3, 4), list(c("a", "b", "c")))
my.list
class(my.list)
typeof(my.list)

## Let’s create a list containing a numeric vector, a character vector, and a logical vector
vec <- c(1,2,3)
char_vec <- c("Jan", "Feb", "Mar", "April")
logic_vec <- c(TRUE, FALSE, TRUE, FALSE)
my_list <- list(vec, char_vec, logic_vec)
my_list

# Let’s now understand how to access lists elements in R
# You can access the list items by referring to its index number, inside brackets. 
# The first item has index 1, the second item has index 2, and so on
my_list[1]

# or by creating another list with character strings, we can easily grab just one element
newlist <- list("apple", "banana", "cherry")
newlist[1]
newlist[2]

# To change the value of a specific item, you also refer to the index number:
newlist[2] <- "blackcurrant"
# Print the updated list
newlist

# To find out how many items a list has, use the length() function:
length(newlist)

# Let's explore array() function in R
?array()
# syntax array(data, dim = length(data), dimnames = NULL), dim parameter specifies the number of dimensions

# Create 3-dimensional array
# and fill values by column
my.arr <- array(c(1, 2, 3), dim = c(3, 3, 3))
my.arr

