library(lmtest)

setwd("C:/Users/willi/Desktop/Data Analysis/Seth McFarlane experiment")
data <- read.csv("did.csv")
#regression for DID estimator on ratings
reg1 <- lm(diff ~ treat, data = data)
summary(reg1)
#regression for DID estimator on ratings growth
reg2 <- lm(diff_diff ~ treat, data = data)
summary(reg2)