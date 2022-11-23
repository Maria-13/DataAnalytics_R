##### Class assignment
##### Session 10

# Create a data frame with three columns - name, salary, expenses
# and 10 rows for people: 
names <- c(1:10)
salary <- c(1250, 1100, 1000, 1500, 1700, 800, 950, 2000, 1770, 1800)
expenses <- c(600, 400, 1000, 1150, 1450, 300, 700, 1200, 950, 1800)
data <- data.frame(names, salary, expenses)

### Step 1. Briefly describe your data set.

### Step 2. Perform a quick EDA
summary(data) 
sd(data$salary)
sd(data$expenses)
hist(data$expenses)
hist(data$salary)

### Step 3. Hypothesis testing 
### Step 3.1.  
# draw a scatterplot
ggplot(data, aes(x=salary, y=expenses)) + 
  geom_point(size=4, shape=16) +
  geom_smooth(method=lm) +
  labs(title = "Relationship between Salary and Expenses")
# looks like there is a linear positive correlation between the variables

# State a null hypothesis and alternate hypothesis
# H0 There is NO relationship between salary and expenses.
# HA There is a relationship between salary and expenses.

### Step 3.2. Collect data

### Step 3.3. Select an appropriate statistical test; check the assumptions
corr.1 <- round(cor(salary, expenses),2)
corr.1
### Step 3.4. Calculate the p-value, select significance level (1%, 5%). 
# Decide whether to reject or fail to reject your null hypothesis. 
cor.test(salary, expenses)
### Step 5. Report your results
# In our result:
# t is the t-test statistic value (t = 3.364),
# df is the degrees of freedom, (df= 8), the formula is n-2, where n=number of observations/participants)  
# p-value is the significance level of the t-test (p-value = 0.009873).
# conf.int is the confidence interval of the correlation coefficient at 95% (conf.int = [0.2621, 0.9414]);
# sample estimates is the correlation coefficient (Cor.coeff = .76).

# Interpretation:
# The p-value of the test is 0.009873, which is less than the significance level alpha = 0.05. 
# We can conclude that there is a significant, strong, positive correlation between
# the amount of money people receive as salary and the amount of money they spend,
# r (8) = .76, p < .009.
