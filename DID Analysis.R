library(lmtest)

setwd("C:/Users/willi/Desktop/Data Analysis/Seth McFarlane experiment")
data <- read.csv("data.csv")

#manually calculating DID
a = sapply(subset(data, post == 0 & AD == 0, select=rate), mean)
b = sapply(subset(data, post == 0 & AD == 1, select=rate), mean)
c = sapply(subset(data, post == 1 & AD == 0, select=rate), mean)
d = sapply(subset(data, post == 1 & AD == 1, select=rate), mean)

(d-c)-(b-a)

#calculating DID estimate with linear regression
data$TBS.interaction = data$post*data$AD
reg1 = lm(rate ~ post + AD + TBS.interaction, data=data)
summary(reg1)

