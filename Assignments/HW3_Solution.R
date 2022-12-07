##############################
##  Homework assignment #3  ##
##############################

# Your full name: 
# Date:

###########################################################
##   Please comment your answers, explaining your code   ##
##   and providing data interpretation.                  ##
###########################################################

####### TASK 1: 0.5 points ################################

# Briefly, in your own words, describe the difference between a 'table' object and a 'data frame' in R.
# When is table() function used?
# P.S. do not confuse 'table' with 'data.table'

# Your answer: 
# table() function is used to create frequency tables.
# It creates tabulation of categorical variable and provides its frequency
# as an output. It can also help to create conditional and proportional frequency tables.
# prop.table() to create a frequency table of proportions (presented in %)

####### TASK 2: 0.5 points ################################

# Store 'women' dataset from R into your environment and save it as a data frame

# Find information about this data set online or in R and briefly describe it
# Your answer:

library(datasets)
library(help = "datasets")

data("women")
class(women)
str(women)

####### TASK 3: 1 point ################################
# 1. Provide Simple Exploratory Data Analysis (EDA) on the saved data set ('women')
head(women)
tail(women)
str(women)
dim(women)
names(women)
nrow(women) 
ncol(women)
summary(women)
colSums(women) 
is.na(women)

# 2. Convert height(inches) into height(cm) and weight(lbs) into weight (kg)
# and create a new data frame with 2 columns 'height.cm' and 'weight.kg'

# P.S. there are several ways to do it, here just use the mathematical way to calculate
# and convert inches into cm (1 inch = 2.54cm) and lbs into kg (1 lb = 0.45kg)

# Extracting the $height and converting it into cm
height.cm <- women$height*2.54
height.cm

# Extracting the $weight and converting it into kg
weight.kg <- women$weight*0.45
weight.kg

# Creating a new data frame
women.new <- data.frame(height.cm, weight.kg)
women.new

# 3. Create two histograms for height.cm and weight.cm, using hist() function
hist(height.cm)
hist(weight.kg)

# 4. Create two boxplots for height.cm and weight.cm, using boxplot() function
boxplot(women.new)
# 5. Report standard deviation and variance for weight and height. 
# Interpret the results from the all the graphs and EDA.
min(women.new$height)
max(women$height)
min(women$weight)
max(women$weight)
range(women$height)
range(women$weight)
mean(women$height)
mean(women$weight)
median(women$height)
median(women$weight)
quantile(women$height)
quantile(women$weight)
sd(women$height)
sd(women$weight)
var(women$height)
var(women$weight)

# It looks like there is more variation for weight than for height data points.

####### TASK 4: 1 point ################################

# The following data is available: 
# Thirty students took a test with the highest score 10 points. 
# Their results were as follows:
# 8, 9, 7, 3, 7, 7, 5, 5, 6, 7, 10, 7, 4, 7, 1, 5, 6, 4, 7, 8, 2, 8, 4, 6, 10, 7, 4, 2, 4, 9

# 1. Prepare a frequency table of the scores.
# 2. Using the frequency table, calculate the mean, median and mode.
# 3. Interpret these results, using boxplot() function.
# 4. Calculate the relative frequency of the scores 
# 5. Calculate cumulative frequency of the scores
# 6. Finally, calculate the relative cumulative frequency of the scores 
# 7. Create a data frame with columns for 'score' / 'freq' / 'rel' / 'cumul' / rel_cumul

score <- as.vector(c(8, 9, 7, 3, 7, 7, 5, 5, 6, 7, 10, 7, 4, 7, 1, 5, 6, 4, 7, 8, 2, 8, 4, 6, 10, 7, 4, 2, 4, 9))
score

freq <- table(score) # frequency table of the scores
class(freq)
# proportions in percentages rounded to 2 decimals
percentage <- round(prop.table(freq), 2)
percentage <- percentage*100
percentage
# creating a dataframe with scores, freq, and percentage
freq <- as.data.frame(freq)
freq$percent <- percentage

mean(score)  #calculating mean
median(score) #calculating median
# creating a function for calculating mode
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(score)
boxplot(score)  # the dataset average is around 6, the data is negatively skewed
                # meaning that there are more datapoints in the lower part, i.e. below 6
hist(score)

# calculating relative frequency and rounding to two decimals
freq_size <- length(score)
freq_rel <- round(freq$Freq/freq_size, digits=2) 
freq_rel
# calculating cumulative frequency
freq_cumul <- cumsum(freq$Freq)
freq_cumul
# calculating relative cumulative frequency and rounding to two decimals
freq_rel_cumul <- round(freq_cumul/freq_size, digits=2)
freq_rel_cumul
# adding each new vector to freq dataset
freq$rel <- freq_rel
freq$cumul <- freq_cumul
freq$rel_cumul <- freq_rel_cumul
# displaying new freq dataset
freq
################# END OF HOME ASSIGNMENT ################