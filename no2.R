#2a.
prob <- 0.2
size <- 20
x <- 4
hasil <- dbinom(x, size, prob)
hasil

#2b

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

#2c
rataan <- size*prob
rataan
varian <- size*prob*(1-prob)
varian