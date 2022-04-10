# P1_Probstat_C_5025201202

### 1. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
  a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
```
x <- 3
p <- 0.2  #peluang hadir
dgeom(x-1, p, log = FALSE)
```

![image-1.png](https://drive.google.com/uc?export=view&id=1KLZhFmA0MJK5DHI4EDNLCzK14MDErb86)

  b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```
mean(rgeom(10000,p)==3)
```

![image-2.png](https://drive.google.com/uc?export=view&id=1cQFYpD5FpX8udZWIsGfgg44TSaiHyrZO)

  c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
  Dari perhitungan poin a, peluang yang didapat hasilnya berbeda dengan poin b dimana rata-rata distribusi dilakukan menggunakan variabel random.

  d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```
library(dplyr)
library(ggplot2)

data.frame(heads = 0:5, prob = dgeom(0:5, p)) %>%
  mutate(Heads = ifelse(heads == 3, "3", "other")) %>%
  ggplot(aes(x = factor(heads), y=prob, fill = Heads)) +
  geom_col() +
  geom_text(
    aes(label = round(prob, 3), y=prob+0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3.",
       x = "Successes (heads)",
       y = "probability")
```
![image-3](https://drive.google.com/uc?export=view&id=1vLDWRPq0k-0miYMNz8OnZyiV0laoZTFP)

  e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```
rataan <- 1/p
rataan
varians <- (1-p)/p^2
varians
```
![image-4](https://drive.google.com/uc?export=view&id=1xopalwV5-OgoW0kXN1fpX9zMDN1sru44)

### 2. Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
  a. Peluang terdapat 4 pasien yang sembuh.
```
prob <- 0.2
size <- 20
x <- 4
hasil <- dbinom(x, size, prob)
hasil
```
![image-5](https://drive.google.com/uc?export=view&id=1ze8Dv_GBwXLa0rd4xxK7HuoyJD6ifMzK)

  b. Gambarkan grafik histogram berdasarkan kasus tersebut.
```
library(dplyr)
library(ggplot2)

data.frame(heads = 0:20, p = dbinom(0:20, size, prob)) %>%
  mutate(Heads = ifelse(heads == 4, "4", "other")) %>%
ggplot(aes(x = factor(heads), y=p, fill = Heads)) +
  geom_col() +
  geom_text(
    aes(label = round(p, 2), y=p+0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 4.",
       x = "Successes (heads)",
       y = "probability")
```
![image-6](https://drive.google.com/uc?export=view&id=1QbR_jWHcR5GeOb2JIQpIiM4D16uHYUpw)

  c. Nilai Rataan (μ) dan Varian ( ) dari σ² Distribusi Binomial.
```
rataan <- size*prob
rataan
varian <- size*prob*(1-prob)
varian
```
![image-7](https://drive.google.com/uc?export=view&id=1AfAIzlP5pAntCCJ-vsOSbhxqxdh542fc)

### 3. Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
  a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```
x <- 6
lambda <- 4.5
dpois(x, lambda)
```
![image-8](https://drive.google.com/uc?export=view&id=1HZ0b5EeE2zVGDiXDV8nklgKq5m-_NIDp)

  b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
```
n <- 365
rpois(n, lambda)

hist(rpois(n, lambda),
     main = 'Poisson Distribution',
     ylab = 'Probability',
     xlab = '# Successes',
     lwd = 2, col = 2)
```
![image-9](https://drive.google.com/uc?export=view&id=1ocIxK-cPXkf-IqGBEC7NWNEu3gKZc1bT)
![image-9-1](https://drive.google.com/uc?export=view&id=1rK3EkeAAsR1zjVpJSDhfudajyVPqrdlQ)

  c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
  Peluang 6 bayi akan lahir di rumah sakit dalam sehari berbeda dibandingkan peluang 6 bayi akan lahir selama setahun

  d. Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Poisson.
```
rataan = lambda
rataan
varian = lambda
varian
```
![image-10](https://drive.google.com/uc?export=view&id=1Zz8t0q_gBW6ZK3LL-ztboUajbgnVDHs5)

### 4. Diketahui nilai x = 2 dan v = 10. Tentukan:
  a. Fungsi Probabilitas dari Distribusi Chi-Square.
```
x <- 2
v <- 10
dchisq(x, v)
```
![image-11](https://drive.google.com/uc?export=view&id=1PEk9NqqDTYVzHO4sUeNiN8UGlaEbqrKz)

  b. Histogram dari Distribusi Chi-Square dengan 100 data random.
```
res <- rchisq(100, 10)

hist(res,
     freq = FALSE,
     xlim = c(0, 30),
     ylim = c(0, 0.15))
```
![image-12](https://drive.google.com/uc?export=view&id=1MLp5gFBkNM5N6pmkBjZUY2BrRNNwYlUy)

  c. Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Chi-Square.
```
rataan = v
rataan
varian = 2*v
varian
```
![image-13](https://drive.google.com/uc?export=view&id=1wH2JVwjTZJvZcHfqxWSFQ0gqajlDfFeG)

### 5. Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
  a. Fungsi Probabilitas dari Distribusi Exponensial
```
set.seed(1)
rate <- 3

exp_func <- function(x){
  ans <- (exp(1) ^ (-x/3))/3
  return (ans)
}
```

  b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```
set.seed(1)
n <- 10
y_rexp <- rexp(n, rate)
plot(0:n, rexp(0:n, rate), type = 'h',
     main = 'Poisson Distribution',
     ylab = 'Probability',
     xlab = '# Successes',
     lwd = 5)
```
![image-15](https://drive.google.com/uc?export=view&id=1YdgB7I3uVoonCqpGQCUBhYduXjuTp0KC)
```
n <- 100
y_rexp <- rexp(n, rate)
plot(0:n, rexp(0:n, rate), type = 'h',
     main = 'Poisson Distribution',
     ylab = 'Probability',
     xlab = '# Successes',0
     lwd = 5)
```
![image-16](https://drive.google.com/uc?export=view&id=1090QimP6PVrQ9hiEC81K2H_OGuQfZ2ID)
```
n <- 1000
y_rexp <- rexp(n, rate)
plot(0:n, rexp(0:n, rate), type = 'h',
     main = 'Poisson Distribution',
     ylab = 'Probability',
     xlab = '# Successes',
     lwd = 5)
```
![image-17](https://drive.google.com/uc?export=view&id=1WCHzNCWSMXh7nY1dsOnLzXMsglcxStyO)
```
n <- 10000
y_rexp <- rexp(n, rate)
plot(0:n, rexp(0:n, rate), type = 'h',
     main = 'Poisson Distribution',
     ylab = 'Probability',
     xlab = '# Successes',
     lwd = 5)
```
![image-18](https://drive.google.com/uc?export=view&id=1p9iItuLGeWQqr-CFPgcqYNA6F4_GWV0Z)

  c. Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Exponensial untuk n = 100 dan λ = 3
```
n <- 100
rataan <- mean(n, rate)
rataan
varian <- var(n, rate)
varian
```
![image-19](https://drive.google.com/uc?export=view&id=1waIxKxZnkNZI4bapSRa9afsOJV8jC6lI)

### 6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
  a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
```
n <- 100
mean <- 50
sd <- 8

set.seed(100)
norm <- rnorm(n, mean, sd)

z <- function(x){
  return (x-mean)/sd
}
x1 <- floor(mean(norm))
x2 <- ceiling(mean(norm))
z1 <- z(x1)
z2 <- z(x2)

plot(norm)
```
![image-20](https://drive.google.com/uc?export=view&id=1fgI0HitGtG8Z2sBHmkhL8JyVz22J1Mo9)

  b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
```
hist(norm, main="5025201202_Aiffah Kiysa Waafi_Probstat_C_DNhistogram", breaks=50,  xlab="x", ylab=y)
```
![image-21](https://drive.google.com/uc?export=view&id=15fbpXZlITI3ZaQ_wzot-u7kzNaag1-zg)

  c. Nilai Varian ( ) dari hasil generate random nilai σ² Distribusi Normal.
```
varian <- sd^2
```
![image-22](https://drive.google.com/uc?export=view&id=1J2lvfrdiS7KyiRPfe0zqls896Srvp6gl)
