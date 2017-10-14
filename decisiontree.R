input=processed
library(party)
output <- ctree(y ~ campaign + loan + education, data=input)
print(output)
plot(output)

