head(bank)
x<-bank$age
y<-bank$balance
#is.na(x)<-0
#is.na(y)<-0
relation<-lm(formula<-y~x)
print(summary(lm(formula<-y~x)))
a <- data.frame(x=10)
result <- predict(relation,a)
print(result)

plot(y,x,col="blue",main="age & campaign Regression",abline(lm(x~y)),cex = 1.3,pch=16,xlab="balance",ylab="age")
