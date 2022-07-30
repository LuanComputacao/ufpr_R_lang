install.packages("e1071")
install.packages("kernlab")
install.packages("mlbench")
install.packages("mice")
install.packages("caret")
library("caret")
library("mlbench")
library("mice")

data("BreastCancer")
temp_dados <- BreastCancer
head(BreastCancer)
temp_dados$Id <- NULL

imp <- mice(temp_dados)

dados <- complete(imp, 1)

indices <- createDataPartition(dados$Class, p = 0.80, list=F)

treino <- dados[indices,]
teste <- dados[-indices,]

set.seed(7)
rf <- train(Class~., data=treino, method="rf")
svm <- train(Class~., data=treino, method="svmRadial")
rna <- train(Class~., data=treino, method="nnet")

predict.rf <- predict(rf, teste)
predict.svm <- predict(svm, teste)
predict.rna <- predict(rna, teste)


predict.rf <- predict(rf, teste)
predict.svm <- predict(svm, teste)
predict.rna <- predict(rna, teste)

confusionMatrix_rf <- confusionMatrix(predict.rf, teste$Class)
confusionMatrix_svm <- confusionMatrix(predict.svm, teste$Class)
confusionMatrix_rna <- confusionMatrix(predict.rna, teste$Class)

print("confusionMatrix_rf")
print(confusionMatrix_rf$overall["Accuracy"])
print("confusionMatrix_svm")
print(confusionMatrix_svm$overall["Accuracy"])
print("confusionMatrix_rna")
print(confusionMatrix_rna$overall["Accuracy"])