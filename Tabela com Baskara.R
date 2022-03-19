setwd ("C:/Users/Win10/Desktop")
df <- read.csv("video_game_films.csv", header=TRUE, encoding="UTF-8")
library(tidyverse)
library(ggplot2)
setwd ("C:/Users/Win10/Desktop/Projetos")

df %>%
  ggplot(aes(x = Rotten.Tomatoes, y = Metacritic))+ 
  geom_point()

df%>%
  filter(df$Rotten.Tomatoes > 2) %>%
  ggplot(aes(x = Rotten.Tomatoes, y = Metacritic))+ 
  geom_point()+
  geom_smooth(method = "lm")+
  geom_smooth(method = "loess")+
geom_hline(yintercept = 80)

df%>%
  filter(df$Rotten.Tomatoes > 2) %>%
  ggplot(aes(x = Rotten.Tomatoes, y = Metacritic, color = Distributor))+ 
  geom_point()+
  geom_smooth(method = "lm")+
coord_flip()

Bask <- function(a,b,c){return((- b +((b**2 - 4*a*c)*0.5))/2*a)}
> Baskn <- function(a,b,c){return((- b -((b**2 - 4*a*c)*0.5))/2*a)}
> Bask <- function(a,b,c){return((-b + Delta(a,b,c))/2*a)}
> Baskp <- function(a,b,c){return((- b +((b**2 - 4*a*c)*0.5))/2*a)}
> Bask(1,2,-5)