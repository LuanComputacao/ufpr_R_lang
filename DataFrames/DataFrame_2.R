df1 <- data.frame(
    nome = c("Razer", "Anthom", "Nizer", "Rojas", "Montaño"),
    cidadeId = c(3, 10, 2, 3, 1)
)
cidades <- data.frame(
    cidadeId = c(1, 2, 3, 4),
    cidade = c("Curitiba", "SJP", "Pinhais", "Colombo")
)

# cross join
merge(df1, cidades, by = NULL)

# outer join
merge(df1, cidades, by = "cidadeId")


# outer join
merge(df1, cidades, by = "cidadeId", all = TRUE)

# left outer join
merge(df1, cidades, by = "cidadeId", all.x = TRUE)

# right outer join
merge(df1, cidades, by = "cidadeId", all.y = TRUE)
