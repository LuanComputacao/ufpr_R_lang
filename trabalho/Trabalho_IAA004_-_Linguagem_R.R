install.packages("e1071")
install.packages("kernlab")
install.packages("mlbench")
install.packages("caret")
library("mlbench")
library("caret")
library("randomForest")

data(Satellite)
dt <- Satellite
summary(dt)
head(dt)

indexes <- createDataPartition(dt$classes, p = 0.80, list = F)
training <- dt[indexes, ]
testing <- dt[-indexes, ]


freq <- table(testing$classes)
out <- barplot(freq, xlab = "Soil Type", names.arg = "")
text(out, rep(-.1, 6), names(freq), srt=45, pos=1, offset = "2", xpd=NA, cex=.75 )


set.seed(7)
rf <- train(classes ~ ., data = training, method = "rf")
svm <- train(classes ~ ., data = training, method = "svmRadial")
rna <- train(classes ~ ., data = training, method = "nnet")

saveRDS(rf, "random_forest_testing_phase.rds")
saveRDS(svm, "SVM_testing_phase.rds")
saveRDS(rna, "nnet_testing_phase.rds")


predict.rf <- predict(rf, testing)
predict.svm <- predict(svm, testing)
predict.rna <- predict(rna, testing)

confusion_matrix_rf <- confusionMatrix(predict.rf, testing$classes)
confusion_matrix_svm <- confusionMatrix(predict.svm, testing$classes)
confusion_matrix_rna <- confusionMatrix(predict.rna, testing$classes)

confusion_matrix_rf$overall["Accuracy"]

accuracy_df <- data.frame(
    algorithm = c("rf", "svm", "rna"),
    accuracy = c(
        confusion_matrix_rf$overall["Accuracy"],
        confusion_matrix_svm$overall["Accuracy"],
        confusion_matrix_rna$overall["Accuracy"]
    )
)
print(accuracy_df)

best_technique <- accuracy_df[accuracy_df$accuracy == max(accuracy_df$accuracy),]
print(best_technique)

print(rf$finalModel[c("ntree", "mtry")])

final_model = randomForest(formula = classes ~ ., data = dt, ntree = rf$finalModel$ntree, mtry = rf$finalModel$mtry, keep.forest = T)

final_predictions <- predict(final_model, testing)

confusion_matrix_full_model = confusionMatrix(final_predictions, testing$classes)

print(confusion_matrix_full_model)

saveRDS(final_model, "final_model_rf.rds")

save.image("all_data.RData")
