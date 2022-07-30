data <- read.csv("../../datasets/CoolingWater.csv")
head(data)

modelo_poli_2 <- lm(temp ~ poly(time, 2), data = data)
summary(modelo_poli_2)
plot(data$temp ~ data$time)
predicao_2 <- predict(modelo_poli_2, data)
lines(y = predicao_2, x = data$time, type="l", col = "red")

modelo_poli_3 <- lm(temp ~ poly(time, 3), data = data)
summary(modelo_poli_3)
plot(data$temp ~ data$time)
predicao_3 <- predict(modelo_poli_3, data)
lines(y= predicao_3, x = data$time, type = "l", col = "purple")

modelo_poli_4 <- lm(temp ~ poly(time, 4), data = data)
summary(modelo_poli_4)
plot(data$temp ~ data$time)
predicao_4 <- predict(modelo_poli_4, data)
lines(y= predicao_4, x = data$time, type = "l", col = "red")


pdf("Exercicio_Regressao_poli_1.pdf")
plot(data$temp ~ data$time)
lines(y = predicao_2, x = data$time, type="l", col = "green")
lines(y= predicao_3, x = data$time, type = "l", col = "purple")
lines(y= predicao_4, x = data$time, type = "l", col = "red")
dev.off()
