setwd("C:/Users/rachit")
mydata=read.csv("cluster.csv")
head(mydata)

mul5<-glm((Mobnelec) ~ Construction + M_LIT. , data = mydata,)
summary(mul5)
