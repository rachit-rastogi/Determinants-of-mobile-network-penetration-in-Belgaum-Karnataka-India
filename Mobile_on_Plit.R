setwd("C:/Users/rachit")
mydata=read.csv("cluster.csv")
head(mydata)

mul2<-glm((MobCluster) ~ Electricity + Construction + P_LIT.. + Television  , data = mydata,)
summary(mul2)
