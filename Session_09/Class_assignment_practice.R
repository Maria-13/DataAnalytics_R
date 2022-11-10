##### Class assignment
##### Practice Part 1

# Create a dataframe with three columns - name, salary, expenses
# and six rows for people: 
# column 1: 6 names
# column 2: 6 numbers with imaginary salary
# column 3: 6 numbers with imaginary expenses



# print the covariance between salary and epxenses

# find out SD for both salary and expenses

# multiply SD for salary and SD for expenses 

# divide covariance by multiplication of SD(salary)*SD(expenses)

# check the correlation

# print a scatter plot
plot

# try to create a scatter plot with ggplot2
ggplot
geom_point
geom_smooth
labs

##### Practice Part 2
# Create a data frame with random numbers using random seed
# (a number that initializes a pseudorandom number generator)

set.seed(123456)              # Set random seed
x <- rnorm(100)               # Create x variable
head(x)

y <- rnorm(100) + x           # Create and print the head of y variable
head(y)

# calculate Pearson's correlation
cor(x,y)
# interpret the output

# We can use the cor function to calculate 
# a correlation matrix for an entire data frame:
set.seed(1234567)        # Set seed and create example data
data <- data.frame(x1 = rnorm(100),
                   x2 = rnorm(100),
                   x3 = rnorm(100),
                   x4 = rnorm(100))
head(data)

# we can create a correlation matrix 
# for our example data frame
correlation <- cor(data)
correlation
# rounding the output to two decimals
correlation <- round(correlation, 2)
correlation
# can you interpret the output?

# Download the `women` dataset and explore 
# the correlation between `weight` and `height`:

# draw a scatter plot

