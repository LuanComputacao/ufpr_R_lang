
data("iris")
setwd("arquivos")
write.table(iris, "iris.txt", sep = "**", dec = ".")
write.csv(iris, "iris.csv", row.names = FALSE, quote = FALSE)
