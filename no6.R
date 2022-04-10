#6a.
n <- 100
mean <- 50
sd <- 8
y <- rnorm(n, mean, sd)

z <- function(input){
  return ((1 / (sd * sqrt(2*22/7))) * exp(1) ^ (-0.5 * ((input - rata) / sd) ^ 2))
}

z(x1 <- floor(mean(x)))
z(x1 <- ceiling(mean(x)))
