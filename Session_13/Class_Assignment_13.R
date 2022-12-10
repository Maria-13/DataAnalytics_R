##### Class assignment
##### Session 13

library(tidyverse)
install.packages("lmer4") # package for functions for linear regression
library(lmer4)

# Create a dataset with the number of hours spent on home assignments
# and the final score: 
df <- data.frame(hours=c(15, 20, 25, 18, 17, 15, 18, 12, 19, 21, 23, 21, 16, 15, 20),
                 score=c(14, 20, 19, 13, 14, 13, 20, 14, 18, 20, 16, 19, 16, 13, 19))


#view first six rows
head(df)
mean(df$score)

#turn dataset into tibble to make it easier to work with
df <- as_tibble(df)

#create a scatterplot to check for linear relationship
ggplot(df, aes(x=hours, y=score)) + 
  geom_point(size=4, shape=16) +
  geom_smooth(method=lm) +
  labs(title = "Relationship between hours spent \n on homework and final score") 
# calculate correlation
corr <- round(cor(hours, score),2)
corr
#create a boxplot to check for outliers
boxplot(score)
boxplot(hours)

#fit simple linear regression model
# lm [target/response]~[predictor]
model <- lm(score~hours, data=df)

#view model summary
summary(model)

#define residuals of model
res <- resid(model)

#produce residual vs. fitted plot
plot(fitted(model), res)
#add a horizontal line at 0 
abline(0,0)
# or do the same with ggplot
ggplot(model, aes(x = .fitted, y = .resid))+
  geom_point() +
  geom_hline(yintercept = 0) +
  labs(title='Residual vs. Fitted Values Plot', x='Fitted Values', y='Residuals')

# The x-axis displays the fitted values
# the y-axis displays the residuals
# the residuals appear to be randomly scattered around zero 
# with no clear pattern, which indicates that the assumption
# of homoscedasticity is met.
# In other words, the coefficients of the regression model should be trustworthy and we don’t need to perform a transformation on the data.


# create a quantile-quantile plot for residuals 
# to assess whether or not the residuals in a regression model
# are normally distributed
qqnorm(res)
#add a straight diagonal line to the plot
qqline(res)

# The points approximately fall on the line => the relationship between the theoretical 
# percentiles and the sample percentiles is approximately linear. 
# The normal probability plot of the residuals suggests that the error terms are normally distributed for our dataset
