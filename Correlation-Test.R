#Name:Jordane Wright, Date: 08/27/2026, Purpose: Test the correlation analysis 

#install package ggpubr
if(!require(devtools)) install.packages("devtools") devtools::install_github("kassambara/ggpubr")

#Load Package ggpubr
library("ggpubr")

#load dummy dataset
my_data <- mtcars 

#Alternate hypothesis: The weight of the cr is inversely relate to the miles per gallon it can travel

#Null Hypothesis: There is no difference/ no relation between the weight of the car and miles per gallon it can travel

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")
