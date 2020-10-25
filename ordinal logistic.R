setwd("C:/Users/rachit")
mydata=read.csv("cluster.csv")
head(mydata)
library(MASS)
model_fit <- polr(as.factor(Cluster) ~Electricity + Television  + P_LIT.. + M_LIT. + F_LIT.., data = mydata, Hess = TRUE, method="logistic")
summary(model_fit)

summary_table <- coef(summary(model_fit))
pval <- pnorm(abs(summary_table[, "t value"]),lower.tail = FALSE)* 2
summary_table <- cbind(summary_table, "p value" = round(pval,3))
print(summary_table)

library("nnet")
mul<-multinom(as.factor(Cluster_label.new) ~ Electricity + Perm.and.semi.perm + Television  + P_LIT.. + M_LIT. + F_LIT.., data = mydata)

ci <- confint(model_fit)
ci

install.packages("ggpubr")

library("ggpubr")
res <- cor.test(mydata$M_LIT., mydata$F_LIT.., 
                method = "pearson")
res

