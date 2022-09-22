#########################
#### The basics of R ####
#########################

# R packages
# to download a package, use the following command: install.packages()
# in brackets you write the name of the package as a string (i.e. use "")
install.packages("ggplot2") # a package for data visualisation

install.packages("data.table") # a package for fast handling of 
                              # large datasets (health care and financial domains)

install.packages("dplyr") # a package for data manipulation

# Important! Package names are case sensitive!

# When the packages are installed on your machine, you can easily access them 
# by running the 'library' command or by putting a tick on the required package
# in the low right pane of RStudio, the tab "Packages"

library(dplyr)

# You will need to load the library into your R session every time you run a new session.
