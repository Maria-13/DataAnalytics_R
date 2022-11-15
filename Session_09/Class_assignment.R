# Class assignment

# Create a dataframe with three columns - name, salary, expenses
# and six rows for people: 
# column 1: 6 names
# column 2: 6 numbers with imaginary salary
# column 3: 6 numbers with imaginary expenses
names <- c("Mark", "Julia", "David", "Rose", "Rick", "Camilla")
salary <- c(2000, 1650, 2300, 1700, 2100, 3100)
expenses <- c(1800, 1500, 1800, 1700, 1900, 2100)
data <- data.frame(names, salary, expenses)
# print the covariance between salary and epxenses
cov(salary, expenses)

# find out SD for both salary and expenses
sd(salary)
sd(expenses)
# multiply SD for salary and SD for expenses 
529.55*200
# divide covariance by multiplication of SD(salary)*SD(expenses)
95000/105910
# check the correlation
cor(salary, expenses)
plot(salary, expenses, main="Scatterplot for Salary and Expenses", 
     xlab="Salary", ylab="Expenses", pch=19)
ggplot(data, aes(x=salary, y=expenses)) + 
geom_point(size=2, shape=18) +
geom_smooth(method=lm) +
labs(title = "Salary x Expenses")
