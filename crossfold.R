library(klaR)
train_control <- trainControl(method="repeatedcv", number=10, repeats=1)
model <- train(y~., data=processed, trControl=train_control, method="nb")
print(model)
