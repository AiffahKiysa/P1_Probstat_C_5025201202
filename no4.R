#4a
x <- 2
v <- 10
dchisq(x, v)

#4b
res <- rchisq(100, 10)

hist(res,
     freq = FALSE,
     xlim = c(0, 30),
     ylim = c(0, 0.15))

#4c
rataan = v
rataan
varian = 2*v
varian