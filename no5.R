#5a.
set.seed(1)
rate <- 3
x <- rnorm(1000, rate, 0.5)

exp_func <- function(x){
  ans <- (exp(1) ^ (-x/3))/3
  return (ans)
}


#5b.
set.seed(1)
n <- 10
y_rexp <- rexp(n, rate)
plot(0:n, rexp(0:n, rate), type = 'h',
     main = 'Poisson Distribution',
     ylab = 'Probability',
     xlab = '# Successes',
     lwd = 5)

n <- 100
y_rexp <- rexp(n, rate)
plot(0:n, rexp(0:n, rate), type = 'h',
     main = 'Poisson Distribution',
     ylab = 'Probability',
     xlab = '# Successes',0
     lwd = 5)

n <- 1000
y_rexp <- rexp(n, rate)
plot(0:n, rexp(0:n, rate), type = 'h',
     main = 'Poisson Distribution',
     ylab = 'Probability',
     xlab = '# Successes',
     lwd = 5)

n <- 10000
y_rexp <- rexp(n, rate)
plot(0:n, rexp(0:n, rate), type = 'h',
     main = 'Poisson Distribution',
     ylab = 'Probability',
     xlab = '# Successes',
     lwd = 5)

#5c
n <- 100
rataan <- mean(n, rate)
rataan
varian <- var(n, rate)
varian