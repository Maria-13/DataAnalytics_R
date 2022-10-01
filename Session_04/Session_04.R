############################################
#### The basics of R. R data structures ####
############################################

# start by cleaning the workspace
rm(list=ls())

# Working with matrices in R

# Revision - arrays
# Let's create a 2-dimensional array of size 3(rows) x 4(columns) and fill it with numbers from 1 to 24
# help(array)

array(1:24, dim=c(3,4, 2))  #numbers 3x4 describe the kind of array we need, the last number "2" is the number of dimensions

# Let's change this array to 4 dimensions
array(1:24, dim=c(3,4, 4))

# Mostly we'll need just a two-dimensional representation of tabular data 
# To achieve this, we can create a matrix
# 1. Using a matrix() function -> matrix(data, nrow, ncol, byrow = FALSE, dimnames)
# Create 2x3 matrix with numbers from 1 to 6
x <- matrix(1:6, 2, 3)
x
# Create 3x4 matrix with numbers from 1 to 12 (byrow=FALSE by default)
# How are the numbers distributed within our table?
a <- matrix(1:12, 3, 4)
a
# Create 3x4 matrix by ROW with numbers from 1 to 12
b <- matrix(1:12, 3, 4, byrow=TRUE)
b
# How are the numbers distributed within our table now?


# Create 6x8 matrix using recycling
# If the provided data vector contains less elements than those nrow x ncol 
# required for filling the matrix, the recycling rule applies: the existing 
# elements are simply recycled.
c.1 <- matrix(1:12, 6, 8)
c.1

# The same matrix but the numbers are distributed by rows
c.2 <- matrix(1:12, 6, 8, byrow=TRUE)
c.2

# It'll be also helpful to give names to our col and row
names <-  list(c("USA","CANADA"), c("Jan", "Feb", "March"))
m <- matrix(c(1, 3, 4, 1, 3, 5), 2, 3, dimnames = names)
m

# 2. Now we'll create a matrix with cbind and rbind functions
# In this example we first define three vectors: 
# id (the student number), grades and credit points
# Then we use the function cbind to create a new matrix whose COLUMBS are the vectors id, grades and credit points
# and the function rbind to create a new matrix whose ROWS are the vectors id, grades and credit points.

id <-  1:5
id
grades <-  c(4.0, 3.5, 1.5, 5.0, 4.5)
grades
credit <-  c(4, 4, 5, 6, 3)
credit
# Use cbind to combine as columns
a1 <-  cbind(id, grades, credit)
a1
# Use rbind to combine as rows
a2= rbind(id, grades, credit)
a2

# Let's extract some elements from our table
a1[3:4,1:2] # Creating submatrix by extracting rows 3 & 4 from columns 1 & 2

a1[3,]    # Extracting 3rd row
a1[,2]    # Extracting 2nd column
a1[credit == 4, ]      #extracts all rows where the 'credit' property has value equal 4
a1[credit == 4 & grades <= 3.5, ]     # extracts all rows where column 'credit' has value equal 4 
                                      # and column 'grades' has value less or equal 3.5


# Using functions rowMeans() and colMeans() we can easily calculate the means
rowMeans(a1)        #row means of a1 matrix (though these means are not informative)
colMeans(a1)        #column means of a1 matrix (again id as a mean doesn't make sense:)

##### END OF SESSION ######
# In the next session we'll look at data frames
