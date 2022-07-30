distances <- c(3949, 3000, 3927, 1273, 3188, 1827 )
m = diag(rep(0,4))
m[lower.tri(m)] <- distances
m[upper.tri(m)] <- t(m)[upper.tri(t(m))]
names <- c("Atenas", "Madri", "Paris", "Estocolmo")
rownames(m) <- names
colnames(m) <- names
print(m)
