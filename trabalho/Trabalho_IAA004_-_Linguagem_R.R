install.packages("mlbench")
library("mlbench")
library("caret")

data(Satellite)
dt <- Satellite
summary(dt)
head(dt)

indexes <- createDataPartition(dt$classes, p = 0.80, list=F)
training <- dt[indexes,]
testing <- dt[-indexes,]
table(testing$classes)

set.seed(7)
rf <- train(classes~., data = training, method = "rf")
svm <- train(classes~., data = training, method = "svm")
rna <- train(classes~., data = training, method = "nnet")


predict.rf <- predict(rf, testing)
predict.svm <- predict(svm, testing)
predict.rna <- predict(rna, testing)

confusionMatrix_rf <- confusionMatrix(predict.rf, testing$classes)
confusionMatrix_svm <- confusionMatrix(predict.svm, testing$classes)
confusionMatrix_rna <- confusionMatrix(predict.rna, testing$classes)

accuracy <- list( rf = confusionMatrix_rf, svm = confusionMatrix_svm, rna = confusionMatrix_rna)
max(accuracy)

accuracy <- list(rf = rf)


