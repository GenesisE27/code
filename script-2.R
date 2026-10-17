library(tidyverse)

hist_p <- ggplot(data = diamonds, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.05, boundary = 0, color = "white") +
  coord_cartesian(xlim = c(0, 5), ylim = c(0, 7000)) +
  labs(
    title = "Diamond carat weight distribution",
    subtitle = "Most diamonds weigh less than 1 carat, with extra peaks just above common weight marks.",
    x = "Carat",
    y = "Number of diamonds",
    caption = "Source: ggplot2::diamonds dataset (53,940 diamonds)."
  )

ggsave(plot = hist_p, file = "diamonds.png")
