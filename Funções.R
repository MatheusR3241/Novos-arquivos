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

PA <- function(a,b,r)
{c = a +(b+10)* r{return(b)}}


G <- function(x,y){return (x^2+y^2)}
G(1,3)
