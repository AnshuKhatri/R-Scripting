input <- processed[,c("age","campaign","balance","previous","y")]
print(head(input))
output<-glm(formula<-y~age + campaign + balance + previous,data=input, family=binomial)
print(summary(output))

