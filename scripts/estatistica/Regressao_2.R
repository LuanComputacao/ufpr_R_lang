dados <- read.csv("../../datasets/fruitohms.csv")
modelo <- lm(ohms ~juice, data = dados)
summary(modelo)
plot(dados$ohms ~ dados$juice)
abline(modelo)

