library(tidyverse)

# simulating a dataset in R
age <- as.integer(runif(n = 100, min = 17, max = 30))
age
# The sample function also has a prob argument that allows you to assign 
# probabilities to your items. 
gender <- sample(c("Male", "Female"), size=100, replace=TRUE, prob=c(0.65,0.35))
gender

# create a sample of 100 numbers which are normally distributed
# rnorm(n, mean, sd)
expenses <- as.integer(rnorm(100, 950, sd=270))
# create a tibble
data <- tibble(age, gender,expenses)
data$expenses
# descriptive stats
summary(data)

# checking the assumption for normality
hist(data$expenses)
# histogram with density plot
ggplot(data, aes(x=expenses)) + 
  geom_histogram(aes(y=..density..), colour="blueviolet", fill="white")+
  geom_density(alpha=.2, fill="grey30") 

# one-sample t-test in R
t.test(data$expenses, mu=850)

# In order to perform a one-tailed test, you need to specify the alternative hypothesis
# greater or less

t.test(data$expenses, mu=850, alternative="greater")

# two-sample t-test
male <- filter(data, gender == "Male")
summary(male)
sd(male$expenses)
var(male$expenses)
female <- data %>% filter(gender == "Female")
summary(female)
sd(female$expenses)
var(female$expenses)

# checking the assumption of normality for both variables
ggplot(data, aes(x=expenses, fill=gender)) + 
  geom_density(alpha = 0.2) 
  
# performing the t-test
# t.test(group1, group2, var.equal=TRUE) 
# By specifying var.equal=TRUE, we tell R to assume 
# that the variances are equal between the two samples.
t.test(male$expenses, female$expenses, var.equal=TRUE) 
