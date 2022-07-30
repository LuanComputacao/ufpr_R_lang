dados <- read.csv("../../datasets/CoolingWater.csv")
head(dados)
modelo <- lm(temp ~ poly(time, 2), data = dados)
summary(modelo)
# y = 40.3671-206.6053x+96.7949x
plot(dados$temp ~ dados$time)

# Gera a predição
predicao <- predict(modelo, dados)

# Curva estimada
lines(y = predicao, x = dados$time, type="l", col = "red")
