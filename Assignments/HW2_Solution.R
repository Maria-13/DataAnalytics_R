##############################
##  Homework assignment #2  ##
##############################

# Your full name: 
# Date:

###########################################################
##   Please comment your answers, explaining your code.  ##
##   Code lines only do not provide points.              ##
###########################################################

####### TASK 1: 0.5 points ################################
# 1.Create a sequence of 14 consecutive integers from 1 to 70, with steps of 5 (i.e., 1, 6, 11, …)
# and create a matrix with 7 rows and 2 columns using this sequence. Fill the matrix by row.
# 2. Calculate the mean for all rows and the mean for all columns
# 3. Create a new matrix where together with numbers from the previous matrix, 'means' are displayed
# (under each column and after each row) 

seq <- seq(1, 70, by = 5)
my.matrix <- matrix(seq, nrow = 7, ncol = 2, byrow = TRUE)
my.matrix

mean.rows <- rowMeans(my.matrix)  #calculate the mean for each rows
mean.rows
mean.col <- colMeans(my.matrix)  #calculate the mean for each columns
mean.col

mean.rows.matrix <- cbind(my.matrix, mean.rows)   #add a new column with the means for the rows
means.matrix <- rbind(mean.rows.matrix, c(mean.col, NA)) # add a new row with the means for the columns + add NA as a value for the third column
means.matrix

# One more way to create a full matrix will be to calculate the total mean and add it
# to an empty (NA) cell.

####### TASK 2: 0.5 points ################################
# 1. Create a matrix A with numbers 12, -14, 4.5, 7.5 in two columns and 
# a matrix B with numbers -5, 14, 3.5, -8 in two columns.
# 2. Find the sum of A and B matrices and store the results with comments on how the operation is conducted
# 3. Find the subtraction of A and B matrices and store the results with comments on how the operation is conducted
# 4. Find the division of A to B matrices and store the results with comments on how the operation is conducted

# Basic matrix operations are computed element-wise, i.e. the operation is performed
# on the elements of the same row/column.

A <- matrix(c(12, -14, 4.5, 7.5), 2)
A
B <- matrix(c(-5, 14, 3.5, -8), 2)
B
sum <- A + B
sum

subtr <- A - B
subtr

div <- A / B
div
################# END OF THE HOME ASSIGNMENT ################