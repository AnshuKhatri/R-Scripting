library(class) 
library(e1071) 

input<-processed
summary(input)
dim(input)
classifier<-naiveBayes(input[,1:16], input[,17]) 
x<-table(predict(classifier, input[,-17]), input[,17])
library(caret)
x

