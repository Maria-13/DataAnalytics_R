##### Class assignment
##### Session 11

# Chi-square test of independence
# The dataset "Life in Estonia" 
library(haven) # using the library to download .sav file
data <- read_sav("Life in estonia ENG.sav")
View(data)
# We want to know if there is a relationship 
# between what people do as their main activity in life
# and the level of satisfaction with life (on a 10.point scale)

# categories for the variable *Main Activity*:
data$a19
# categories for level of satisfaction
data$y4
# contingency table
c.table.1 <- table(data$a19, data$y4)
c.table.1 <- addmargins(c.table.1)
c.table.1
#This table can be visualized using the function 
#balloonplot() in gplots package
install.packages("gplots")
library(gplots)
balloonplot(t(c.table.1), main ="", xlab ="Life satisfaction", ylab="Main activity",
            label = FALSE, show.margins = FALSE)

#Null hypothesis: the row and the column variables of the contingency table are independent.

#Alternative hypothesis: row and column variables are dependent.

chisq <- chisq.test(c.table.1)
chisq

# interpret the results

library(MASS)       # load the MASS package 
tbl <-  table(survey$Smoke, survey$Exer) 
tbl   # the contingency table 
balloonplot(t(tbl), main ="", xlab ="Exercise level", ylab="Smoking Habit",
            label = FALSE, show.margins = FALSE)
chisq.test(tbl)

# combining the rows
ctbl <-  cbind(tbl[,"Freq"], tbl[,"None"] + tbl[,"Some"]) 
ctbl 
chisq.test(ctbl)

# interpret the results
