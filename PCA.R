View(mydata)
library(psych)
bdata<-mydata
dim(bdata)
bdata<-bdata[,-8]
View(bdata)
bdata <- na.omit(bdata)
R<-cor(bdata)
e<-eigen(R)
zdat<-scale(bdata)
mat=matrix(nrow=7,ncol=4)
mat[,1]<-e$vectors[,1]
mat[,2]<-e$vectors[,2]
mat[,3]<-e$vectors[,3]
mat[,4]<-e$vectors[,4]
red.scores<- zdat %*% mat
pca.scores<- zdat %*% e$vectors
colnames(pca.scores)<-c('pca1','pca2','pca3','pca4','pca5','pca6','pca7')
head(pca.scores)



colnames(red.scores)<-c('red1','red2','red3','red4')
head(red.scores)

