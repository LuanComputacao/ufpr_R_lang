# Regressão

x <- c(40, 30, 30, 25, 50, 60, 65, 10, 15, 20, 55, 40, 35, 30)
y <- c(1000, 1500, 1200, 1800, 800, 1000, 500, 3000, 2500, 2000, 800, 1500,
         2000, 2000)

modelo <- lm(y ~ x)
modelo

summary(modelo)
str(modelo)
coef(modelo)

novos <- data.frame(x = c(10, 20, 30))
predict(modelo, novos)

# Mostra os resíduos
resid(modelo)

# Plota a reta de regressão
plot(x = x, y = y, xlab = "Km", ylab = "Euros")
abline(modelo, col = "red")

# Plota os residuos
plot(resid(modelo))
abline(0,0, col = "blue")

# Plota os residuos x predição