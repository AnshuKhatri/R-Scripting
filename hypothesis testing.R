#compute the critical value at .05 significance level

alpha = .05 
z.alpha = qnorm(1-alpha)  ## critical value 
-z.alpha  #-1.644854

agemean=mean(processed$age)
agemean

agesd=sd(processed$age)
agesd

n=50
sample=bank[1:50,]
sample
sample[1]
a=sample[1]
a
delete.na <- function(DF, n=0) {
       DF[rowSums(is.na(DF)) <= n,]
   }

samplemean=mean(delete.na(a))
samplemean

z=(samplemean-agemean)/(agesd/sqrt(n))
z

#z= -0.3553689 it is greater so reject the alternative hypothesis.
