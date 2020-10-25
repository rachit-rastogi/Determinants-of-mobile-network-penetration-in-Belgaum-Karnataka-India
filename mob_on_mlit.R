setwd("C:/Users/rachit")
mydata=read.csv("cluster.csv")
head(mydata)

mul4<-glm((MobCluster) ~ Electricity + Television +Construction +M_LIT., data = mydata,)
summary(mul4)
