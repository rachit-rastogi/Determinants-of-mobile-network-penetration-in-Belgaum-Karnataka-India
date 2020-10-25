setwd("C:/Users/rachit")
mydata=read.csv("cluster.csv")
head(mydata)

library("nnet")
mul<-multinom((Mobnelec) ~  Construction +  P_LIT.. , data = mydata)

help("summary.multinom")
mul2<-glm((Mobnelec) ~ Construction + P_LIT.. , data = mydata,)
summary(mul2)
