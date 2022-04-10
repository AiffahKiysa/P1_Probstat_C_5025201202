#6a.
n <- 100
mean <- 50
sd <- 8
y <- rnorm(n, mean, sd)
hist(y, probability = TRUE)

set.seed(1)
n <- 100
mean <- 50
sd <- 8
rnorm(n, mean, sd)

z <- (n-mean)/sd
pnorm(z)