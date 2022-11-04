##############################
##  Homework assignment #1  ##
##############################

# Your full name: 
# Date:

###########################################################
##   Please comment your answers, explaining your code.  ##
##   Code lines only do not provide points.              ##
###########################################################

####### TASK 1: 0.5 points ################################

# Use R to compute the sum of the first 50 positive integers.  
# Hint: explore the sum() function
sum.int <- 1:50
sum(sum.int)

# Your output: 1275

####### TASK 2: 1 point ################################

# 1. Create an empty vector with vector() function. 
my.vec <- vector()
my.vec
class(my.vec)
# What is the default data type for vector?
# Your answer: logical

# 2. Change the data type of this empty vector to integer.
my.vec <- as.integer()
my.vec

# 3. Insert different types of data (10 integers, 4 character strings, 3 logical values, e.g. TRUE, FALSE, NA)
# in the created empty vector
# Hint: think of c() function
my.vec <- c(1:10, "name1", "name2", "name3", "name4", TRUE, FALSE, NA)
my.vec
class(my.vec)

# We tried to combine different types of data in one vector. Does R tell us it's a mistake? 
# Your answer: No, for R it's not a mistake
# What is the class of our vector now? 
# Your answer: it's character class now

# This R behaviour is called "coercion". Please describe it in your own words.
# Your answer: R is flexible with the different data types, when an entry is different from what R expects, R tries to 
# 'guess' the data type based on your input (without giving you an error message). Because we used "" in the data input, R 
# coerced the data into characters.


####### TASK 3: 1 point ################################

# Working with logical vectors: 
# 1. Create a vector with 10 random integers from 20 to 40, assign the name 'age' to it
age <- c(25, 34, 39, 22, 33, 21, 38, 27, 22, 40)

# Image you want to explore the age of the participants in your vector.
# Create a logical operator for checking what entries are more or equal to 25 but less or equal to 35
age >= 25 & age <= 35

# Store the results of the logical operator, assigning the name "age.range" to it
age.range <- age >= 25 & age <= 35
age.range

# Use the function sum() on 'age.range' to return the number of entries that are true
sum(age.range)

# How many participants are between age 25 and 35? 4

# Use the function which() to look at the entries where a logical vector is true,
# and store the TRUE entries into a separate object
which(age.range)
age.range.true <- which(age.range)
age.range.true

####### TASK 4: 1 point ################################

# Operations on the vectors
# 1. Create a character vector with 6 entries
my.char.vec <- c("name1", "name2", "name3", "name4", "name5", "name6")

# 2. Get the last element of the vector (explore length() function)
length(my.char.vec)
my.char.vec[length(my.char.vec)]

# 3. Create a numeric vector with values 2, 0, -3, 0, 5, 6 and sort the values from the LARGEST to the smallest.
# Hint: look at the sort() function
my.num.vec <- c(2, 0, -3, 0, 5, 6)
sort(my.num.vec, decreasing = TRUE)

# Your output:

# 4. Combine your character vector with your numeric vector.
my.new.vec <- c(my.char.vec, my.num.vec)
my.new.vec <- append(my.char.vec, my.num.vec)
my.new.vec

# 5. In R every element in the vector has a particular position or index, starting with [1]
# Check the indices for all items in your new vector with [] brackets
my.new.vec[1]  # for checking the first index, the fifth, etc
my.new.vec[5]
my.new.vec[12]

# you can also use which() function to check the 
# index of a particular value
which(my.new.vec == "name3")

# 6. Delete the first six character items in your new vector, using their indices
indices <- c(1:6)
my.new.vec.1 <- my.new.vec[-indices]
my.new.vec.1 

# 7. Convert your new vector to an integer vector
my.new.vec.1 <- as.integer(my.new.vec.1)
my.new.vec.1

####### TASK 5: 1.5 points ################################

# Working with lists
# 1. Create a list containing two vectors: one vector is a variable with three names: "A1", "A2", "A3" 
# the other one is a vector with 10 randomly generated integers between 1 and 10 (hint: use sample() function)
# Print the results
vec.1 <- c("A1", "A2", "A3")
vec.1
vec.2 <- sample(1:10, size = 10)
vec.2
my.list.1 <- list(vec.1, vec.2)
my.list.1

# 2. Create one more list with two vectors: one is a range of numbers from 1 to 5,
# the second one is a LOGICAL vector with three variables, print the results
vec.3 <- c(1:5)
vec.4 <- as.logical(c("TRUE", "FALSE", "TRUE"))
my.list.2 <- list(vec.3, vec.4)
my.list.2

# 3. Combine two lists to create a larger list (hint: consider append() function)
# Print the results
my.large.list <- append(my.list.1, my.list.2)
my.large.list <- c(my.list.1, my.list.2)
my.large.list


################# END OF THE HOME ASSIGNMENT ###################
