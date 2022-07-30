lista <- rnorm(10)
mean(lista)
median(lista)
weighted.mean(lista)
sd(lista)
lista
min(lista)
max(lista)
quantile(lista)
summary(lista)

x <- c(22, 7, 19, 8, 9, 19, 10)
range(x)
diff(range(x))
sd(x)

# Frequência
prop.table(x) * 100

grupoA <- rep("Grupo A", sample(1:100, 1))
grupoB <- rep("Grupo B", sample(1:100, 1))
grupoC <- rep("Grupo C", sample(1:100, 1))

grupos <- sample(c(grupoA, grupoB, grupoC))
table(grupos)

head(iris)
table(iris$Species)
table(iris$Sepal.Length>5.0)

dados <- c(38, 15, 43, 85, 36, 15, 96, 35, 20, 29, 76,
           39, 18, 14, 37, 39, 68, 63, 96, 86, 45, 89, 94, 60, 73, 60, 59,
           73, 52, 32)
summary(dados)

# Classes de Frequência
interv <- seq(0, 100, 25)
classes <- c("0-24", "25-49", "50-74", "75-100")
interval_slices <- cut(dados, breaks = interv, right=FALSE, labels=classes)
t <- table(interval_slices)

plot(t, xlab = "Classe", ylab = "Frequência")


# Histograma - gráfico de frequências

lista <- rnorm(100)
hist(lista)
hist(dados, xlab = "Valores", ylab = "Frequência", main = "Meu Histograma")

# Dispersão
n_dados <- 100
v_temp <- sample(0:45, n_dados, replace=T)
v_altitude <- sample(0:1200, n_dados, replace=T)
df <- data.frame(temperatura = v_temp, altitude = v_altitude)
plot(df$altitude, df$temperatura)

# Gráfico de Linhas
plot(c(sort(df$temperatura)), df$altitude, type="l", xlab = "Temperatura", ylab = "Altitude")
abline(h=mean(df$altitude), col="red")

# Gráfico de Barras
plot(table(df$temperatura), ylab = "Frequência")
barplot(table(df$temperatura), ylab = "Frequência")

# Gráfico de Pizza
pie(table(df$temperatura))





# Salvamento em PDF

pdf(file = "frequencia_de_temperaturas.pdf")
plot(table(df$temperatura), ylab = "Frequência")
dev.off()

# Salvamento em PNG
png(file = "frequencia_de_temperaturas.png")
plot(table(df$temperatura), ylab = "Frequência")
dev.off()
browseURL("frequencia_de_temperaturas.png")

# Gráficos para Cars
library("MASS")
pie(table(Cars93$Type))

