# Exercício 1

df <- data.frame(letras=letters[1:10], numeros=21:30, valores=rnorm(10))

# a)
print(df[5,])

# b)
# vetor
print(df[[2]])
# data frame
print(df[[2]])

# c)
df[2:3]

# d)
df[6,c(1,3)]


# e)
df[df$valores > 0,]

# f)
df[ df$numeros%%2==1, ]

# g)
df[df$valores > 0 & df$numeros%%2==0,]


# h)
df[df$letras %in% c("b", "g", "h"),]

