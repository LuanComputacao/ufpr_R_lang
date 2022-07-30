install.packages("e1071")

install.packages("kernlab")

install.packages("caret")
library("caret")

# install.packages("randomForest")
require(remotes)
install_version("randomForest", version = "4.6-14", repos = "http://cran.us.r-project.org")
library(randomForest)

data("iris")
dataset <- iris
head(dataset)

# Preparação dos dados
indices <- createDataPartition(dataset$Species, p = 0.80, list=F)
treino <- dataset[indices,]
treino
teste <- dataset[-indices,]
teste

# Treino usando RandomForest
set.seed(7)
rf <- train(Species~., data = treino, method="rf")
predicoes.rf <- predict(rf, teste)
confusionMatrix_rf <- confusionMatrix(predicoes.rf, teste$Species)
save(rf, file = "rf.RData")

# Treino usando SVM
set.seed(7)
svm <- train(Species~., data=treino, method = "svmRadial")
predicoes.svm <- predict(svm, teste)
confusionMatrix_svm <- confusionMatrix(predicoes.svm, teste$Species)
save(svm, file = "svm.RData")


if(confusionMatrix_rf$overall["Accuracy"] > confusionMatrix_svm$overall["Accuracy"]) {
  print("Random Forest")
  print(confusionMatrix_rf)
} else {
  print("SVM")
  print(confusionMatrix_svm)
}
