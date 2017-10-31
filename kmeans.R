set.seed(20)
input<-bank[, 1]
is.na(input)<-0
bankCluster <- kmeans(input, 2, nstart = 20)


mydata<-bank

mydata<-mydata[,-9]
dim(mydata)
inputdata<-mydata

inputdata<-inputdata[,1:7]
dim(inputdata)
mydata<-mydata[1:99,]
dim(mydata)
# Prepare Data
inputdata <- na.omit(inputdata) # listwise deletion of missing
mydataCluster <- kmeans(inputdata, 2, nstart = 20)
mydataCluster

#table(mydataCluster$cluster, mydata$y)

mydataCluster$cluster <- as.factor(mydataCluster$cluster)
ggplot2::aes(age,balance,day,duration,campaign,pdays,previous, color = mydata$y) + geom_point()



