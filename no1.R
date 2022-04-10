# 1a.
x <- 3
p <- 0.2  #peluang hadir
dgeom(x-1, p, log = FALSE)

# 1b.
mean(rgeom(10000,p)==3)

# 1c.
summary(dgeom(x-1, p, log = FALSE))
summary(mean(rgeom(10000,p)==3))

# 1d.

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

# 1e.
rataan <- 1/p
rataan
varians <- (1-p)/p^2
varians