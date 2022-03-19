setwd ("C:/Users/Win10/Downloads")
df <- read.csv("testedata.csv")

library(tidyverse)
library(ggplot2)
df$NUM1 <- (df$NUM1 > 1)

df %>%
  group_by(NUM1,NUM2) %>%
  summarise(
    contagem= n ()
  ) %>%
ggplot(aes(x = NUM1, y = NUM2)) +
  geom_bar(stat = "identity",fill = "blue", alpha = 0.4) +
coord_flip()
