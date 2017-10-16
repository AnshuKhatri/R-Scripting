dim(bank)
#binomial
d<-bank$campaign
c<-dbinom(bank$campaign,4000,0.5)
plot(d,c)

#poisson
a<-bank$campaign
b<-ppois(bank$campaign, lambda=2.7,lower.tail = FALSE)
plot(a,b)

#continous uniform
#e<-bank$campaign
#f<-runif(40, min(bank$campaign), max(bank$campaign))
#plot(e,f)

plot(density(bank$campaign))
#qchisq(.95, df=7)

g=pnorm(1, mean=2.79363, sd=3.109807, lower.tail=FALSE) 
plot(g)
