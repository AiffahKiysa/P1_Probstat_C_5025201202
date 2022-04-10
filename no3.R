#3a
x <- 6
lambda <- 4.5
ppois(x, lambda)

#3b
n <- 365
rpois(n, lambda)

plot(0:n, rpois(0:n, lambda), type = 'h',
     main = 'Poisson Distribution',
     ylab = 'Probability',
     xlab = '# Successes',
     lwd = 2, col = 2)

#3c


#3d
rataan = lambda
rataan
varian = lambda
varian