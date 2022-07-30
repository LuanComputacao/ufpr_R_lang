# Crie o data frame anterior e execute os comandos, vendo os resultados
n <- 10
sexo <- sample(c("masculino", "feminino"), 10, replace = TRUE)
idade <- sample(14:102, n, replace = TRUE)
peso <- sample(50:90, n, replace = TRUE)
menor <- idade < 18
pessoas <- data.frame(sexo = sexo, idade = idade, peso = peso, menor = menor)
pessoas

# Ordene o data frame por peso
pessoas[order(pessoas$idade), ]
pessoas

# Ordene o data frame por sexo e peso, decrescentemente
pessoas[order(pessoas$sexo, pessoas$peso), ]

# Dê a maior idade nos dados (max)
max(pessoas$idade)

# Dê a média dos pesos (mean)
mean(pessoas$peso)

# Mostrar as pessoas do sexo feminino que estão na base
pessoas[pessoas$sexo == "feminino", ]

# Contar as pessoas do sexo feminino (nrow)
nrow(pessoas[pessoas$sexo == "feminino", ])
