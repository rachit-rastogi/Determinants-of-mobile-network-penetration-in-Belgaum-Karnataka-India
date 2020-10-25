setwd("C:/Users/rachit")
mydata=read.csv("cluster.csv")
head(mydata)

mul3<-glm((MobCluster) ~ Electricity + Construction + F_LIT.. + Television  , data = mydata,)
summary(mul3)
